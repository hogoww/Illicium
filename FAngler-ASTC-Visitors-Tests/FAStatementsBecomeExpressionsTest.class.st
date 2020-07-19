Class {
	#name : #FAStatementsBecomeExpressionsTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor'
	],
	#category : #'FAngler-ASTC-Visitors-Tests-Modification'
}

{ #category : #running }
FAStatementsBecomeExpressionsTest >> setUp [
	super setUp.
	visitor := FAStatementsBecomeExpressions new
]

{ #category : #tests }
FAStatementsBecomeExpressionsTest >> testBlockBecomesStatementListInAssignment [
	| node expressionList |
	node :=
		(ASTCIdentifier id: #a)
			assign:
				(ASTCBlock new
					addStatement: (ASTCLiteral value: true) asStatement;
					addStatement: (ASTCLiteral value: true) asStatement;
					yourself).
	node acceptVisitor: visitor.
	
	self assert: node isAssignmentOperator.
	self assert: node leftOperand isIdentifier.
	
	expressionList := node rightOperand.
	self assert: expressionList isExpressionList.
	self assert: expressionList expressions size equals: 2.
	self assert: expressionList expressions first equals: (ASTCLiteral value: true).
	self assert: expressionList expressions second equals: (ASTCLiteral value: true).
]

{ #category : #tests }
FAStatementsBecomeExpressionsTest >> testBlockWithSingleStatementBecomesExpression [
	| node expression |
	node :=
		(ASTCIdentifier id: #a)
			assign:
				(ASTCBlock new
					addStatement: (ASTCLiteral value: true) asStatement;
					yourself).
	node acceptVisitor: visitor.
	
	self assert: node isAssignmentOperator.
	self assert: node leftOperand isIdentifier.
	
	expression := node rightOperand.
	self assert: expression isExpression.
	self assert: expression equals: (ASTCLiteral value: true).


]

{ #category : #tests }
FAStatementsBecomeExpressionsTest >> testExpressionStatementBecomesExpression [
	| node |
	node :=
		(ASTCIdentifier id: #a)
			assign:
				(ASTCLiteral value: true) asStatement.
	node acceptVisitor: visitor.
	
	self assert: node isAssignmentOperator.
	self assert: node leftOperand isIdentifier.
	self assert: node rightOperand isExpression.
	
]

{ #category : #tests }
FAStatementsBecomeExpressionsTest >> testIfAndInnerIfBecomesTernaryInAssignment [
	| node |
	node :=
		(ASTCIdentifier id: #a)
			assign:
				(ASTCIf new
					condition:(ASTCLiteral value: true);
					then: (ASTCLiteral value: true);
					else: (ASTCIf new
						condition:(ASTCLiteral value: true);
						then: (ASTCLiteral value: true);
						else: (ASTCLiteral value: true);
						yourself);
					yourself).
	node acceptVisitor: visitor.
	
	self assert: node isAssignmentOperator.
	self assert: node leftOperand isIdentifier.
	self assert: node rightOperand isTernaryConditionalOperator.
	
]

{ #category : #tests }
FAStatementsBecomeExpressionsTest >> testIfBecomesTernaryInAssignment [
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
	self assert: node leftOperand isIdentifier.
	self assert: node rightOperand isTernaryConditionalOperator.
	
]

{ #category : #tests }
FAStatementsBecomeExpressionsTest >> testStatementInBinaryOperator [
	| node |
	node :=
		(ASTCIdentifier id: #a) asStatement
			&&
				(ASTCLiteral value: true) asStatement.
				
	node acceptVisitor: visitor.
	
	self assert: node isAndOperator.
	self assert: node leftOperand isExpression.
	self assert: node rightOperand isExpression.
	
]

{ #category : #tests }
FAStatementsBecomeExpressionsTest >> testStatementInFunctionCallBecomesExpression [
	| funCall expression |
	funCall :=
		ASTCFunctionCall new 
			id: #a asCIdentifierNode;
			arguments: { (ASTCLiteral value: true) asStatement };
			yourself.
	funCall acceptVisitor: visitor.
	
	self assert: funCall isFunctionCall.
	self assert: funCall arguments size equals: 1.
	
	expression := funCall arguments first.
	self assert: expression isExpression.
]

{ #category : #tests }
FAStatementsBecomeExpressionsTest >> testStatementInIfConditionShouldBecomeExpression [
	| ifNode then else |
	ifNode :=
		(ASTCIdentifier id: #a) asStatement 
			then: (ASTCLiteral value: true) asStatement
			else: (ASTCLiteral value: true) asStatement
			yourself.
	ifNode acceptVisitor: visitor.
	
	self assert: ifNode isIf.
	self assert: ifNode condition isIdentifier.
	
	then := ifNode then.
	self assert: then isExpressionStatement.
	self assert: then expression isLiteral.
	self assert: then expression value equals: true.
	
	else := ifNode else.
	self assert: else isExpressionStatement.
	self assert: else expression isLiteral.
	self assert: else expression value equals: true.
]

{ #category : #tests }
FAStatementsBecomeExpressionsTest >> testStatementInTernaryOperatorCondition [
	| node |
	node := ASTCTernaryConditionalOperator new 
		condition: (ASTCIdentifier new id: #a) asStatement;
		then: (ASTCIdentifier new id: #b) asStatement;
		else: (ASTCIdentifier new id: #c) asStatement;
		yourself.	
	
	node acceptVisitor: visitor.
	
	self assert: node isTernaryConditionalOperator.
	self assert: node condition isExpression.
	self assert: node then isStatement.
	self assert: node else isStatement.
	
]

{ #category : #tests }
FAStatementsBecomeExpressionsTest >> testStatementInUnaryOperator [
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
	self assert: node leftOperand isIdentifier.
	self assert: node rightOperand isTernaryConditionalOperator.
	
]

{ #category : #tests }
FAStatementsBecomeExpressionsTest >> testStatementInsideSwitchCaseBecomesExpression [
	| switchCaseNode |
	switchCaseNode :=
		ASTCSwitchCase new
			expression: (ASTCIdentifier id: #a) asStatement;
			body: ASTCBlock new ;
			yourself.
			
	switchCaseNode acceptVisitor: visitor.
	
	self assert: switchCaseNode isSwitchCase.
	self assert: switchCaseNode expression isIdentifier.
	self assert: switchCaseNode body isBlock.
]
