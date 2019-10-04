Class {
	#name : #ASTCDefinition,
	#superclass : #ASTCNode,
	#instVars : [
		'declaration'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCDefinition >> declaration [
	^ declaration
]

{ #category : #accessors }
ASTCDefinition >> declaration: aDeclaration [
	aDeclaration parent: self.
	declaration := aDeclaration
]
