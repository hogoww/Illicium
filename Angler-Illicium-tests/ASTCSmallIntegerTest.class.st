Class {
	#name : #ASTCSmallIntegerTest,
	#superclass : #FAMessageNodeTranslatorTest,
	#category : #'Angler-Illicium-tests'
}

{ #category : #tests }
ASTCSmallIntegerTest >> testMoins [
	| messageNode operator expectedC |
	messageNode := RBParser parseExpression: '1 - 2'.
	"Manual typing"
	self addType: SmallInteger to: messageNode.
	self addType: SmallInteger to: messageNode receiver.
	self addType: SmallInteger to: messageNode arguments first.
	
	operator := messageNode acceptVisitor: methodTranslator.
	
	expectedC := (ASTCLiteral value: 1) - (ASTCLiteral value: 2).
	
	self assert: operator isSubtractionOperator.
	self assert: operator leftOperand isLiteral.
	self assert: operator leftOperand value equals: 1.
	self assert: operator rightOperand isLiteral.
	self assert: operator rightOperand value equals: 2.
	self assert: operator equals: expectedC.

	operator debugASTCStructure.
	expectedC debugASTCStructure.
]

{ #category : #tests }
ASTCSmallIntegerTest >> testPlus [
	| messageNode operator expectedC |
	messageNode := RBParser parseExpression: '1 + 2'.
	"Manual typing"
	self addType: SmallInteger to: messageNode.
	self addType: SmallInteger to: messageNode receiver.
	self addType: SmallInteger to: messageNode arguments first.
	
	operator := messageNode acceptVisitor: methodTranslator.
	
	expectedC := (ASTCLiteral value: 1) + (ASTCLiteral value: 2).
	
	self assert: operator isAdditionOperator.
	self assert: operator leftOperand isLiteral.
	self assert: operator leftOperand value equals: 1.
	self assert: operator rightOperand isLiteral.
	self assert: operator rightOperand value equals: 2.
	self assert: operator equals: expectedC.
	
	operator debugASTCStructure.
	expectedC debugASTCStructure.
]
