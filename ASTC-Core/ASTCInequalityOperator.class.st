Class {
	#name : #ASTCInequalityOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCInequalityOperator >> = anInequalityOperator [
	super = anInequalityOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCInequalityOperator >> acceptVisitor: aVisitor [
	aVisitor visitInequalityOperator: self
]

{ #category : #testing }
ASTCInequalityOperator >> isInequalityOperator [
	^ true
]
