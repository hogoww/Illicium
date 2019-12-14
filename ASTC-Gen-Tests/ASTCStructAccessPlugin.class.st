Class {
	#name : #ASTCStructAccessPlugin,
	#superclass : #TestCase,
	#category : #'ASTC-Gen-Tests'
}

{ #category : #tests }
ASTCStructAccessPlugin >> testAssign [
	| operator node |
	operator := ((ASTCIdentifier new id: #a) -> (ASTCIdentifier new id: #c)) assign: (ASTCLiteral new value: 1).
	
	operator debugASTCStructure.
	self assert: operator isAssignmentOperator.
	
	node := (operator operands at: 1).
	self assert: node isStructAccessPointerOperator.

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
ASTCStructAccessPlugin >> testIndex [
	| operator node |
	operator := ((ASTCIdentifier new id: #a) -> (ASTCIdentifier new id: #c)) indexAt: (ASTCLiteral new value: 1).
	
	operator debugASTCStructure.
	self assert: operator isIndexerOperator.
	
	node := (operator operands at: 1).
	self assert: node isStructAccessPointerOperator.

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
