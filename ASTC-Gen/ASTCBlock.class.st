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

	self statements = anotherNode statements
		ifFalse: [ ^ false ].

	self declarations = anotherNode declarations
		ifFalse: [ ^ false ].

	^ true
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
	self declarations do:[:each| each parent:self].
			^aCollection.
]

{ #category : #comparing }
ASTCBlock >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self statements hash.
	hash := hash + self declarations hash.
 hash
]

{ #category : #initialize }
ASTCBlock >> initialize [
	super initialize.
	self initializeStatements.
		self initializeDeclarations.
]

{ #category : #initialize }
ASTCBlock >> initializeDeclarations [
	declarations:=ASTCContainer new parent:self; yourself.
]

{ #category : #initialize }
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
	self statements do:[:each| each parent:self].
			^aCollection.
]
