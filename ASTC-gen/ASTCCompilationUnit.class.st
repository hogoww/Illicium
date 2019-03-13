Class {
	#name : #ASTCCompilationUnit,
	#superclass : #Object,
	#instVars : [
		'parent',
		'functionDefinitions'
	],
	#category : #'ASTC-gen'
}

{ #category : #comparing }
ASTCCompilationUnit >> = anotherNode [
	(anotherNode isKindOf: self class)
	ifFalse: [ ^ false ].

	self functionDefinitions = anotherNode functionDefinitions
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCCompilationUnit >> acceptVisitor: aVisitor [
	aVisitor visitASTCCompilationUnit:self.
]

{ #category : #accessors }
ASTCCompilationUnit >> functionDefinitions [
	^functionDefinitions
]

{ #category : #accessors }
ASTCCompilationUnit >> functionDefinitions: aCollection [
	functionDefinitions:=aCollection.
	self functionDefinitions do:[:each| each parent:self].
			^aCollection.
]

{ #category : #comparing }
ASTCCompilationUnit >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self functionDefinitions.
	^ hash
]

{ #category : #initialize }
ASTCCompilationUnit >> initialize [
	super initialize.
	self initializeFunctionDefinitions.
]

{ #category : #initialize }
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
