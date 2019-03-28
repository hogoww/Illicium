Class {
	#name : #ASTCExpression,
	#superclass : #ASTCNode,
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCExpression >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self parent = anotherNode parent
		ifFalse: [ ^ false ].

	self parent = anotherNode parent
		ifFalse: [ ^ false ].

	self parent = anotherNode parent
		ifFalse: [ ^ false ].

	self parent = anotherNode parent
		ifFalse: [ ^ false ].

	self parent = anotherNode parent
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCExpression >> acceptVisitor: aVisitor [
	^aVisitor visitASTCExpression:self.
]

{ #category : #comparing }
ASTCExpression >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self parent hash.
	hash := hash + self parent hash.
	hash := hash + self parent hash.
	hash := hash + self parent hash.
	hash := hash + self parent hash.
 hash
]

{ #category : #testing }
ASTCExpression >> isASTCExpression [
	^true.
]

{ #category : #print }
ASTCExpression >> printProperties [
	^''
]
