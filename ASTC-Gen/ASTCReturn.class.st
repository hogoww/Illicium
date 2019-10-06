Class {
	#name : #ASTCReturn,
	#superclass : #ASTCStatement,
	#instVars : [
		'expression'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCReturn >> expression [
	^ expression
]

{ #category : #accessing }
ASTCReturn >> expression: anExpression [
	anExpression parent: self.
	expression := anExpression
]
