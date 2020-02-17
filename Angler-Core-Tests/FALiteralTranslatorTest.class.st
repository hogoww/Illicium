Class {
	#name : #FALiteralTranslatorTest,
	#superclass : #FANodeTranslatorTest,
	#category : #'Angler-Core-Tests'
}

{ #category : #tests }
FALiteralTranslatorTest >> testTranslationSmallIntegerLiteral [
	| astC |
	
	astC := (FATranslator translateExpression: '5') statements at: 1.
	
	self assert: astC isExpressionStatement.
	self assert: astC expression isLiteral.
	self assert: astC expression value equals: 5.
	self assert: astC expression equals: 
		(ASTCLiteral new value: 5; yourself).
]
