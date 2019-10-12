Class {
	#name : #ASTCOperator,
	#superclass : #ASTCExpression,
	#instVars : [
		'symbol',
		'operands'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCOperator >> addOperand: anOperand [
	operands add: anOperand
]

{ #category : #accessing }
ASTCOperator >> operands [
	^ operands
]

{ #category : #accessing }
ASTCOperator >> operands: someExpressions [
	someExpressions parent: self.
	operands := someExpressions
]

{ #category : #accessing }
ASTCOperator >> symbol [
	^ symbol
]

{ #category : #accessing }
ASTCOperator >> symbol: aSymbol [
	symbol := aSymbol
]
