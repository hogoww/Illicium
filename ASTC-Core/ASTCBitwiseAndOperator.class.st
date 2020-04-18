Class {
	#name : #ASTCBitwiseAndOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCBitwiseAndOperator >> = aBitwiseAndOperator [
	super = aBitwiseAndOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCBitwiseAndOperator >> acceptVisitor: aVisitor [
	^ aVisitor visitBitwiseAndOperator: self
]

{ #category : #testing }
ASTCBitwiseAndOperator >> isBitwiseAndOperator [
	^ true
]
