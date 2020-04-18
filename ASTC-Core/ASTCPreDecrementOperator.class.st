Class {
	#name : #ASTCPreDecrementOperator,
	#superclass : #ASTCUnaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCPreDecrementOperator >> = aPreDecrementOperator [
	super = aPreDecrementOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCPreDecrementOperator >> acceptVisitor: aVisitor [
	^ aVisitor visitPreDecrementOperator: self
]

{ #category : #testing }
ASTCPreDecrementOperator >> isPreDecrementOperator [
	^ true
]
