Class {
	#name : #ASTCUnaryOperator,
	#superclass : #ASTCOperator,
	#instVars : [
		'operand'
	],
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCUnaryOperator >> = anUnaryOperator [
	super = anUnaryOperator
		ifFalse: [ ^ false ].
	operand = anUnaryOperator operand
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCUnaryOperator >> acceptVisitor: aVisitor [
	^ aVisitor visitUnaryOperator: self
]

{ #category : #testing }
ASTCUnaryOperator >> isUnaryOperator [
	^ true
]

{ #category : #accessing }
ASTCUnaryOperator >> operand [
	^ operand
]

{ #category : #accessing }
ASTCUnaryOperator >> operand: anOperand [
	anOperand ifNotNil: [ anOperand parent: self ].
	operand := anOperand
]
