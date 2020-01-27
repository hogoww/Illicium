Class {
	#name : #ASTCIndexerOperatorTest,
	#superclass : #TestCase,
	#category : #'ASTC-Core-Tests'
}

{ #category : #tests }
ASTCIndexerOperatorTest >> testAssign [
	| operator node |
	operator := ((ASTCIdentifier new id: #a) indexAt: (ASTCIdentifier new id: #c)) assign: (ASTCLiteral new value: 1).
	
	operator debugASTCStructure.
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

{ #category : #tests }
ASTCIndexerOperatorTest >> testIndexAt [
	| operator node |
	operator := (ASTCIdentifier new id: #a) indexAt: (ASTCIdentifier new id: #c).
	
	operator debugASTCStructure.
	self assert: operator isIndexerOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator operands at: 2.
	self assert: node isIdentifier.
	self assert: node id equals: #c.
]
