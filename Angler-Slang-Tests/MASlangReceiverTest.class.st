Class {
	#name : #MASlangReceiverTest,
	#superclass : #FAMessageNodeTranslatorTest,
	#category : #'Angler-Slang-Tests-analysis-tests'
}

{ #category : #tests }
MASlangReceiverTest >> addType: aSymbol to: aNode [ 
	aNode propertyAt: FATypeAnnotator property
		put: aSymbol -> 'Generaed, no Phineas Type'
]

{ #category : #tests }
MASlangReceiverTest >> setUp [
	"Overide since we're working on slang"
	methodTranslator := MASlangTranslator new classTranslator methodTranslator.
]

{ #category : #tests }
MASlangReceiverTest >> testIfNil [
	"Note: exactly the same test as ASTCSmallIntegerTest"
	| messageNode ifNode expectedC |
	messageNode := RBParser parseExpression: '1 ifNil: [ 2 ]'.
	"Manual typing"
	self addType: #int to: messageNode.
	self addType: #int to: messageNode receiver.
"	self addType: BlockClosure to: messageNode arguments first." "does not seem needed"
	self addType: #int to: messageNode arguments first statements first.
	
	"Manual declaration"
	self addDeclarationProperty: OrderedCollection new to: messageNode arguments first body.
	
	ifNode := messageNode acceptVisitor: methodTranslator.
	
	expectedC := (ASTCIf new
		condition: (ASTCLogicalNotOperator new
			operand: (ASTCLiteral value: 1);
			yourself);
		then: 
		(ASTCBlock new
			addStatement: (ASTCLiteral value: 2) asStatement;
			yourself)).
	
	self assert: ifNode isIf.
	self assert: ifNode condition isLogicalNotOperator.
	self deny: ifNode condition isStatement.
	self assert: ifNode condition operand isLiteral.
	self assert: ifNode condition operand value equals: 1.
	self assert: ifNode then isBlock.
	self assert: (ifNode then statements at: 1) isExpressionStatement.
	self assert: (ifNode then statements at: 1) expression isLiteral.
	self assert: (ifNode then statements at: 1) expression value equals: 2.
	self assert: ifNode equals: expectedC.

	ifNode debugASTCStructure.
	expectedC debugASTCStructure.
]

{ #category : #tests }
MASlangReceiverTest >> testMoins [
	"Note: exactly the same test as ASTCSmallIntegerTest, except for typing"
	| messageNode operator expectedC |
	messageNode := RBParser parseExpression: '1 - 2'.
	"Manual typing"
	self addType: #int to: messageNode.
	self addType: #int to: messageNode receiver.
	self addType: #int to: messageNode arguments first.
	
	operator := messageNode acceptVisitor: methodTranslator.
	
	expectedC := (ASTCLiteral value: 1) - (ASTCLiteral value: 2).
	
	self assert: operator isSubtractionOperator.
	self assert: operator leftOperand isLiteral.
	self assert: operator leftOperand value equals: 1.
	self assert: operator rightOperand isLiteral.
	self assert: operator rightOperand value equals: 2.
	self assert: operator equals: expectedC.

	operator debugASTCStructure.
	expectedC debugASTCStructure.
]

{ #category : #tests }
MASlangReceiverTest >> testPlus [
	"Note: exactly the same test as ASTCSmallIntegerTest, except for typing"
	| messageNode operator expectedC |
	messageNode := RBParser parseExpression: '1 + 2'.
	"Manual typing"
	self addType: #int to: messageNode.
	self addType: #int to: messageNode receiver.
	self addType: #int to: messageNode arguments first.
	
	operator := messageNode acceptVisitor: methodTranslator.
	
	expectedC := (ASTCLiteral value: 1) 
		+ (ASTCLiteral value: 2).
	
	self assert: operator isAdditionOperator.
	self assert: operator leftOperand isLiteral.
	self assert: operator leftOperand value equals: 1.
	self assert: operator rightOperand isLiteral.
	self assert: operator rightOperand value equals: 2.
	self assert: operator equals: expectedC.

	operator debugASTCStructure.
	expectedC debugASTCStructure.
]
