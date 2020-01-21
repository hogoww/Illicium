Class {
	#name : #ASTCVariableDeclaration,
	#superclass : #ASTCDeclaration,
	#instVars : [
		'type'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCVariableDeclaration >> = aVariableDeclaration [
	super = aVariableDeclaration
		ifFalse: [ ^ false ].
	type = aVariableDeclaration type
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCVariableDeclaration >> acceptVisitor: aVisitor [
	aVisitor visitVariableDeclaration: self
]

{ #category : #testing }
ASTCVariableDeclaration >> isVariableDeclaration [
	^ true
]

{ #category : #accessing }
ASTCVariableDeclaration >> type [
	^ type
]

{ #category : #accessing }
ASTCVariableDeclaration >> type: aType [
	aType ifNotNil: [ aType parent: self ].
	type := aType
]
