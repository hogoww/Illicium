Class {
	#name : #ASTCModuloOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCModuloOperator >> = aModuloOperator [
	super = aModuloOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCModuloOperator >> acceptVisitor: aVisitor [
	^ aVisitor visitModuloOperator: self
]

{ #category : #testing }
ASTCModuloOperator >> isModuloOperator [
	^ true
]
