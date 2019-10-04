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
ASTCOperator >> addOperand: anOperand [
	operands add: anOperand
]

{ #category : #accessors }
ASTCOperator >> operands [
	^ operands
]

{ #category : #accessors }
ASTCOperator >> operands: aCollectionOfExpressions [
	aCollectionOfExpressions parent: self.
	operands := aCollectionOfExpressions
]

{ #category : #accessors }
ASTCOperator >> symbol [
	^ symbol
]

{ #category : #accessors }
ASTCOperator >> symbol: aSymbol [
	symbol := aSymbol
]
