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
	#classVars : [
		'ClassDictionary'
	],
	#category : #'ASTC-Translation'
}

{ #category : #'tests-manual' }
ASTCFromPharo class >> factorialRTest [
	"Shortcut for a test that's used a lot"
	self flag:#transcriptClear.
	Transcript clear.
	^self new visitMethodSelector: #factorialR: fromClass: RandomTestClass .
]

{ #category : #visiting }
ASTCFromPharo >> classDictionary [
	"accessor"
	^ClassDictionary
]

{ #category : #visiting }
ASTCFromPharo >> classDictionary:aCollection [
	"accessor"
	ClassDictionary:=aCollection.
	^aCollection
]

{ #category : #visiting }
ASTCFromPharo >> initialize [
	"initialize.
	We fill up the ClassDictionnary with the known possible receivers."
	self flag:#hardcode."harcoded names, bad"
	ClassDictionary := Dictionary new.
	ClassDictionary at:'SmallInteger' put: ASTCSmallInteger.
]

{ #category : #visiting }
ASTCFromPharo >> visitArgumentNode: anArgumentNode [
	self flag:#comment.
	^ASTCIdentifier new
			id: anArgumentNode name;
			yourself.
			
		
]

{ #category : #visiting }
ASTCFromPharo >> visitBlockNode: aBlockNode [
	| res |
	self flag:#comment.
	res:=ASTCBlock new.
	
	res declarations: (aBlockNode arguments collect:[:each | self visitNode: each]).
	res statements: (aBlockNode statements collect: [:each | self visitNode: each]).

	^res.
]

{ #category : #visiting }
ASTCFromPharo >> visitLiteralNode: aLiteralNode [
	self flag:#comment.
	^ASTCLiteral new
		value: (ASTCSmallInteger new myself:aLiteralNode value;yourself);
		yourself.	
]

{ #category : #visiting }
ASTCFromPharo >> visitMessageNode: aMessageNode [
	"We (will) infer the type and redirect the message on the class of the receiver. So far we just forward it to the only known type: SmallInteger. each of them will handle the messages thrown to them."
	^(ClassDictionary at:'SmallInteger') new
		myself: aMessageNode receiver;
		visitor: self;
		perform: aMessageNode selector withArguments: aMessageNode arguments asArray.
	
]

{ #category : #visiting }
ASTCFromPharo >> visitMethodNode: aMethodNode [
	self flag:#todo."arguments)"
	self flag:#type.
	^ASTCFunctionDefinition new
		id: (ASTCIdentifier new id:(self formatSelector:(aMethodNode selector)); 
										yourself);
		type: (ASTCType new type: ASTCSmallInteger ;
								  yourself);
		declarations: (ASTCContainer new visitArgs: aMethodNode arguments with: self;yourself);
		body:(self visitNode: aMethodNode body);
		yourself.

]

{ #category : #visiting }
ASTCFromPharo >> visitMethodSelector: aSelector fromClass: aClass [
	| methodAST|
	"shortcut to visit a selector in a known class."
	methodAST:=(aClass compiledMethodAt:aSelector) ast.
	^methodAST acceptVisitor: self.
	
]

{ #category : #visiting }
ASTCFromPharo >> visitReturnNode: aReturnNode [
	
	^ASTCReturn new expression: (aReturnNode value acceptVisitor:self);yourself. 
]

{ #category : #visiting }
ASTCFromPharo >> visitSequenceNode: aSequenceNode [
	| res |
	res:=ASTCBlock new.
	res statements: (aSequenceNode statements collect: [:each | self visitNode: each]).
	^res.
]

{ #category : #visiting }
ASTCFromPharo >> visitVariableNode: aVariableNode [
	
	^ ASTCIdentifier new
		id: aVariableNode name;
		yourself
]
