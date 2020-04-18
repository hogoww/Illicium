Class {
	#name : #ASTCBinaryOperator,
	#superclass : #ASTCOperator,
	#instVars : [
		'leftOperand',
		'rightOperand'
	],
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCBinaryOperator >> = aBinaryOperator [
	super = aBinaryOperator
		ifFalse: [ ^ false ].
	leftOperand = aBinaryOperator leftOperand
		ifFalse: [ ^ false ].
	rightOperand = aBinaryOperator rightOperand
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCBinaryOperator >> acceptVisitor: aVisitor [
	^ aVisitor visitBinaryOperator: self
]

{ #category : #testing }
ASTCBinaryOperator >> isBinaryOperator [
	^ true
]

{ #category : #accessing }
ASTCBinaryOperator >> leftOperand [
	^ leftOperand
]

{ #category : #accessing }
ASTCBinaryOperator >> leftOperand: aLeftOperand [
	aLeftOperand ifNotNil: [ aLeftOperand parent: self ].
	leftOperand := aLeftOperand
]

{ #category : #accessing }
ASTCBinaryOperator >> rightOperand [
	^ rightOperand
]

{ #category : #accessing }
ASTCBinaryOperator >> rightOperand: aRightOperand [
	aRightOperand ifNotNil: [ aRightOperand parent: self ].
	rightOperand := aRightOperand
]
