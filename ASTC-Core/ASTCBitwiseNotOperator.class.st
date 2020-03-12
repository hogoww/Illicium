Class {
	#name : #ASTCBitwiseNotOperator,
	#superclass : #ASTCUnaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCBitwiseNotOperator >> = aBitwiseNotOperator [
	super = aBitwiseNotOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCBitwiseNotOperator >> acceptVisitor: aVisitor [
	aVisitor visitBitwiseNotOperator: self
]

{ #category : #testing }
ASTCBitwiseNotOperator >> isBitwiseNotOperator [
	^ true
]
