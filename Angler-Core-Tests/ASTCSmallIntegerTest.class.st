Class {
	#name : #ASTCSmallIntegerTest,
	#superclass : #ASTCMessageNodeTranslatorTest,
	#category : #'Angler-Core-Tests-Translators'
}

{ #category : #tests }
ASTCSmallIntegerTest >> testMoins [
	| messageNode astC expectedC |
	messageNode := RBParser parseExpression: '1 - 2'.
	"Manual typing"
	self addType: SmallInteger to: messageNode.
	self addType: SmallInteger to: messageNode receiver.
	self addType: SmallInteger to: messageNode arguments first.
	
	astC := messageNode acceptVisitor: methodTranslator.
	
	expectedC := (ASTCLiteral value: 1) - (ASTCLiteral value: 2).
	
	self assert: astC isSubtractionOperator.
	self assert: (astC operands at: 1) isLiteral.
	self assert: (astC operands at: 1) value equals: 1.
	self assert: (astC operands at: 2) isLiteral.
	self assert: (astC operands at: 2) value equals: 2.
	self assert: astC equals: expectedC.

	astC debugASTCStructure.
	expectedC debugASTCStructure.
]

{ #category : #tests }
ASTCSmallIntegerTest >> testPlus [
	| messageNode astC expectedC |
	messageNode := RBParser parseExpression: '1 + 2'.
	"Manual typing"
	self addType: SmallInteger to: messageNode.
	self addType: SmallInteger to: messageNode receiver.
	self addType: SmallInteger to: messageNode arguments first.
	
	astC := messageNode acceptVisitor: methodTranslator.
	
	expectedC := (ASTCLiteral value: 1) + (ASTCLiteral value: 2).
	
	self assert: astC isAdditionOperator.
	self assert: (astC operands at: 1) isLiteral.
	self assert: (astC operands at: 1) value equals: 1.
	self assert: (astC operands at: 2) isLiteral.
	self assert: (astC operands at: 2) value equals: 2.
	self assert: astC equals: expectedC.
	
	astC debugASTCStructure.
	expectedC debugASTCStructure.
]
