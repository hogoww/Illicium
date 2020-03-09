Class {
	#name : #ASTCBitLeftShiftOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCBitLeftShiftOperator >> = aBitLeftShiftOperator [
	super = aBitLeftShiftOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCBitLeftShiftOperator >> acceptVisitor: aVisitor [
	aVisitor visitBitLeftShiftOperator: self
]

{ #category : #testing }
ASTCBitLeftShiftOperator >> isBitLeftShiftOperator [
	^ true
]
