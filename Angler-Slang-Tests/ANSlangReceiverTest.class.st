Class {
	#name : #ANSlangReceiverTest,
	#superclass : #ASTCMessageNodeTranslatorTest,
	#category : #'Angler-Slang-Tests-analysis-tests'
}

{ #category : #tests }
ANSlangReceiverTest >> addType: aSymbol to: aNode [ 
	aNode propertyAt: ASTCTypeAnnotator property
		put: aSymbol -> 'Generaed, no Phineas Type'
]

{ #category : #tests }
ANSlangReceiverTest >> setUp [
	"Overide since we're working on slang"
	methodTranslator := ANSlangTranslator new classTranslator methodTranslator.
]

{ #category : #tests }
ANSlangReceiverTest >> testIfNil [
	"Note: exactly the same test as ASTCSmallIntegerTest"
	| messageNode astC expectedC |
	messageNode := RBParser parseExpression: '1 ifNil: [ 2 ]'.
	"Manual typing"
	self addType: #int to: messageNode.
	self addType: #int to: messageNode receiver.
"	self addType: BlockClosure to: messageNode arguments first." "does not seem needed"
	self addType: #int to: messageNode arguments first statements first.
	
	"Manual declaration"
	self addDeclarationProperty: OrderedCollection new to: messageNode arguments first body.
	
	astC := messageNode acceptVisitor: methodTranslator.
	
	expectedC := (ASTCIf new
		condition: (ASTCLogicalNotOperator new
			addOperand: (ASTCLiteral value: 1);
			yourself);
		then: 
		(ASTCBlock new
			addStatement: (ASTCLiteral value: 2) asStatement;
			yourself)).
	
	self assert: astC isIf.
	self assert: astC condition isLogicalNotOperator.
	self deny: astC condition isStatement.
	self assert: (astC condition operands at: 1) isLiteral.
	self assert: (astC condition operands at: 1) value equals: 1.
	self assert: astC then isBlock.
	self assert: (astC then statements at: 1) isExpressionStatement.
	self assert: (astC then statements at: 1) expression isLiteral.
	self assert: (astC then statements at: 1) expression value equals: 2.
	self assert: astC equals: expectedC.

	astC debugASTCStructure.
	expectedC debugASTCStructure.
]

{ #category : #tests }
ANSlangReceiverTest >> testMoins [
	"Note: exactly the same test as ASTCSmallIntegerTest, except for typing"
	| messageNode astC expectedC |
	messageNode := RBParser parseExpression: '1 - 2'.
	"Manual typing"
	self addType: #int to: messageNode.
	self addType: #int to: messageNode receiver.
	self addType: #int to: messageNode arguments first.
	
	astC := messageNode acceptVisitor: methodTranslator.
	
	expectedC := (ASTCLiteral value: 1) - (ASTCLiteral value: 2).
	
	self assert: astC isSubtractionOperator.
	self assert: (astC operands at: 1) isLiteral.
	self assert: (astC operands at: 1) value equals: 1.
	self assert: (astC operands at: 2) isLiteral.
	self assert: (astC operands at: 2) value equals: 2.
	self assert: astC equals: expectedC.

	astC debugASTCStructure.
	expectedC debugASTCStructure.
]

{ #category : #tests }
ANSlangReceiverTest >> testPlus [
	"Note: exactly the same test as ASTCSmallIntegerTest, except for typing"
	| messageNode astC expectedC |
	messageNode := RBParser parseExpression: '1 + 2'.
	"Manual typing"
	self addType: #int to: messageNode.
	self addType: #int to: messageNode receiver.
	self addType: #int to: messageNode arguments first.
	
	astC := messageNode acceptVisitor: methodTranslator.
	
	expectedC := (ASTCLiteral value: 1) 
		+ (ASTCLiteral value: 2).
	
	self assert: astC isAdditionOperator.
	self assert: (astC operands at: 1) isLiteral.
	self assert: (astC operands at: 1) value equals: 1.
	self assert: (astC operands at: 2) isLiteral.
	self assert: (astC operands at: 2) value equals: 2.
	self assert: astC equals: expectedC.

	astC debugASTCStructure.
	expectedC debugASTCStructure.
]
