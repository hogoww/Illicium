Class {
	#name : #ASTCDeclarationStatement,
	#superclass : #ASTCStatement,
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCDeclarationStatement >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCDeclarationStatement >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCDeclarationStatement:self.].
]

{ #category : #visiting }
ASTCDeclarationStatement >> acceptVisitor: aVisitor [
	^aVisitor visitASTCDeclarationStatement:self.
]

{ #category : #comparing }
ASTCDeclarationStatement >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #testing }
ASTCDeclarationStatement >> isASTCDeclarationStatement [
	^true.
]

{ #category : #print }
ASTCDeclarationStatement >> printProperties [
	^''
]
