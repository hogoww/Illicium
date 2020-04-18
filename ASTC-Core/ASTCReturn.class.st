Class {
	#name : #ASTCReturn,
	#superclass : #ASTCStatement,
	#instVars : [
		'expression'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCReturn >> = aReturn [
	super = aReturn
		ifFalse: [ ^ false ].
	expression = aReturn expression
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCReturn >> acceptVisitor: aVisitor [
	^ aVisitor visitReturn: self
]

{ #category : #accessing }
ASTCReturn >> expression [
	^ expression
]

{ #category : #accessing }
ASTCReturn >> expression: anExpression [
	anExpression ifNotNil: [ anExpression parent: self ].
	expression := anExpression
]

{ #category : #testing }
ASTCReturn >> isReturn [
	^ true
]
