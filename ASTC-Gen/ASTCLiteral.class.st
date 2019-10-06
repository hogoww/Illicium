Class {
	#name : #ASTCLiteral,
	#superclass : #ASTCExpression,
	#instVars : [
		'value'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCLiteral >> value [
	^ value
]

{ #category : #accessing }
ASTCLiteral >> value: aValue [
	value := aValue
]
