Class {
	#name : #ASTCBitRightShiftOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCBitRightShiftOperator >> = aBitRightShiftOperator [
  super = aBitRightShiftOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCBitRightShiftOperator >> acceptVisitor: aVisitor [
  aVisitor visitBitRightShiftOperator: self
]

{ #category : #testing }
ASTCBitRightShiftOperator >> isBitRightShiftOperator [
  ^true
]
