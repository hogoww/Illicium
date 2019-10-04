Class {
	#name : #ASTCLiteral,
	#superclass : #ASTCExpression,
	#instVars : [
		'value'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCLiteral >> value [
	^ value
]

{ #category : #accessors }
ASTCLiteral >> value: aValue [
	value := aValue
]
