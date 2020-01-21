Class {
	#name : #ASTCUnaryOperator,
	#superclass : #ASTCOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCUnaryOperator >> = anUnaryOperator [
	super = anUnaryOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCUnaryOperator >> acceptVisitor: aVisitor [
	aVisitor visitUnaryOperator: self
]

{ #category : #testing }
ASTCUnaryOperator >> isUnaryOperator [
	^ true
]
