Class {
	#name : #ASTCObjectTest,
	#superclass : #ASTCMessageNodeTranslatorTest,
	#category : #'ASTC-Translation-Tests-Translators'
}

{ #category : #tests }
ASTCObjectTest >> testEqual [
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