Class {
	#name : #ASTCCompilationUnit,
	#superclass : #Object,
	#instVars : [
		'parent',
		'definitions',
		'declarations'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCCompilationUnit >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self definitions = anotherNode definitions
		ifFalse: [ ^ false ].

	self declarations = anotherNode declarations
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCCompilationUnit >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCCompilationUnit:self.].
]

{ #category : #visiting }
ASTCCompilationUnit >> acceptVisitor: aVisitor [
	^aVisitor visitASTCCompilationUnit:self.
]

{ #category : #accessors }
ASTCCompilationUnit >> declarations [
	^declarations
]

{ #category : #accessors }
ASTCCompilationUnit >> declarations: aCollection [
	declarations:=aCollection.
	aCollection parent:self.
	^aCollection.
]

{ #category : #accessors }
ASTCCompilationUnit >> definitions [
	^definitions
]

{ #category : #accessors }
ASTCCompilationUnit >> definitions: aCollection [
	definitions:=aCollection.
	aCollection parent:self.
	^aCollection.
]

{ #category : #comparing }
ASTCCompilationUnit >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self definitions hash.
	hash := hash + self declarations hash.
	^hash
]

{ #category : #initialize }
ASTCCompilationUnit >> initialize [
	super initialize.
	self initializeDefinitions.
	self initializeDeclarations.
]

{ #category : #initialization }
ASTCCompilationUnit >> initializeDeclarations [
	declarations:=ASTCContainer new parent:self; yourself.
]

{ #category : #initialization }
ASTCCompilationUnit >> initializeDefinitions [
	definitions:=ASTCContainer new parent:self; yourself.
]

{ #category : #testing }
ASTCCompilationUnit >> isASTCCompilationUnit [
	^true.
]

{ #category : #accessors }
ASTCCompilationUnit >> parent [
	^parent
]

{ #category : #accessors }
ASTCCompilationUnit >> parent: anObject [
	parent:=anObject.
	^anObject.
]

{ #category : #print }
ASTCCompilationUnit >> printProperties [
	^''
]
