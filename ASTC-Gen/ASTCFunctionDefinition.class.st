Class {
	#name : #ASTCFunctionDefinition,
	#superclass : #ASTCNode,
	#instVars : [
		'id',
		'type',
		'parameters',
		'body'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCFunctionDefinition >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self parameters = anotherNode parameters
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCFunctionDefinition >> acceptVisitor: aVisitor [
	aVisitor visitASTCFunctionDefinition:self.
]

{ #category : #accessors }
ASTCFunctionDefinition >> body [
	^body
]

{ #category : #accessors }
ASTCFunctionDefinition >> body: anObject [
	body:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #comparing }
ASTCFunctionDefinition >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self parameters.
	^ hash
]

{ #category : #accessors }
ASTCFunctionDefinition >> id [
	^id
]

{ #category : #accessors }
ASTCFunctionDefinition >> id: anObject [
	id:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #initialize }
ASTCFunctionDefinition >> initialize [
	super initialize.
	self initializeParameters.
]

{ #category : #initialize }
ASTCFunctionDefinition >> initializeParameters [
	parameters:=ASTCContainer new parent:self; yourself.
]

{ #category : #testing }
ASTCFunctionDefinition >> isASTCFunctionDefinition [
	^true.
]

{ #category : #accessors }
ASTCFunctionDefinition >> parameters [
	^parameters
]

{ #category : #accessors }
ASTCFunctionDefinition >> parameters: aCollection [
	parameters:=aCollection.
	self parameters do:[:each| each parent:self].
			^aCollection.
]

{ #category : #print }
ASTCFunctionDefinition >> printProperties [
	^''
]

{ #category : #accessors }
ASTCFunctionDefinition >> type [
	^type
]

{ #category : #accessors }
ASTCFunctionDefinition >> type: anObject [
	type:=anObject.
	anObject parent:self.
	^anObject.
]
