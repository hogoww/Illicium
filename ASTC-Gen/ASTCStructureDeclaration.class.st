Class {
	#name : #ASTCStructureDeclaration,
	#superclass : #ASTCDeclaration,
	#instVars : [
		'id'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCStructureDeclaration >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self id = anotherNode id
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
	hash := hash + self id hash.
	^hash
]

{ #category : #accessors }
ASTCStructureDeclaration >> id [
	^id
]

{ #category : #accessors }
ASTCStructureDeclaration >> id: anObject [
	id:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #testing }
ASTCStructureDeclaration >> isASTCStructureDeclaration [
	^true.
]

{ #category : #print }
ASTCStructureDeclaration >> printProperties [
	^''
]
