Class {
	#name : #ASTCGreaterOrEqualOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCGreaterOrEqualOperator >> = aGreaterOrEqualOperator [
	super = aGreaterOrEqualOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCGreaterOrEqualOperator >> acceptVisitor: aVisitor [
	aVisitor visitGreaterOrEqualOperator: self
]

{ #category : #testing }
ASTCGreaterOrEqualOperator >> isGreaterOrEqualOperator [
	^ true
]
