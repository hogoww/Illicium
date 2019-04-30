Class {
	#name : #ASTCDeclaration,
	#superclass : #ASTCNode,
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCDeclaration >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCDeclaration >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCDeclaration:self.].
]

{ #category : #visiting }
ASTCDeclaration >> acceptVisitor: aVisitor [
	^aVisitor visitASTCDeclaration:self.
]

{ #category : #comparing }
ASTCDeclaration >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #testing }
ASTCDeclaration >> isASTCDeclaration [
	^true.
]

{ #category : #print }
ASTCDeclaration >> printProperties [
	^''
]
