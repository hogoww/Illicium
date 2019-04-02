Class {
	#name : #ASTCCompilationUnit,
	#superclass : #Object,
	#instVars : [
		'parent',
		'functionDefinitions'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCCompilationUnit >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self functionDefinitions = anotherNode functionDefinitions
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCCompilationUnit >> acceptMultipleVisitor: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCCompilationUnit:self.].
]

{ #category : #visiting }
ASTCCompilationUnit >> acceptVisitor: aVisitor [
	^aVisitor visitASTCCompilationUnit:self.
]

{ #category : #accessors }
ASTCCompilationUnit >> functionDefinitions [
	^functionDefinitions
]

{ #category : #accessors }
ASTCCompilationUnit >> functionDefinitions: aCollection [
	functionDefinitions:=aCollection.
	aCollection parent:self.
	^aCollection.
]

{ #category : #comparing }
ASTCCompilationUnit >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self functionDefinitions hash.
	^hash
]

{ #category : #initialize }
ASTCCompilationUnit >> initialize [
	super initialize.
	self initializeFunctionDefinitions.
]

{ #category : #initialization }
ASTCCompilationUnit >> initializeFunctionDefinitions [
	functionDefinitions:=ASTCContainer new parent:self; yourself.
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
