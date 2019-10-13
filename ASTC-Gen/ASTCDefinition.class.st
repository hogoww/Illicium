Class {
	#name : #ASTCDefinition,
	#superclass : #ASTCNode,
	#instVars : [
		'declaration'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCDefinition >> declaration [
	^ declaration
]

{ #category : #accessing }
ASTCDefinition >> declaration: aDeclaration [
	aDeclaration parent: self.
	declaration := aDeclaration
]

{ #category : #testing }
ASTCDefinition >> isDefinition [
	^ true
]
