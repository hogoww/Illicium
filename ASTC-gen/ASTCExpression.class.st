Class {
	#name : #ASTCExpression,
	#superclass : #ASTCNode,
	#category : #'ASTC-gen'
}

{ #category : #comparing }
ASTCExpression >> = anotherNode [
	(anotherNode isKindOf: self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCExpression >> acceptVisitor: aVisitor [
	aVisitor visitASTCExpression:self.
]

{ #category : #comparing }
ASTCExpression >> hash [
	| hash |
	hash := self identityHash.

	^ hash
]

{ #category : #testing }
ASTCExpression >> isASTCExpression [
	^true.
]

{ #category : #print }
ASTCExpression >> printProperties [
	^''
]
