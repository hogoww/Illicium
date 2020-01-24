Class {
	#name : #ASTCPreIncrementOperator,
	#superclass : #ASTCUnaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCPreIncrementOperator >> = aPreIncrementOperator [
  super = aPreIncrementOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCPreIncrementOperator >> acceptVisitor: aVisitor [
  aVisitor visitPreIncrementOperator: self
]

{ #category : #testing }
ASTCPreIncrementOperator >> isPreIncrementOperator [
  ^true
]
