Class {
	#name : #ASTCDeclarationStatement,
	#superclass : #ASTCStatement,
	#instVars : [
		'declaration'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCDeclarationStatement >> declaration [
	^ declaration
]

{ #category : #accessing }
ASTCDeclarationStatement >> declaration: aDeclaration [
	aDeclaration parent: self.
	declaration := aDeclaration
]
