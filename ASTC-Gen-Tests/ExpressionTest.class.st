Class {
	#name : #ExpressionTest,
	#superclass : #TestCase,
	#category : #'ASTC-Gen-Tests'
}

{ #category : #tests }
ExpressionTest >> testEquals [
	| operator node |
	operator := (ASTCIdentifier new id: #a) equals: (ASTCIdentifier new id: #b).
	
	self assert: operator isEqualityOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]
