Class {
	#name : #ASTCIndexerOperatorTest,
	#superclass : #TestCase,
	#category : #'ASTC-Gen-Tests'
}

{ #category : #tests }
ASTCIndexerOperatorTest >> testAssign [
	| operator node |
	operator := ((ASTCIdentifier new id: #a) indexAt: (ASTCIdentifier new id: #c)) assign: (ASTCLiteral new value: 1).
	
	self assert: operator isAssignmentOperator.
	
	node := (operator operands at: 1).
	self assert: node isIndexerOperator.

		node := (operator operands at: 1) operands at: 1.
		self assert: node isIdentifier.
		self assert: node id equals: #a.
	
		node := (operator operands at: 1) operands at: 2.
		self assert: node isIdentifier.
		self assert: node id equals: #c.
	
	node := (operator operands at: 2).
	self assert: node isLiteral.
	self assert: node value equals: 1
]
