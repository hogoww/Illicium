Class {
	#name : #ASTCWhile,
	#superclass : #ASTCAbstractWhile,
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCWhile >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCWhile >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCWhile:self.].
]

{ #category : #visiting }
ASTCWhile >> acceptVisitor: aVisitor [
	^aVisitor visitASTCWhile:self.
]

{ #category : #comparing }
ASTCWhile >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #testing }
ASTCWhile >> isASTCWhile [
	^true.
]

{ #category : #print }
ASTCWhile >> printProperties [
	^''
]
