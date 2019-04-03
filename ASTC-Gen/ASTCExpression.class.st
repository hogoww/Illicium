Class {
	#name : #ASTCExpression,
	#superclass : #ASTCNode,
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCExpression >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCExpression >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCExpression:self.].
]

{ #category : #visiting }
ASTCExpression >> acceptVisitor: aVisitor [
	^aVisitor visitASTCExpression:self.
]

{ #category : #comparing }
ASTCExpression >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #testing }
ASTCExpression >> isASTCExpression [
	^true.
]

{ #category : #print }
ASTCExpression >> printProperties [
	^''
]
