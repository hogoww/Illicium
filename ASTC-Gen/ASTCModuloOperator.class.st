Class {
	#name : #ASTCModuloOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCModuloOperator >> = aModuloOperator [
  super = aModuloOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCModuloOperator >> acceptVisitor: aVisitor [
  aVisitor visitModuloOperator: self
]

{ #category : #testing }
ASTCModuloOperator >> isModuloOperator [
  ^true
]
