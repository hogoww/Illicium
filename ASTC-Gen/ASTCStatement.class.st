Class {
	#name : #ASTCStatement,
	#superclass : #ASTCNode,
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCStatement >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCStatement >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCStatement:self.].
]

{ #category : #visiting }
ASTCStatement >> acceptVisitor: aVisitor [
	^aVisitor visitASTCStatement:self.
]

{ #category : #converting }
ASTCStatement >> asASTCStatement [

	^ self
]

{ #category : #comparing }
ASTCStatement >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #testing }
ASTCStatement >> isASTCStatement [
	^true.
]

{ #category : #print }
ASTCStatement >> printProperties [
	^''
]
