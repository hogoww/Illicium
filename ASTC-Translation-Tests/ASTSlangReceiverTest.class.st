Class {
	#name : #ASTSlangReceiverTest,
	#superclass : #ASTCMessageNodeTranslatorTest,
	#category : #'ASTC-Translation-Tests-Translators'
}

{ #category : #tests }
ASTSlangReceiverTest >> testIfNil [
	"Note: exactly the same test as ASTCSmallIntegerTest"
	| messageNode astC expectedC |
	messageNode := RBParser parseExpression: '1 ifNil: [ 2 ]'.
	"Manual typing"
	self addType: SmallInteger to: messageNode.
	self addType: SmallInteger to: messageNode receiver.
	self addType: BlockClosure to: messageNode arguments first.
	self addType: SmallInteger to: messageNode arguments first statements first.
	
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
	self assert: (astC condition operands at: 1) equals: 1.
	self assert: astC then isBlock.
	self assert: (astC then statements at: 1) isExpressionStatement.
	self assert: (astC then statements at: 1) expression isLiteral.
	self assert: (astC then statements at: 1) expression equals: 2.
	self assert: astC equals: expectedC.

	astC debugASTCStructure.
	expectedC debugASTCStructure.
]

{ #category : #tests }
ASTSlangReceiverTest >> testPlus [
	"Note: exactly the same test as ASTCSmallIntegerTest"
	| messageNode astC expectedC |
	messageNode := RBParser parseExpression: '1 + 2'.
	"Manual typing"
	self addType: SmallInteger to: messageNode.
	self addType: SmallInteger to: messageNode receiver.
	self addType: SmallInteger to: messageNode arguments first.
	
	astC := messageNode acceptVisitor: methodTranslator.
	
	expectedC := (ASTCLiteral value: 1) + (ASTCLiteral value: 2).
	
	self assert: astC isAdditionOperator.
	self assert: (astC operands at: 1) isLiteral.
	self assert: (astC operands at: 1) value equals: 1.
	self assert: (astC operands at: 2) isLiteral.
	self assert: (astC operands at: 2) value equals: 2.
	self assert: astC equals: expectedC.

	astC debugASTCStructure.
	expectedC debugASTCStructure.
]
