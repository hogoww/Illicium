Class {
	#name : #ASTCVariableDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'init'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCVariableDefinition >> init [
	^ init
]

{ #category : #accessing }
ASTCVariableDefinition >> init: anInit [
	anInit parent: self.
	init := anInit
]

{ #category : #testing }
ASTCVariableDefinition >> isVariableDefinition [
	^ true
]
