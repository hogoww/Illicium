Class {
	#name : #ASTCDeclarationStatement,
	#superclass : #ASTCStatement,
	#instVars : [
		'declaration'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCDeclarationStatement >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self declaration = anotherNode declaration
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCDeclarationStatement >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCDeclarationStatement:self.].
]

{ #category : #visiting }
ASTCDeclarationStatement >> acceptVisitor: aVisitor [
	^aVisitor visitASTCDeclarationStatement:self.
]

{ #category : #accessors }
ASTCDeclarationStatement >> declaration [
	^declaration
]

{ #category : #accessors }
ASTCDeclarationStatement >> declaration: anObject [
	declaration:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #comparing }
ASTCDeclarationStatement >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self declaration hash.
	^hash
]

{ #category : #testing }
ASTCDeclarationStatement >> isASTCDeclarationStatement [
	^true.
]

{ #category : #print }
ASTCDeclarationStatement >> printProperties [
	^''
]
