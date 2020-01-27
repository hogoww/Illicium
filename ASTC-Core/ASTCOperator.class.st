Class {
	#name : #ASTCOperator,
	#superclass : #ASTCExpression,
	#instVars : [
		'operands'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCOperator >> = anOperator [
  super = anOperator ifFalse: [ ^false ].
  operands = anOperator operands ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCOperator >> acceptVisitor: aVisitor [
  aVisitor visitOperator: self
]

{ #category : #accessing }
ASTCOperator >> addOperand: anOperand [
  anOperand parent: self.
  operands add: anOperand
]

{ #category : #accessing }
ASTCOperator >> initialize [
  operands := OrderedCollection new
]

{ #category : #testing }
ASTCOperator >> isOperator [
  ^true
]

{ #category : #accessing }
ASTCOperator >> operands [
  ^operands
]

{ #category : #accessing }
ASTCOperator >> operands: someExpressions [
  someExpressions do: [:each |  each parent: self ].
  operands := someExpressions
]