Class {
	#name : #ASTCBitwiseOrOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCBitwiseOrOperator >> = aBitwiseOrOperator [
  super = aBitwiseOrOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCBitwiseOrOperator >> acceptVisitor: aVisitor [
  aVisitor visitBitwiseOrOperator: self
]

{ #category : #testing }
ASTCBitwiseOrOperator >> isBitwiseOrOperator [
  ^true
]
