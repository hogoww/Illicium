"
I represent a transformer from a Pharo AST to a C AST.

I'm responsible to ouput a correct AST of the C language for an AST of the Pharo language.
I visit the Pharo AST, and create/fillup classes accordingly.
/!\
I need for the C AST classes to be generated already, using ASTCGenerator. Their names are hardcoded for now. I also need to have the ASTC Kernel to be able to translate some functions call, depending on the receiver's type.
/!\

I interact with the ASTCkernel (directly), as well as with RBAST (via a visitor)

Public API and Key Messages

- visitMethodSelector: aSelector fromClass: aClass - Used to launch the process from a symbol, on aClass. will return an ASTC

run me! 
ASTCFromPharo factorialRTest.""ctrl+i""

try me in the playground! 
visitor:=ASTCPrinterVisitor new.""should be generated with the ASTC classes""
(ASTCFromPharo factorialRTest acceptVisitor: visitor).""fill up the stream""
visitor toTranscript.""print the stream on the transcript""

 
Principle of the translation is to infer the type of the receiver (NOT DONE YET. COMMENT SHOULD BE UPDATED WHEN WE GO FURTHER), and send the message to the corresponding ASTCkernel/userclass. Those will implements all the known special operation (such as #ifTrue:ifFalse:) and do the special operations for those. Other operations will be treated as a simple functionCall, through a #doesNotUnderstand indirection
"
Class {
	#name : #ASTCFromPharo,
	#superclass : #RBProgramNodeVisitor,
	#traits : 'ASTCFormatTrait',
	#classTraits : 'ASTCFormatTrait classTrait',
	#instVars : [
		'typeDictionary'
	],
	#category : #'ASTC-Translation'
}

