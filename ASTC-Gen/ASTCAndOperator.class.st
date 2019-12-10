Class {
	#name : #ASTCAndOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCAndOperator >> = anAndOperator [
	super = anAndOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCAndOperator >> acceptVisitor: aVisitor [
	aVisitor visitAndOperator: self
]

{ #category : #testing }
ASTCAndOperator >> isAndOperator [
	^ true
]
