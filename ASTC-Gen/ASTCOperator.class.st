Class {
	#name : #ASTCOperator,
	#superclass : #ASTCExpression,
	#instVars : [
		'symbol',
		'operands'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCOperator >> = anOperator [
	super = anOperator
		ifFalse: [ ^ false ].
	symbol = anOperator symbol
		ifFalse: [ ^ false ].
	operands = anOperator operands
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #accessing }
ASTCOperator >> initialize [
	operands := OrderedCollection new
]

{ #category : #testing }
ASTCOperator >> isOperator [
	^ true
]

{ #category : #accessing }
ASTCOperator >> operands [
	^ operands
]

{ #category : #accessing }
ASTCOperator >> operands: someExpressions [
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
