Class {
	#name : #ASTCGreaterOrEqualOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCGreaterOrEqualOperator >> = aGreaterOrEqualOperator [
	super = aGreaterOrEqualOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCGreaterOrEqualOperator >> acceptVisitor: aVisitor [
	aVisitor visitGreaterOrEqualOperator: self
]

{ #category : #testing }
ASTCGreaterOrEqualOperator >> isGreaterOrEqualOperator [
	^ true
]
