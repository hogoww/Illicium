Class {
	#name : #ASTCFor,
	#superclass : #ASTCLoop,
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCFor >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCFor >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCFor:self.].
]

{ #category : #visiting }
ASTCFor >> acceptVisitor: aVisitor [
	^aVisitor visitASTCFor:self.
]

{ #category : #comparing }
ASTCFor >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #testing }
ASTCFor >> isASTCFor [
	^true.
]

{ #category : #print }
ASTCFor >> printProperties [
	^''
]
