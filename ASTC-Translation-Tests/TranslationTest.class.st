Class {
	#name : #TranslationTest,
	#superclass : #TestCase,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #tests }
TranslationTest >> testASTCIdentifier [
	| astPharo astC expectedC |
	astPharo := RBParser parseExpression: 'c'.
	astC := ASTCTranslator translateExpression: astPharo.
	
	expectedC := ASTCIdentifier new
		id: #c;
		yourself.
	
	self assert: astC isIdentifier.
	self assert: astC id equals: #c.
	self assert: astC equals: expectedC.

	astC debugASTCStructure.
	expectedC debugASTCStructure.
]

{ #category : #tests }
TranslationTest >> testASTCIf [
	| astC expectedC |
	astC := ASTCTranslator translateExpression: '1=2 ifTrue:[1] ifFalse:[2]'.
	
	expectedC := ASTCIf new 
		condition: (ASTCOperator new
			symbol: '==';
			addOperand: (ASTCLiteral value: 1);
			addOperand: (ASTCLiteral value: 2);
			yourself);
		then:(ASTCBlock new
			add: (ASTCLiteral value: 1) asStatement;
			yourself);
		else:(ASTCBlock new
			add: (ASTCLiteral value: 2) asStatement;
			yourself);
		yourself.	
	
	astC debugASTCStructure.
	self assert: (astC statements at: 1) equals: expectedC.
]

{ #category : #tests }
TranslationTest >> testASTCOperatorBinary [
	| astC expectedC|
	astC := (ASTCTranslator translateExpression: '1=6') statements at: 1.
	
	expectedC := ASTCOperator new
		symbol: '==';
		addOperand: (ASTCLiteral value: 1);
		addOperand: (ASTCLiteral value: 6);
		yourself.
	
	self assert: astC isExpressionStatement.
	self assert: astC expression isOperator.
	self assert: astC expression symbol equals: '=='.
	self assert: astC expression operands first value value equals: 1.
	self assert: astC expression operands second value value equals: 6.
	self assert: astC expression equals: expectedC.
]

{ #category : #tests }
TranslationTest >> testASTCSmallIntegerIsLiteral [
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
