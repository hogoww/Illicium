Class {
	#name : #ASTCDeclaration,
	#superclass : #ASTCNode,
	#instVars : [
		'ids',
		'type',
		'init'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCDeclaration >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self ids = anotherNode ids
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
	hash := hash + self ids.
	^ hash
]

{ #category : #accessors }
ASTCDeclaration >> ids [
	^ids
]

{ #category : #accessors }
ASTCDeclaration >> ids: aCollection [
	ids:=aCollection.
	self ids do:[:each| each parent:self].
			^aCollection.
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

{ #category : #initialize }
ASTCDeclaration >> initialize [
	super initialize.
	self initializeIds.
]

{ #category : #initialize }
ASTCDeclaration >> initializeIds [
	ids:=ASTCContainer new parent:self; yourself.
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
