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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 1.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 1.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 1.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 2.
	
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
	self assert: operator operands size equals: 2.
	
	node := (operator operands at: 1).
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := (operator operands at: 2).
	self assert: node isIdentifier.
	self assert: node id equals: #b
]
