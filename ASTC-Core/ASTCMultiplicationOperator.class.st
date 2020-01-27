Class {
	#name : #ASTCMultiplicationOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCMultiplicationOperator >> = aMultiplicationOperator [
  super = aMultiplicationOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCMultiplicationOperator >> acceptVisitor: aVisitor [
  aVisitor visitMultiplicationOperator: self
]

{ #category : #testing }
ASTCMultiplicationOperator >> isMultiplicationOperator [
  ^true
]
