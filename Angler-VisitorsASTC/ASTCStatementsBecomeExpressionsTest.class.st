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
	| node |
	node :=
		(ASTCIdentifier id: #a)
			assign:
				(ASTCBlock new
					addStatement: (ASTCLiteral value: true) asStatement).
	node acceptVisitor: visitor.
	
	self assert: node isAssignmentOperator.
	self assert: node operands first isIdentifier.
	self assert: node operands second isExpressionList.
	
	
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
