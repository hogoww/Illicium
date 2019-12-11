Class {
	#name : #ASTCExpressionTest,
	#superclass : #TestCase,
	#category : #'ASTC-Gen-Tests'
}

{ #category : #tests }
ASTCExpressionTest >> testAddition [
	| operator node |
	operator := (ASTCIdentifier new id: #a) + (ASTCIdentifier new id: #b).
	
	self assert: operator isAdditionOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testAnd [
	| operator node |
	operator := (ASTCIdentifier new id: #a) and: (ASTCIdentifier new id: #b).
	
	self assert: operator isAndOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testAssign [
	| operator node |
	operator := (ASTCIdentifier new id: #a) assign: (ASTCLiteral new value: 1).
	
	self assert: operator isAssignmentOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isLiteral.
	self assert: node value equals: 1
]

{ #category : #tests }
ASTCExpressionTest >> testCastTo [
	| operator node |
	operator := (ASTCIdentifier new id: #a) castTo: ASTCSmallInteger new asASTCType.
	
	self assert: operator isCastOperator.
	
	node := operator type.
	self assert: node isType.
	self assert: node type equals: ASTCSmallInteger asTypeReification.
	
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	

]

{ #category : #tests }
ASTCExpressionTest >> testEquals [
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

{ #category : #tests }
ASTCExpressionTest >> testNot [
	| operator node |
	operator := (ASTCIdentifier new id: #a) not.
	
	self assert: operator isLogicalNotOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
]

{ #category : #tests }
ASTCExpressionTest >> testOr [
	| operator node |
	operator := (ASTCIdentifier new id: #a) or: (ASTCIdentifier new id: #b).
	
	self assert: operator isOrOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]
