Class {
	#name : #ASTCBinaryOperator,
	#superclass : #ASTCOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCBinaryOperator >> = aBinaryOperator [
	super = aBinaryOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCBinaryOperator >> acceptVisitor: aVisitor [
	aVisitor visitBinaryOperator: self
]

{ #category : #testing }
ASTCBinaryOperator >> isBinaryOperator [
	^ true
]
