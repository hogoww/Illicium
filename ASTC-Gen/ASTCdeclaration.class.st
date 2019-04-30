Class {
	#name : #ASTCdeclaration,
	#superclass : #ASTCNode,
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCdeclaration >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCdeclaration >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCdeclaration:self.].
]

{ #category : #visiting }
ASTCdeclaration >> acceptVisitor: aVisitor [
	^aVisitor visitASTCdeclaration:self.
]

{ #category : #comparing }
ASTCdeclaration >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #testing }
ASTCdeclaration >> isASTCdeclaration [
	^true.
]

{ #category : #print }
ASTCdeclaration >> printProperties [
	^''
]
