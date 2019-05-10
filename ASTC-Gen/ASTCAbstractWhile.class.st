Class {
	#name : #ASTCAbstractWhile,
	#superclass : #ASTCLoop,
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCAbstractWhile >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCAbstractWhile >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCAbstractWhile:self.].
]

{ #category : #visiting }
ASTCAbstractWhile >> acceptVisitor: aVisitor [
	^aVisitor visitASTCAbstractWhile:self.
]

{ #category : #comparing }
ASTCAbstractWhile >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #testing }
ASTCAbstractWhile >> isASTCAbstractWhile [
	^true.
]

{ #category : #print }
ASTCAbstractWhile >> printProperties [
	^''
]
