Class {
	#name : #ASTCExpression,
	#superclass : #ASTCNode,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCExpression >> = anExpression [
	super = anExpression
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCExpression >> isExpression [
	^ true
]
