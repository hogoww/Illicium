Class {
	#name : #IlliciumObjectTest,
	#superclass : #FAMessageNodeTranslatorTest,
	#category : #'MAngler-Illicium-Tests-NodesTests'
}

{ #category : #tests }
IlliciumObjectTest >> testEqual [
	| astC expectedC|
	astC := (MAIlliciumTranslator translateExpression: '1 = 6') body statements first expression.
	
	expectedC := ASTCEqualityOperator new
		leftOperand: (ASTCLiteral value: 1);
		rightOperand: (ASTCLiteral value: 6);
		yourself.
	
	self assert: astC isOperator.
	self assert: astC leftOperand value equals: 1.
	self assert: astC rightOperand value equals: 6.
	self assert: astC equals: expectedC.
]
