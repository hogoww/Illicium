Class {
	#name : #ASTCLiteralTranslatorTest,
	#superclass : #ASTCNodeTranslatorTest,
	#category : #'ASTC-Translation-Tests-Translators'
}

{ #category : #tests }
ASTCLiteralTranslatorTest >> testTranslationSmallIntegerLiteral [
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