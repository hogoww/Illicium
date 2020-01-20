Class {
	#name : #ASTCBitwiseAndOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCBitwiseAndOperator >> = aBitwiseAndOperator [
  super = aBitwiseAndOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCBitwiseAndOperator >> acceptVisitor: aVisitor [
  aVisitor visitBitwiseAndOperator: self
]

{ #category : #testing }
ASTCBitwiseAndOperator >> isBitwiseAndOperator [
  ^true
]
