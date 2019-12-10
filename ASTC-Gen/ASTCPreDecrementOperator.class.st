Class {
	#name : #ASTCPreDecrementOperator,
	#superclass : #ASTCUnaryOperator,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCPreDecrementOperator >> = aPreDecrementOperator [
	super = aPreDecrementOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCPreDecrementOperator >> acceptVisitor: aVisitor [
	aVisitor visitPreDecrementOperator: self
]

{ #category : #testing }
ASTCPreDecrementOperator >> isPreDecrementOperator [
	^ true
]
