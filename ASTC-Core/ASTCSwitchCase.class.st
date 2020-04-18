Class {
	#name : #ASTCSwitchCase,
	#superclass : #ASTCStatement,
	#instVars : [
		'expression',
		'body'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCSwitchCase >> = aSwitchCase [
	super = aSwitchCase
		ifFalse: [ ^ false ].
	expression = aSwitchCase expression
		ifFalse: [ ^ false ].
	body = aSwitchCase body
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCSwitchCase >> acceptVisitor: aVisitor [
	^ aVisitor visitSwitchCase: self
]

{ #category : #accessing }
ASTCSwitchCase >> body [
	^ body
]

{ #category : #accessing }
ASTCSwitchCase >> body: aBody [
	aBody ifNotNil: [ aBody parent: self ].
	body := aBody
]

{ #category : #accessing }
ASTCSwitchCase >> expression [
	^ expression
]

{ #category : #accessing }
ASTCSwitchCase >> expression: anExpression [
	anExpression ifNotNil: [ anExpression parent: self ].
	expression := anExpression
]

{ #category : #testing }
ASTCSwitchCase >> isSwitchCase [
	^ true
]
