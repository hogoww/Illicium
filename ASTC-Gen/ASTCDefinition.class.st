Class {
	#name : #ASTCDefinition,
	#superclass : #ASTCNode,
	#instVars : [
		'declaration'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCDefinition >> = aDefinition [
	super = aDefinition
		ifFalse: [ ^ false ].
	declaration = aDefinition declaration
		ifFalse: [ ^ false ].
	^ true
]

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
