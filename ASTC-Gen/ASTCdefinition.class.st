Class {
	#name : #ASTCdefinition,
	#superclass : #ASTCNode,
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCdefinition >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCdefinition >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCdefinition:self.].
]

{ #category : #visiting }
ASTCdefinition >> acceptVisitor: aVisitor [
	^aVisitor visitASTCdefinition:self.
]

{ #category : #comparing }
ASTCdefinition >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #testing }
ASTCdefinition >> isASTCdefinition [
	^true.
]

{ #category : #print }
ASTCdefinition >> printProperties [
	^''
]
