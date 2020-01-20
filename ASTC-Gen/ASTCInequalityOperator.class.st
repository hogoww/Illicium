Class {
	#name : #ASTCInequalityOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCInequalityOperator >> = anInequalityOperator [
  super = anInequalityOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCInequalityOperator >> acceptVisitor: aVisitor [
  aVisitor visitInequalityOperator: self
]

{ #category : #testing }
ASTCInequalityOperator >> isInequalityOperator [
  ^true
]
