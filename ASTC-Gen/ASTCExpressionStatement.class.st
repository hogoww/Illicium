Class {
	#name : #ASTCExpressionStatement,
	#superclass : #ASTCStatement,
	#instVars : [
		'expression'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCExpressionStatement >> expression [
	^ expression
]

{ #category : #accessors }
ASTCExpressionStatement >> expression: anExpression [
	anExpression parent: self.
	expression := anExpression
]
