Class {
	#name : #ASTCStatement,
	#superclass : #ASTCNode,
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCStatement >> = anotherNode [
	(anotherNode class = self class)
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
ASTCStatement >> acceptVisitor: aVisitor [
	^aVisitor visitASTCStatement:self.
]

{ #category : #comparing }
ASTCStatement >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self parent hash.
	hash := hash + self parent hash.
	hash := hash + self parent hash.
 hash
]

{ #category : #testing }
ASTCStatement >> isASTCStatement [
	^true.
]

{ #category : #print }
ASTCStatement >> printProperties [
	^''
]
