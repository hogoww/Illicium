Class {
	#name : #ASTCType,
	#superclass : #ASTCNode,
	#instVars : [
		'type'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCType >> type [
	^ type
]

{ #category : #accessing }
ASTCType >> type: aType [
	type := aType
]
