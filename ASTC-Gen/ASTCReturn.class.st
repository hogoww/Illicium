Class {
	#name : #ASTCReturn,
	#superclass : #ASTCStatement,
	#instVars : [
		'expression'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCReturn >> expression [
	^ expression
]

{ #category : #accessors }
ASTCReturn >> expression: anExpression [
	anExpression parent: self.
	^ expression := anExpression
]