{ #category : #'tests-manual' }
ASTCFromPharo class >> factorialRTest0 [
	"Shortcut for a test that's used a lot"
	self flag:#transcriptClear.
	Transcript clear.
	^self new visitMethodSelector: #factorialR fromClass: RandomTestClass .
]

{ #category : #'tests-manual' }
ASTCFromPharo class >> factorialRTest1 [
	"Shortcut for a test that's used a lot"
	self flag:#transcriptClear.
	Transcript clear.
	^self new visitMethodSelector: #factorialR: fromClass: RandomTestClass .
]

{ #category : #'tests-manual' }
ASTCFromPharo class >> factorialRTest2 [
	"Shortcut for a test that's used a lot"
	self flag:#transcriptClear.
	Transcript clear.
	^self new visitMethodSelector: #factorialR:anotherArgument: fromClass: RandomTestClass .
]

{ #category : #visiting }
ASTCFromPharo >> classDictionary [
	"accessor"
	^typeDictionary
]

{ #category : #visiting }
ASTCFromPharo >> classDictionary:aCollection [
	"accessor"
	typeDictionary:=aCollection.
	^aCollection
]

{ #category : #visiting }
ASTCFromPharo >> getTypeOf:aNode [
	"Even if it's not a visit, for coherence purpose"
	| concreteType translationType |
	self flag:#type."add object types, or user defined types"

	concreteType:=(aNode propertyAt:ASTCTypeAnnotationAST property 
			ifPresent: [:value| value anyOne. ]
			ifAbsent:[self error: 'The type inferencer couldn''t figure out the type of ', aNode asString ]).
	
	translationType := typeDictionary at: concreteType ifAbsent:[ ^ASTCUserClass  ]."unknown type for now"

	^translationType.
]

{ #category : #visiting }
ASTCFromPharo >> initialize [
	"initialize.
	We fill up the ClassDictionnary with the known possible receivers."
	self flag:#hardcode."harcoded names, bad"
	typeDictionary := Dictionary new
		at: SmallInteger put: ASTCSmallInteger;
		at: Boolean put: ASTCBoolean;
		at: ASTCVoid put: ASTCVoid;
		yourself.

]

{ #category : #visiting }
ASTCFromPharo >> visitArgumentNode: anArgumentNode [
	| argIdentifier |
	argIdentifier := ASTCIdentifier new
		id: anArgumentNode name;
		yourself.
	^ anArgumentNode parent isMethod
		ifTrue: [ 
			ASTCVariableDeclaration new
				id: argIdentifier;
				type:
					(ASTCType new
						type: (self visitType: anArgumentNode);
						yourself);
				yourself.
			]
		ifFalse: [ 
				argIdentifier.
			]
]

{ #category : #visiting }
ASTCFromPharo >> visitAssignmentNode: anAssignmentNode [
	^(anAssignmentNode propertyAt: IsItTheFirstAssignmentChecker property) ifTrue:[
		"type checking"
		
		"creation of the return thingy."	
		ASTCDeclarationStatement new
			declaration:
				(ASTCVariableDefinition new 
					declaration:
						(ASTCVariableDeclaration new 
						type:
							(ASTCType new
							type: (self visitType: anAssignmentNode variable);
							yourself);
						id:
							(anAssignmentNode variable acceptVisitor: self);
							yourself);
					init: 
						(anAssignmentNode value acceptVisitor:self);
					yourself);
			yourself.
		]
	ifFalse:[
		ASTCOperator new
			symbol:'=';
			operands: 
				(ASTCContainer new 
					add: (anAssignmentNode variable acceptVisitor:self);
					add: (anAssignmentNode value acceptVisitor:self);
					yourself);
			yourself.
		].

]

{ #category : #visiting }
ASTCFromPharo >> visitBlockNode: aBlockNode [
	| res |
	res:=ASTCBlock new.
	res statements: (aBlockNode statements collect: [:each | self visitNode: each] into: ASTCContainer new).

	^res.
]

{ #category : #visiting }
ASTCFromPharo >> visitLiteralNode: aLiteralNode [
	^ASTCLiteral new
		value: (ASTCSmallInteger new value:aLiteralNode value;yourself);
		yourself.	
]

{ #category : #visiting }
ASTCFromPharo >> visitMessageNode: aMessageNode [
	"We (will) infer the type and redirect the message on the class of the receiver. So far we just forward it to the only known type: SmallInteger. each of them will handle the messages thrown to them."
	| aReceiver funCall methodOrBlock |
	self flag:#comment.
	aReceiver:=(self getTypeOf: aMessageNode receiver) new
		value: aMessageNode receiver;
		visitor: self;
		yourself.
	funCall := aReceiver perform: aMessageNode selector withArguments: aMessageNode arguments asArray.
	
	methodOrBlock:=aMessageNode parent parent.
	
	(funCall isASTCStatement)"To change, when generation will generate every tester rather than have errors thrown around"
	ifFalse:["If the message is actually a Statement in C (such as If), it's already ready "
		(methodOrBlock isMethod or:[methodOrBlock isBlock])
		ifTrue:["If the message isn't an inner message, it then need to be wrapped up. "
			funCall:=ASTCExpressionStatement new 
				expression: funCall;
				yourself.
			]
		].
	
	^funCall
]

{ #category : #visiting }
ASTCFromPharo >> visitMethodAST: aMethodAST [
	self visitPreTranslationFor: aMethodAST.
	
	^aMethodAST acceptVisitor: self.
	
]

{ #category : #visiting }
ASTCFromPharo >> visitMethodNode: aMethodNode [
	^ASTCFunctionDefinition new
		declaration:(ASTCFunctionDeclaration new
			id: (ASTCIdentifier new 
				id: (self formatSelector:(aMethodNode selector)); 
				yourself);
			type: (ASTCType new 
				type: (self visitType: aMethodNode);
				yourself);
			parameters: (ASTCContainer new 
				visitArgs: aMethodNode arguments with: self;
				yourself);
			yourself);
		body:(self visitNode: aMethodNode body);
		yourself.
]

{ #category : #visiting }
ASTCFromPharo >> visitMethodSelector: aSelector fromClass: aClass [
	"shortcut to visit a selector in a known class."
	^self visitMethodAST:(aClass >> aSelector) ast.
	
]

{ #category : #visiting }
ASTCFromPharo >> visitPreTranslationFor: aMethodAST [
	| annotatorVisitors |
"	aMethodAST propertyAt: ASTCTypeAnnotationASTOld property
	ifPresent:[:value|
		value crLog.
		]
	ifAbsent:[
		ASTCTypeAnnotationASTOld new 
			atNewPropertyPut: (PIVariableType new addType:ASTCVoid;yourself)
			for: aMethodAST.
	].	"

	annotatorVisitors := OrderedCollection new.
	annotatorVisitors add: IsItTheFirstAssignmentChecker new.
	

	aMethodAST acceptMultipleVisitors: annotatorVisitors."pre translation visits"

	^aMethodAST	
]

{ #category : #visiting }
ASTCFromPharo >> visitReturnNode: aReturnNode [
	
	^ASTCReturn new expression: (aReturnNode value acceptVisitor:self) ; yourself. 
]

{ #category : #visiting }
ASTCFromPharo >> visitSequenceNode: aSequenceNode [
	| res |
	res:=ASTCBlock new.
	res statements: (aSequenceNode statements collect: [:each | self visitNode: each] into: ASTCContainer new).
	^res.
]

{ #category : #visiting }
ASTCFromPharo >> visitType: aNode [
	^ASTCType new
	 	type: (self getTypeOf: aNode).
]

{ #category : #visiting }
ASTCFromPharo >> visitVariableNode: aVariableNode [
	^ASTCIdentifier new
			id: aVariableNode name;
			yourself.
]
