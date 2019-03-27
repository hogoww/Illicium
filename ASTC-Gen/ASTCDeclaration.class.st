Class {
	#name : #ASTCDeclaration,
	#superclass : #ASTCNode,
	#instVars : [
		'id',
		'type',
		'init'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCDeclaration >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCDeclaration >> acceptVisitor: aVisitor [
	aVisitor visitASTCDeclaration:self.
]

{ #category : #comparing }
ASTCDeclaration >> hash [
	| hash |
	hash := self identityHash.

	^ hash
]

{ #category : #accessors }
ASTCDeclaration >> id [
	^id
]

{ #category : #accessors }
ASTCDeclaration >> id: anObject [
	id:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #accessors }
ASTCDeclaration >> init [
	^init
]

{ #category : #accessors }
ASTCDeclaration >> init: anObject [
	init:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #testing }
ASTCDeclaration >> isASTCDeclaration [
	^true.
]

{ #category : #print }
ASTCDeclaration >> printProperties [
	^''
]

{ #category : #accessors }
ASTCDeclaration >> type [
	^type
]

{ #category : #accessors }
ASTCDeclaration >> type: anObject [
	type:=anObject.
	anObject parent:self.
	^anObject.
]
