Class {
	#name : #ASTCStructureDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'members'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCStructureDefinition >> members [
	^ members
]

{ #category : #accessors }
ASTCStructureDefinition >> members: aCollectionOfVariableDeclarations [
	aCollectionOfVariableDeclarations parent: self.
	^ members := aCollectionOfVariableDeclarations
]
