Class {
	#name : #ASTCExpressionStatement,
	#superclass : #ASTCStatement,
	#instVars : [
		'expression'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCExpressionStatement >> expression [
	^ expression
]

{ #category : #accessing }
ASTCExpressionStatement >> expression: anExpression [
	anExpression parent: self.
	expression := anExpression
]

{ #category : #testing }
ASTCExpressionStatement >> isExpressionStatement [
	^ true
]
