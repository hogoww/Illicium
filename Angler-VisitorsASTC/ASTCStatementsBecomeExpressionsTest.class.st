Class {
	#name : #ASTCStatementsBecomeExpressionsTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor'
	],
	#category : #'Angler-VisitorsASTC-PrettyPrint'
}

{ #category : #running }
ASTCStatementsBecomeExpressionsTest >> setUp [
	super setUp.
	visitor := ASTCStatementsBecomeExpressions new
]

{ #category : #tests }
ASTCStatementsBecomeExpressionsTest >> testBlockBecomesStatementListInAssignment [
	| node expressionList |
	node :=
		(ASTCIdentifier id: #a)
			assign:
				(ASTCBlock new
					addStatement: (ASTCLiteral value: true) asStatement;
					yourself).
	node acceptVisitor: visitor.
	
	self assert: node isAssignmentOperator.
	self assert: node operands first isIdentifier.
	self assert: node operands second isExpressionList.
	
	expressionList := node operands second.
	self assert: expressionList isExpressionList.
	self assert: expressionList expressions size equals: 1.
	self assert: expressionList expressions first equals: (ASTCLiteral value: true).

]

{ #category : #tests }
ASTCStatementsBecomeExpressionsTest >> testBlockWithReturningStatementMovesAssignementInsideExpressionList [
	| node blockNode assignment resultingNode |
	node :=
		(ASTCIdentifier id: #druss)
			assign:
				(ASTCBlock new 
					addStatement: (ASTCLiteral value: true) asStatement;
					addStatement: (ASTCReturn new expression: (ASTCLiteral value: true); yourself);
					yourself).
	resultingNode := node acceptVisitor: visitor.
	
	self assert: resultingNode isAssignmentOperator.
	self assert: resultingNode operands first isIdentifier.
	
	blockNode := resultingNode operands second.
	self assert: blockNode isExpressionList.
	self assert: blockNode expressions size equals: 2.
	self assert: blockNode expressions first equals: (ASTCLiteral value: true).
	
	assignment := blockNode expressions second.
	self assert: assignment isAssignmentOperator.
	self assert: assignment operands first id equals: #druss.
	self assert: assignment operands second value equals:  (ASTCLiteral value: true) .
	
	
	
]

{ #category : #tests }
ASTCStatementsBecomeExpressionsTest >> testExpressionStatementBecomesExpression [
	| node |
	node :=
		(ASTCIdentifier id: #a)
			assign:
				(ASTCLiteral value: true) asStatement.
	node acceptVisitor: visitor.
	
	self assert: node isAssignmentOperator.
	self assert: node operands first isIdentifier.
	self assert: node operands second isExpression.
	
]

{ #category : #tests }
ASTCStatementsBecomeExpressionsTest >> testIfAndInnerIfBecomesTernaryInAssignment [
	| node |
	node :=
		(ASTCIdentifier id: #a)
			assign:
				(ASTCIf new
					condition:(ASTCLiteral value: true);
					then: (ASTCLiteral value: true) ;
					else: (ASTCIf new
						condition:(ASTCLiteral value: true);
						then: (ASTCLiteral value: true) ;
						else: (ASTCLiteral value: true) ;
						yourself);
					yourself).
	node acceptVisitor: visitor.
	
	self assert: node isAssignmentOperator.
	self assert: node operands first isIdentifier.
	self assert: node operands second isTernaryConditionalOperator.
	
]

{ #category : #tests }
ASTCStatementsBecomeExpressionsTest >> testIfBecomesTernaryInAssignment [
	| node |
	node :=
		(ASTCIdentifier id: #a)
			assign:
				(ASTCIf new
					condition:(ASTCLiteral value: true);
					then: (ASTCLiteral value: true) ;
					else: (ASTCLiteral value: true) ;
					yourself).
	node acceptVisitor: visitor.
	
	self assert: node isAssignmentOperator.
	self assert: node operands first isIdentifier.
	self assert: node operands second isTernaryConditionalOperator.
	
]
