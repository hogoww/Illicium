Class {
	#name : #ASTCFunctionDeclaration,
	#superclass : #ASTCDeclaration,
	#instVars : [
		'type',
		'id',
		'parameters'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCFunctionDeclaration >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self type = anotherNode type
		ifFalse: [ ^ false ].

	self id = anotherNode id
		ifFalse: [ ^ false ].

	self parameters = anotherNode parameters
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCFunctionDeclaration >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCFunctionDeclaration:self.].
]

{ #category : #visiting }
ASTCFunctionDeclaration >> acceptVisitor: aVisitor [
	^aVisitor visitASTCFunctionDeclaration:self.
]

{ #category : #comparing }
ASTCFunctionDeclaration >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self type hash.
	hash := hash + self id hash.
	hash := hash + self parameters hash.
	^hash
]

{ #category : #accessors }
ASTCFunctionDeclaration >> id [
	^id
]

{ #category : #accessors }
ASTCFunctionDeclaration >> id: anObject [
	id:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #initialize }
ASTCFunctionDeclaration >> initialize [
	super initialize.
	self initializeParameters.
]

{ #category : #initialization }
ASTCFunctionDeclaration >> initializeParameters [
	parameters:=ASTCContainer new parent:self; yourself.
]

{ #category : #testing }
ASTCFunctionDeclaration >> isASTCFunctionDeclaration [
	^true.
]

{ #category : #accessors }
ASTCFunctionDeclaration >> parameters [
	^parameters
]

{ #category : #accessors }
ASTCFunctionDeclaration >> parameters: aCollection [
	parameters:=aCollection.
	aCollection parent:self.
	^aCollection.
]

{ #category : #print }
ASTCFunctionDeclaration >> printProperties [
	^''
]

{ #category : #accessors }
ASTCFunctionDeclaration >> type [
	^type
]

{ #category : #accessors }
ASTCFunctionDeclaration >> type: anObject [
	type:=anObject.
	anObject parent:self.
	^anObject.
]
