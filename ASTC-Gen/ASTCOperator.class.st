Class {
	#name : #ASTCOperator,
	#superclass : #ASTCExpression,
	#instVars : [
		'symbol',
		'operands'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCOperator >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self operands = anotherNode operands
		ifFalse: [ ^ false ].

	self symbol = anotherNode symbol
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCOperator >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCOperator:self.].
]

{ #category : #visiting }
ASTCOperator >> acceptVisitor: aVisitor [
	^aVisitor visitASTCOperator:self.
]

{ #category : #comparing }
ASTCOperator >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self operands hash.
	hash := hash + self symbol hash.
	^hash
]

{ #category : #initialize }
ASTCOperator >> initialize [
	super initialize.
	self initializeOperands.
]

{ #category : #initialization }
ASTCOperator >> initializeOperands [
	operands:=ASTCContainer new parent:self; yourself.
]

{ #category : #testing }
ASTCOperator >> isASTCOperator [
	^true.
]

{ #category : #accessors }
ASTCOperator >> operands [
	^operands
]

{ #category : #accessors }
ASTCOperator >> operands: aCollection [
	operands:=aCollection.
	aCollection parent:self.
	^aCollection.
]

{ #category : #print }
ASTCOperator >> printProperties [
	String streamContents: [ :s | self symbolAsString ]
]

{ #category : #accessors }
ASTCOperator >> symbol [
	^symbol
]

{ #category : #accessors }
ASTCOperator >> symbol: anObject [
	symbol:=anObject.
	^anObject.
]

{ #category : #printing }
ASTCOperator >> symbolAsString [
	^ symbol asString
]
