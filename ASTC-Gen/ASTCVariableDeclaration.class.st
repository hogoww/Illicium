Class {
	#name : #ASTCVariableDeclaration,
	#superclass : #ASTCDeclaration,
	#instVars : [
		'type'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCVariableDeclaration >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self type = anotherNode type
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCVariableDeclaration >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCVariableDeclaration:self.].
]

{ #category : #visiting }
ASTCVariableDeclaration >> acceptVisitor: aVisitor [
	^aVisitor visitASTCVariableDeclaration:self.
]

{ #category : #comparing }
ASTCVariableDeclaration >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self type hash.
	^hash
]

{ #category : #testing }
ASTCVariableDeclaration >> isASTCVariableDeclaration [
	^true.
]

{ #category : #print }
ASTCVariableDeclaration >> printProperties [
	^''
]

{ #category : #accessors }
ASTCVariableDeclaration >> type [
	^type
]

{ #category : #accessors }
ASTCVariableDeclaration >> type: anObject [
	type:=anObject.
	anObject parent:self.
	^anObject.
]
