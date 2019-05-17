Class {
	#name : #ASTCStructureDeclaration,
	#superclass : #ASTCDeclaration,
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCStructureDeclaration >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCStructureDeclaration >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCStructureDeclaration:self.].
]

{ #category : #visiting }
ASTCStructureDeclaration >> acceptVisitor: aVisitor [
	^aVisitor visitASTCStructureDeclaration:self.
]

{ #category : #comparing }
ASTCStructureDeclaration >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #testing }
ASTCStructureDeclaration >> isASTCStructureDeclaration [
	^true.
]

{ #category : #print }
ASTCStructureDeclaration >> printProperties [
	^''
]
