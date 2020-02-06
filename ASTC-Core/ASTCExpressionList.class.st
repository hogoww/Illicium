Class {
	#name : #ASTCExpressionList,
	#superclass : #ASTCExpression,
	#instVars : [
		'expressions'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCExpressionList >> = anExpressionList [
	super = anExpressionList
		ifFalse: [ ^ false ].
	expressions = anExpressionList expressions
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCExpressionList >> acceptVisitor: aVisitor [
	aVisitor visitExpressionList: self
]

{ #category : #accessing }
ASTCExpressionList >> addExpression: anExpression [
	anExpression parent: self.
	expressions add: anExpression
]

{ #category : #accessing }
ASTCExpressionList >> expressions [
	^ expressions
]

{ #category : #accessing }
ASTCExpressionList >> expressions: someExpressions [
	someExpressions do: [ :each | each parent: self ].
	expressions := someExpressions
]

{ #category : #accessing }
ASTCExpressionList >> initialize [
	expressions := OrderedCollection new
]

{ #category : #testing }
ASTCExpressionList >> isExpressionList [
	^ true
]
