Class {
	#name : #ASTCExpressionList,
	#superclass : #Object,
	#instVars : [
		'expressions'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCExpressionList >> = anExpressionList [
	expressions = anExpressionList expressions
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCExpressionList >> acceptVisitor: aVisitor [
	aVisitor visitExpressionList: self
]

{ #category : #accessing }
ASTCExpressionList >> expressions [
	^ expressions
]

{ #category : #accessing }
ASTCExpressionList >> expressions: anExpressions [
	anExpressions ifNotNil: [ anExpressions parent: self ].
	expressions := anExpressions
]

{ #category : #testing }
ASTCExpressionList >> isExpressionList [
	^ true
]
