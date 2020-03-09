Class {
	#name : #ASTCAssignmentOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCAssignmentOperator >> = anAssignmentOperator [
	super = anAssignmentOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCAssignmentOperator >> acceptVisitor: aVisitor [
	aVisitor visitAssignmentOperator: self
]

{ #category : #testing }
ASTCAssignmentOperator >> isAssignmentOperator [
	^ true
]
