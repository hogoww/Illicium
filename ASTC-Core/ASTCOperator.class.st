Class {
	#name : #ASTCOperator,
	#superclass : #ASTCExpression,
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCOperator >> = anOperator [
	super = anOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCOperator >> acceptVisitor: aVisitor [
	aVisitor visitOperator: self
]

{ #category : #testing }
ASTCOperator >> isOperator [
	^ true
]
