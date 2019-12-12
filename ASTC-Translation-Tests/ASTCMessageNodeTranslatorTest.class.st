Class {
	#name : #ASTCMessageNodeTranslatorTest,
	#superclass : #ASTCNodeTranslatorTest,
	#category : #'ASTC-Translation-Tests-Translators'
}

{ #category : #accessing }
ASTCMessageNodeTranslatorTest class >> testedClass [
	^ self subclassResponsibility
]

{ #category : #tests }
ASTCMessageNodeTranslatorTest >> testASTCOperatorBinary [
	| astC expectedC|
	astC := (ASTCTranslator translateExpression: '1 = 6') statements at: 1.
	
	expectedC := ASTCEqualityOperator new
		addOperand: (ASTCLiteral value: 1);
		addOperand: (ASTCLiteral value: 6);
		yourself.
	
	self assert: astC isExpressionStatement.
	self assert: astC expression isOperator.
	self assert: astC expression operands first value value equals: 1.
	self assert: astC expression operands second value value equals: 6.
	self assert: astC expression equals: expectedC.
]

{ #category : #tests }
ASTCMessageNodeTranslatorTest >> testASTCSmallIntegerIsLiteral [
	| astC |
	
	astC := (ASTCTranslator translateExpression: '5') statements at: 1.
	
	self assert: astC isExpressionStatement.
	self assert: astC expression isLiteral.
	self assert: astC expression value value equals: 5.
	self assert: astC expression equals: 
		(ASTCLiteral new value:
			(ASTCSmallInteger new value: 5 ; yourself) ;
		yourself).
]

{ #category : #tests }
ASTCMessageNodeTranslatorTest >> testSmallIntegerAddition [
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
