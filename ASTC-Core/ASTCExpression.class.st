Class {
	#name : #ASTCExpression,
	#superclass : #ASTCNode,
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCExpression >> = anExpression [
	super = anExpression
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCExpression >> acceptVisitor: aVisitor [
	aVisitor visitExpression: self
]

{ #category : #testing }
ASTCExpression >> isExpression [
	^ true
]
