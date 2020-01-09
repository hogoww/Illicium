Class {
	#name : #ASTCLogicalNotOperator,
	#superclass : #ASTCUnaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCLogicalNotOperator >> = aLogicalNotOperator [
  super = aLogicalNotOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCLogicalNotOperator >> acceptVisitor: aVisitor [
  aVisitor visitLogicalNotOperator: self
]

{ #category : #testing }
ASTCLogicalNotOperator >> isLogicalNotOperator [
  ^true
]
