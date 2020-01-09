Class {
	#name : #ASTCLesserOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCLesserOperator >> = aLesserOperator [
  super = aLesserOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCLesserOperator >> acceptVisitor: aVisitor [
  aVisitor visitLesserOperator: self
]

{ #category : #testing }
ASTCLesserOperator >> isLesserOperator [
  ^true
]
