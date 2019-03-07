Class {
	#name : #ASTCFromPharo,
	#superclass : #RBProgramNodeVisitor,
	#classVars : [
		'ClassDictionary',
		'classDictionary'
	],
	#category : #ASTCBuilder
}

{ #category : #'tests-manual' }
ASTCFromPharo class >> factorialRTest [
	self flag:#transcript.
	Transcript clear.
	^self new visitMethodSelector: #factorialR: fromClass: RandomTestClass .
]

{ #category : #visiting }
ASTCFromPharo >> classDictionary [
	^ClassDictionary
]

{ #category : #visiting }
ASTCFromPharo >> classDictionary:aCollection [
	ClassDictionary:=aCollection.
	^aCollection
]

{ #category : #'reflective operations' }
ASTCFromPharo >> doesNotUnderstand:aMessage [
]

{ #category : #visiting }
ASTCFromPharo >> initialize [
	ClassDictionary := Dictionary new.
	ClassDictionary at:'SmallInteger' put: ASTCSmallInteger.
]

{ #category : #visiting }
ASTCFromPharo >> visitArgumentNode: anArgumentNode [
	self flag:#todo. "shoulg be a declaration"
	^ASTCIdentifier new
			id: anArgumentNode name;
			yourself.
			
		
]

{ #category : #visiting }
ASTCFromPharo >> visitLiteralNode: aLiteralNode [
	
	^ASTCLiteral new
		value: aLiteralNode value;
		yourself.	
]

{ #category : #visiting }
ASTCFromPharo >> visitMessageNode: aMessageNode [
		^(ClassDictionary at:'SmallInteger') new
			myself: aMessageNode receiver;
			visitor: self;
			perform: aMessageNode selector withArguments: aMessageNode arguments asArray.
	
]

{ #category : #visiting }
ASTCFromPharo >> visitMethodNode: aMethodNode [
	^ASTCFunctionDefinition  new
		id: (ASTCIdentifier new id:(aMethodNode selector); 
										yourself);
		type: (ASTCType new type: ASTCSmallInteger ;
								  yourself);
		body:(self visitNode: aMethodNode body);
		yourself.

]

{ #category : #visiting }
ASTCFromPharo >> visitMethodSelector: aSelector fromClass: aClass [
	| methodAST|
	methodAST:=(aClass compiledMethodAt:aSelector) ast.
	^methodAST acceptVisitor: self.
	
]

{ #category : #visiting }
ASTCFromPharo >> visitSequenceNode: aSequenceNode [
	| res |
	res:=ASTCBlock new.
	
	aSequenceNode statements do: [:each | res statements add: (self visitNode: each)].

	^res.
]
