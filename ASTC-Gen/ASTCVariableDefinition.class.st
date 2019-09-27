Class {
	#name : #ASTCVariableDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'init'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCVariableDefinition >> init [
	^ init
]

{ #category : #accessors }
ASTCVariableDefinition >> init: anInit [
	anInit parent: self.
	^ init := anInit
]
