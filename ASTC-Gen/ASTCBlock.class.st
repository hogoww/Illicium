Class {
	#name : #ASTCBlock,
	#superclass : #ASTCStatement,
	#instVars : [
		'statements'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCBlock >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self statements = anotherNode statements
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCBlock >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCBlock:self.].
]

{ #category : #visiting }
ASTCBlock >> acceptVisitor: aVisitor [
	^aVisitor visitASTCBlock:self.
]

{ #category : #comparing }
ASTCBlock >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self statements hash.
	^hash
]

{ #category : #initialize }
ASTCBlock >> initialize [
	super initialize.
	self initializeStatements.
]

{ #category : #initialization }
ASTCBlock >> initializeStatements [
	statements:=ASTCContainer new parent:self; yourself.
]

{ #category : #testing }
ASTCBlock >> isASTCBlock [
	^true.
]

{ #category : #print }
ASTCBlock >> printProperties [
	^ ''
]

{ #category : #accessors }
ASTCBlock >> statements [
	^statements
]

{ #category : #accessors }
ASTCBlock >> statements: aCollection [
	statements:=aCollection.
	aCollection parent:self.
	^aCollection.
]
