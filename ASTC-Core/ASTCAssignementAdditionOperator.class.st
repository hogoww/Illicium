Class {
	#name : #ASTCAssignementAdditionOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCAssignementAdditionOperator >> = anAssignementAdditionOperator [
  super = anAssignementAdditionOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCAssignementAdditionOperator >> acceptVisitor: aVisitor [
  aVisitor visitAssignementAdditionOperator: self
]

{ #category : #testing }
ASTCAssignementAdditionOperator >> isAssignementAdditionOperator [
  ^true
]
