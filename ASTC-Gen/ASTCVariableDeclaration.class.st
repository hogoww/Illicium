Class {
	#name : #ASTCVariableDeclaration,
	#superclass : #ASTCDeclaration,
	#instVars : [
		'type'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCVariableDeclaration >> type [
	^ type
]

{ #category : #accessing }
ASTCVariableDeclaration >> type: aType [
	aType parent: self.
	type := aType
]
