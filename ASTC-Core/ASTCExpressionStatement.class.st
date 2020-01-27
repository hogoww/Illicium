Class {
	#name : #ASTCExpressionStatement,
	#superclass : #ASTCStatement,
	#instVars : [
		'expression'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCExpressionStatement >> = anExpressionStatement [
  super = anExpressionStatement ifFalse: [ ^false ].
  expression = anExpressionStatement expression ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCExpressionStatement >> acceptVisitor: aVisitor [
  aVisitor visitExpressionStatement: self
]

{ #category : #accessing }
ASTCExpressionStatement >> expression [
  ^expression
]

{ #category : #accessing }
ASTCExpressionStatement >> expression: anExpression [
  anExpression ifNotNil: [ anExpression parent: self ].
  expression := anExpression
]

{ #category : #testing }
ASTCExpressionStatement >> isExpressionStatement [
  ^true
]