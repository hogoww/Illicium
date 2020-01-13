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
ASTCMessageNodeTranslatorTest >> testASTCEqual [
	| astC expectedC|
	astC := (ASTCTranslator translateExpression: '1 = 6') statements at: 1.
	
	expectedC := ASTCEqualityOperator new
		addOperand: (ASTCLiteral value: (ASTCSmallInteger value: 1));
		addOperand: (ASTCLiteral value: (ASTCSmallInteger value: 6));
		yourself.
	
	self assert: astC isExpressionStatement.
	self assert: astC expression isOperator.
	self assert: astC expression operands first value equals: (ASTCSmallInteger value: 1).
	self assert: astC expression operands second value equals: (ASTCSmallInteger value: 6).
	self assert: astC expression equals: expectedC.
]
