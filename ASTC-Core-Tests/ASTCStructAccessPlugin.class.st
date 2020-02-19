Class {
	#name : #ASTCStructAccessPlugin,
	#superclass : #TestCase,
	#category : #'ASTC-Core-Tests-Shortcuts'
}

{ #category : #tests }
ASTCStructAccessPlugin >> testAssign [
	| operator node |
	operator := ((ASTCIdentifier new id: #a) -> (ASTCIdentifier new id: #c)) assign: (ASTCLiteral new value: 1).
	
	operator debugASTCStructure.
	self assert: operator isAssignmentOperator.
	
	node := operator leftOperand.
	self assert: node isStructAccessPointerOperator.

		node := operator leftOperand leftOperand.
		self assert: node isIdentifier.
		self assert: node id equals: #a.
	
		node := operator leftOperand rightOperand.
		self assert: node isIdentifier.
		self assert: node id equals: #c.
	
	node := operator rightOperand.
	self assert: node isLiteral.
	self assert: node value equals: 1
]

{ #category : #tests }
ASTCStructAccessPlugin >> testIndex [
	| operator node |
	operator := ((ASTCIdentifier new id: #a) -> (ASTCIdentifier new id: #c)) indexAt: (ASTCLiteral new value: 1).
	
	operator debugASTCStructure.
	self assert: operator isIndexerOperator.
	
	node := operator leftOperand.
	self assert: node isStructAccessPointerOperator.

		node := operator leftOperand leftOperand.
		self assert: node isIdentifier.
		self assert: node id equals: #a.
	
		node := operator leftOperand rightOperand.
		self assert: node isIdentifier.
		self assert: node id equals: #c.
	
	node := operator rightOperand.
	self assert: node isLiteral.
	self assert: node value equals: 1
]
