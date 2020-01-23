Class {
	#name : #ASTCAssignmentOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCAssignmentOperator >> = anAssignmentOperator [
  super = anAssignmentOperator ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCAssignmentOperator >> acceptVisitor: aVisitor [
  aVisitor visitAssignmentOperator: self
]

{ #category : #testing }
ASTCAssignmentOperator >> isAssignmentOperator [
  ^true
]
