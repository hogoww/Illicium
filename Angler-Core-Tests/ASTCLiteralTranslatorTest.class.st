Class {
	#name : #ASTCLiteralTranslatorTest,
	#superclass : #ASTCNodeTranslatorTest,
	#category : #'Angler-Core-Tests-translators-nodes'
}

{ #category : #tests }
ASTCLiteralTranslatorTest >> testTranslationSmallIntegerLiteral [
	| astC |
	
	astC := (ASTCTranslator translateExpression: '5') statements at: 1.
	
	self assert: astC isExpressionStatement.
	self assert: astC expression isLiteral.
	self assert: astC expression value equals: 5.
	self assert: astC expression equals: 
		(ASTCLiteral new value: 5; yourself).
]
