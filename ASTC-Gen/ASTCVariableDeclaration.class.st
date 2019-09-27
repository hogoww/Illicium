Class {
	#name : #ASTCVariableDeclaration,
	#superclass : #ASTCDeclaration,
	#instVars : [
		'type'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCVariableDeclaration >> type [
	^ type
]

{ #category : #accessors }
ASTCVariableDeclaration >> type: aType [
	aType parent: self.
	^ type := aType
]
