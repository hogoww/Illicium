Class {
	#name : #ASTCBitwiseXorOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCBitwiseXorOperator >> = aBitwiseXorOperator [
  super = aBitwiseXorOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCBitwiseXorOperator >> acceptVisitor: aVisitor [
  aVisitor visitBitwiseXorOperator: self
]

{ #category : #testing }
ASTCBitwiseXorOperator >> isBitwiseXorOperator [
  ^true
]
