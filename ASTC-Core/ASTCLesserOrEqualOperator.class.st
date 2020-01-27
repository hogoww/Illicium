Class {
	#name : #ASTCLesserOrEqualOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCLesserOrEqualOperator >> = aLesserOrEqualOperator [
  super = aLesserOrEqualOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCLesserOrEqualOperator >> acceptVisitor: aVisitor [
  aVisitor visitLesserOrEqualOperator: self
]

{ #category : #testing }
ASTCLesserOrEqualOperator >> isLesserOrEqualOperator [
  ^true
]
