Class {
	#name : #ASTCNegationOperator,
	#superclass : #ASTCUnaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCNegationOperator >> = aNegationOperator [
	super = aNegationOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCNegationOperator >> acceptVisitor: aVisitor [
	aVisitor visitNegationOperator: self
]

{ #category : #testing }
ASTCNegationOperator >> isNegationOperator [
	^ true
]
