Class {
	#name : #ASTCDoWhile,
	#superclass : #ASTCAbstractWhile,
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCDoWhile >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCDoWhile >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCDoWhile:self.].
]

{ #category : #visiting }
ASTCDoWhile >> acceptVisitor: aVisitor [
	^aVisitor visitASTCDoWhile:self.
]

{ #category : #comparing }
ASTCDoWhile >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #testing }
ASTCDoWhile >> isASTCDoWhile [
	^true.
]

{ #category : #print }
ASTCDoWhile >> printProperties [
	^''
]
