Class {
	#name : #ASTCType,
	#superclass : #ASTCNode,
	#instVars : [
		'type'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCType >> type [
	^ type
]

{ #category : #accessors }
ASTCType >> type: aType [
	^ type := aType
]
