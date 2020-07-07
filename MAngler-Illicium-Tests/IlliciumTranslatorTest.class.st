Class {
	#name : #IlliciumTranslatorTest,
	#superclass : #FAMessageNodeTranslatorTest,
	#category : #'MAngler-Illicium-Tests-TranslatorTest'
}

{ #category : #tests }
IlliciumTranslatorTest >> aMethod [
	^ 1 = 2 ifTrue:[ 1 ] ifFalse:[ 2 ]
]

{ #category : #tests }
IlliciumTranslatorTest >> testTranslateExpression [
	| astC expectedC |
	astC := (MAIlliciumTranslator translateExpression: '1 = 2 ifTrue:[ 1 ] ifFalse:[ 2 ]')
		body statements first expression.
		
	expectedC := ASTCTernaryConditionalOperator new 
		condition: (ASTCEqualityOperator new
			leftOperand: (ASTCLiteral value: 1);
			rightOperand: (ASTCLiteral value: 2);
			yourself);
		then: (ASTCLiteral value: 1);
		else: (ASTCLiteral value: 2);
		yourself.	
	
	astC debugASTCStructure.
	self assert: astC equals: expectedC.
]

{ #category : #tests }
IlliciumTranslatorTest >> testTranslateMethod [
	| astC expectedC |
	astC := (MAIlliciumTranslator translateMethod: self class >> #aMethod)
		body statements first expression.
		
	expectedC := ASTCTernaryConditionalOperator new 
		condition: (ASTCEqualityOperator new
			leftOperand: (ASTCLiteral value: 1);
			rightOperand: (ASTCLiteral value: 2);
			yourself);
		then: (ASTCLiteral value: 1);
		else: (ASTCLiteral value: 2);
		yourself.	
	
	astC debugASTCStructure.
	self assert: astC equals: expectedC.
]
