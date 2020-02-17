Class {
	#name : #ASTCObjectTest,
	#superclass : #ASTCMessageNodeTranslatorTest,
	#category : #'Angler-Illicium-tests'
}

{ #category : #tests }
ASTCObjectTest >> testEqual [
	| astC expectedC|
	astC := (ASTCTranslator translateExpression: '1 = 6') statements at: 1.
	
	expectedC := ASTCEqualityOperator new
		leftOperand: (ASTCLiteral value: 1);
		rightOperand: (ASTCLiteral value: 6);
		yourself.
	
	self assert: astC isExpressionStatement.
	self assert: astC expression isOperator.
	self assert: astC expression leftOperand value equals: 1.
	self assert: astC expression rightOperand value equals: 6.
	self assert: astC expression equals: expectedC.
]
