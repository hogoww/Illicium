Class {
	#name : #ASTCOperator,
	#superclass : #ASTCExpression,
	#instVars : [
		'symbol',
		'operands'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCOperator >> operands [
	^ operands
]

{ #category : #accessors }
ASTCOperator >> operands: anOperands [
	anOperands parent: self.
	^ operands := anOperands
]

{ #category : #accessors }
ASTCOperator >> symbol [
	^ symbol
]

{ #category : #accessors }
ASTCOperator >> symbol: aSymbol [
	^ symbol := aSymbol
]
