Class {
	#name : #ASTCDefinition,
	#superclass : #ASTCNode,
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCDefinition >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCDefinition >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCDefinition:self.].
]

{ #category : #visiting }
ASTCDefinition >> acceptVisitor: aVisitor [
	^aVisitor visitASTCDefinition:self.
]

{ #category : #comparing }
ASTCDefinition >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #testing }
ASTCDefinition >> isASTCDefinition [
	^true.
]

{ #category : #print }
ASTCDefinition >> printProperties [
	^''
]
