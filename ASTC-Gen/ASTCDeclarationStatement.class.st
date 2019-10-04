Class {
	#name : #ASTCDeclarationStatement,
	#superclass : #ASTCStatement,
	#instVars : [
		'declaration'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCDeclarationStatement >> declaration [
	^ declaration
]

{ #category : #accessors }
ASTCDeclarationStatement >> declaration: aDeclaration [
	aDeclaration parent: self.
	declaration := aDeclaration
]
