Class {
	#name : #FALiteralTranslatorTest,
	#superclass : #FANodeTranslatorTest,
	#category : #'FAngler-Core-Tests'
}

{ #category : #tests }
FALiteralTranslatorTest >> testTranslationSmallIntegerLiteral [
	| astC |
	
	astC := ((MAIlliciumTranslator translateExpression: '5') body statements at: 1).
	
	self assert: astC expression isLiteral.
	self assert: astC expression value equals: 5.
	self assert: astC expression equals: 
		(ASTCLiteral new value: 5; yourself).
]
