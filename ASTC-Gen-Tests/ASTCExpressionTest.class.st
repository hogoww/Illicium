Class {
	#name : #ASTCExpressionTest,
	#superclass : #TestCase,
	#category : #'ASTC-Gen-Tests'
}

{ #category : #tests }
ASTCExpressionTest >> testAddition [
	| operator node |
	operator := (ASTCIdentifier new id: #a) + (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
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
	operator := (ASTCIdentifier new id: #a) && (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
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
	
	operator debugASTCStructure.
	self assert: operator isAssignmentOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isLiteral.
	self assert: node value equals: 1
]

{ #category : #tests }
ASTCExpressionTest >> testBitAnd [
	| operator node |
	operator := (ASTCIdentifier new id: #a) bitAnd: (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isBitwiseAndOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testCastTo [
	| operator node |
	operator := (ASTCIdentifier new id: #a) castTo: ASTCSmallInteger asASTCType.
	
	operator debugASTCStructure.
	self assert: operator isCastOperator.
	
	node := operator type.
	self assert: node isType.
	self assert: node type equals: ASTCSmallInteger asTypeReification.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
]

{ #category : #tests }
ASTCExpressionTest >> testDivision [
	| operator node |
	operator := (ASTCIdentifier new id: #a) / (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isDivisionOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testEquals [
	| operator node |
	operator := (ASTCIdentifier new id: #a) equals: (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isEqualityOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testGreater [
	| operator node |
	operator := (ASTCIdentifier new id: #a) > (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isGreaterOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testGreaterOrEqual [
	| operator node |
	operator := (ASTCIdentifier new id: #a) >= (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isGreaterOrEqualOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testIndexer [
	| operator node |
	operator := (ASTCIdentifier new id: #a) indexAt: (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isIndexerOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testLesser [
	| operator node |
	operator := (ASTCIdentifier new id: #a) < (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isLesserOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testLesserOrEqual [
	| operator node |
	operator := (ASTCIdentifier new id: #a) <= (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isLesserOrEqualOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testModulo [
	| operator node |
	operator := (ASTCIdentifier new id: #a) % (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isModuloOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testMultiplication [
	| operator node |
	operator := (ASTCIdentifier new id: #a) * (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isMultiplicationOperator.
	
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
	
	operator debugASTCStructure.
	self assert: operator isLogicalNotOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
]

{ #category : #tests }
ASTCExpressionTest >> testNotEquals [
	| operator node |
	operator := (ASTCIdentifier new id: #a) notEquals: (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isInequalityOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testOr [
	| operator node |
	operator := (ASTCIdentifier new id: #a) || (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isOrOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testPreIncr [
	| operator node |
	operator := (ASTCIdentifier new id: #a) preIncr.
	
	operator debugASTCStructure.
	self assert: operator isPreIncrementOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
]

{ #category : #tests }
ASTCExpressionTest >> testStructAccessPointer [
	| operator node |
	operator := (ASTCIdentifier new id: #a) -> (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isStructAccessPointerOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #test }
ASTCExpressionTest >> testStructStaticAccess [
	| operator node |
	operator := (ASTCIdentifier new id: #a) structStaticAccess: (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isStructAccessStaticOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testSubtraction [
	| operator node |
	operator := (ASTCIdentifier new id: #a) - (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isSubtractionOperator.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]
