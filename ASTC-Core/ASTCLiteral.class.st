Class {
	#name : #ASTCLiteral,
	#superclass : #ASTCExpression,
	#instVars : [
		'value'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCLiteral >> = aLiteral [
	super = aLiteral
		ifFalse: [ ^ false ].
	value = aLiteral value
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCLiteral >> acceptVisitor: aVisitor [
	aVisitor visitLiteral: self
]

{ #category : #testing }
ASTCLiteral >> isLiteral [
	^ true
]

{ #category : #accessing }
ASTCLiteral >> value [
	^ value
]

{ #category : #accessing }
ASTCLiteral >> value: aValue [
	value := aValue
]
