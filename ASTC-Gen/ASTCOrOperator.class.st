Class {
	#name : #ASTCOrOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCOrOperator >> = anOrOperator [
  super = anOrOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCOrOperator >> acceptVisitor: aVisitor [
  aVisitor visitOrOperator: self
]

{ #category : #testing }
ASTCOrOperator >> isOrOperator [
  ^true
]
