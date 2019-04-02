Class {
	#name : #ASTCBlock,
	#superclass : #ASTCStatement,
	#instVars : [
		'declarations',
		'statements'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCBlock >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self declarations = anotherNode declarations
		ifFalse: [ ^ false ].

	self statements = anotherNode statements
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCBlock >> acceptMultipleVisitor: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCBlock:self.].
]

{ #category : #visiting }
ASTCBlock >> acceptVisitor: aVisitor [
	^aVisitor visitASTCBlock:self.
]

{ #category : #accessors }
ASTCBlock >> declarations [
	^declarations
]

{ #category : #accessors }
ASTCBlock >> declarations: aCollection [
	declarations:=aCollection.
	aCollection parent:self.
	^aCollection.
]

{ #category : #comparing }
ASTCBlock >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self declarations hash.
	hash := hash + self statements hash.
	^hash
]

{ #category : #initialize }
ASTCBlock >> initialize [
	super initialize.
	self initializeDeclarations.
	self initializeStatements.
]

{ #category : #initialization }
ASTCBlock >> initializeDeclarations [
	declarations:=ASTCContainer new parent:self; yourself.
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
	^''
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
