Class {
	#name : #ASTCTernaryConditionalOperator,
	#superclass : #ASTCOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCTernaryConditionalOperator >> = aTernaryConditionalOperator [
  super = aTernaryConditionalOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCTernaryConditionalOperator >> acceptVisitor: aVisitor [
  aVisitor visitTernaryConditionalOperator: self
]

{ #category : #testing }
ASTCTernaryConditionalOperator >> isTernaryConditionalOperator [
  ^true
]
