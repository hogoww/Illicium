Class {
	#name : #ASTCGreaterOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCGreaterOperator >> = aGreaterOperator [
  super = aGreaterOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCGreaterOperator >> acceptVisitor: aVisitor [
  aVisitor visitGreaterOperator: self
]

{ #category : #testing }
ASTCGreaterOperator >> isGreaterOperator [
  ^true
]
