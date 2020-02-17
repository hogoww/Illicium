Class {
	#name : #ASTCExpressionTest,
	#superclass : #TestCase,
	#category : #'ASTC-Core-Tests-shortcuts'
}

{ #category : #tests }
ASTCExpressionTest >> testAddition [
	| operator node |
	operator := (ASTCIdentifier new id: #a) + (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isAdditionOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testAnd [
	| operator node |
	operator := (ASTCIdentifier new id: #a) && (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isAndOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testAssign [
	| operator node |
	operator := (ASTCIdentifier new id: #a) assign: (ASTCLiteral new value: 1).
	
	operator debugASTCStructure.
	self assert: operator isAssignmentOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isLiteral.
	self assert: node value equals: 1
]

{ #category : #tests }
ASTCExpressionTest >> testAssignAndAdd [
	| operator node |
	operator := (ASTCIdentifier new id: #a) assignAndAdd: (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isAssignementAdditionOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testBitAnd [
	| operator node |
	operator := (ASTCIdentifier new id: #a) & (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isBitwiseAndOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testBitLeftShift [
	| operator node |
	operator := (ASTCIdentifier new id: #a) << (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isBitLeftShiftOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testBitOr [
	| operator node |
	operator := (ASTCIdentifier new id: #a) | (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isBitwiseOrOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testBitRightShift [
	| operator node |
	operator := (ASTCIdentifier new id: #a) >> (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isBitRightShiftOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testBitXor [
	| operator node |
	operator := (ASTCIdentifier new id: #a) bitXor: (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isBitwiseXorOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testCastTo [
	| operator node |
	operator := (ASTCIdentifier new id: #a) castTo: (ASTCType new type: SmallInteger asTypeReification).
	
	operator debugASTCStructure.
	self assert: operator isCastOperator.
	
	node := operator type.
	self assert: node isType.
	self assert: node type equals: SmallInteger asTypeReification.
	
	node := operator operand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
]

{ #category : #tests }
ASTCExpressionTest >> testDivision [
	| operator node |
	operator := (ASTCIdentifier new id: #a) / (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isDivisionOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testEquals [
	| operator node |
	operator := (ASTCIdentifier new id: #a) equals: (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isEqualityOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testGreater [
	| operator node |
	operator := (ASTCIdentifier new id: #a) > (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isGreaterOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testGreaterOrEqual [
	| operator node |
	operator := (ASTCIdentifier new id: #a) >= (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isGreaterOrEqualOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testIndexer [
	| operator node |
	operator := (ASTCIdentifier new id: #a) indexAt: (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isIndexerOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testLesser [
	| operator node |
	operator := (ASTCIdentifier new id: #a) < (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isLesserOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testLesserOrEqual [
	| operator node |
	operator := (ASTCIdentifier new id: #a) <= (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isLesserOrEqualOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testModulo [
	| operator node |
	operator := (ASTCIdentifier new id: #a) % (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isModuloOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testMultiplication [
	| operator node |
	operator := (ASTCIdentifier new id: #a) * (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isMultiplicationOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testNegated [
	| operator node |
	operator := (ASTCIdentifier new id: #a) negated.
	
	operator debugASTCStructure.
	self assert: operator isNegationOperator.
	
	node := operator operand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
]

{ #category : #tests }
ASTCExpressionTest >> testNegatedNegation [
	| identifier |
	"double negation should be removed"
	identifier := (ASTCIdentifier new id: #a) negated negated.
	
	identifier debugASTCStructure.
	self assert: identifier isIdentifier.
	self assert: identifier id equals: #a.
]

{ #category : #tests }
ASTCExpressionTest >> testNot [
	| operator node |
	operator := (ASTCIdentifier new id: #a) not.
	
	operator debugASTCStructure.
	self assert: operator isLogicalNotOperator.
	
	node := operator operand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
]

{ #category : #tests }
ASTCExpressionTest >> testNotEquals [
	| operator node |
	operator := (ASTCIdentifier new id: #a) notEquals: (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isInequalityOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testOr [
	| operator node |
	operator := (ASTCIdentifier new id: #a) || (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isOrOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testPreIncr [
	| operator node |
	operator := (ASTCIdentifier new id: #a) preIncr.
	
	operator debugASTCStructure.
	self assert: operator isPreIncrementOperator.
	
	node := operator operand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
]

{ #category : #tests }
ASTCExpressionTest >> testStructAccessPointer [
	| operator node |
	operator := (ASTCIdentifier new id: #a) -> (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isStructAccessPointerOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #test }
ASTCExpressionTest >> testStructStaticAccess [
	| operator node |
	operator := (ASTCIdentifier new id: #a) structStaticAccess: (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isStructAccessStaticOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testSubtraction [
	| operator node |
	operator := (ASTCIdentifier new id: #a) - (ASTCIdentifier new id: #b).
	
	operator debugASTCStructure.
	self assert: operator isSubtractionOperator.
	
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #b
]

{ #category : #tests }
ASTCExpressionTest >> testThenElse [
	| operator node |
	operator := (ASTCIdentifier new id: #a) then: (ASTCIdentifier new id: #b) asStatement else: (ASTCIdentifier new id: #c) asStatement.
	
	operator debugASTCStructure.
	self assert: operator isIf.
	
	node := operator condition.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator then.
	self assert: node isExpressionStatement.
	self assert: node expression isIdentifier.
	self assert: node expression id equals: #b.
	
	node := operator else.
	self assert: node isExpressionStatement.
	self assert: node expression isIdentifier.
	self assert: node expression id equals: #c
]

{ #category : #tests }
ASTCExpressionTest >> testasAddressOf [
	| operator node |
	operator := (ASTCIdentifier new id: #a) asAddressOf.
	
	operator debugASTCStructure.
	self assert: operator isAddressOfOperator.
	
	node := operator operand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
]
