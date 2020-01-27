Class {
	#name : #ASTCEqualityOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCEqualityOperator >> = anEqualityOperator [
  super = anEqualityOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCEqualityOperator >> acceptVisitor: aVisitor [
  aVisitor visitEqualityOperator: self
]

{ #category : #testing }
ASTCEqualityOperator >> isEqualityOperator [
  ^true
]
