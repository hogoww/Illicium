Class {
	#name : #IlliciumBooleanTest,
	#superclass : #FAMessageNodeTranslatorTest,
	#category : #'MAngler-Illicium-Tests-NodesTests'
}

{ #category : #accessing }
IlliciumBooleanTest class >> testedClass [
	^ Boolean
]

{ #category : #tests }
IlliciumBooleanTest >> testIfTrue [
	| astC expectedC messageNode |
	messageNode := RBParser parseExpression: 'true ifTrue:[ 1 ]'.
	
	"Manual Typing"
	self addType: SmallInteger to: messageNode.
	self addType: Boolean to: messageNode receiver.
	self addType: BlockClosure to: messageNode arguments first.
	self addType: SmallInteger to: messageNode arguments first statements first.
	
	"Manual declaration"
	self addDeclarationProperty: OrderedCollection new to: messageNode arguments first body.
	
	astC := messageNode acceptVisitor: methodTranslator.
	
	expectedC := ASTCIf new 
		condition: (ASTCLiteral value: 1);
		then: (ASTCBlock new
			addStatement: (ASTCLiteral value: 1) asStatement;
			yourself);
		else: ASTCBlock new
		yourself.	
	
	"receiver should always be the same type as the one we're currently testing 
	this should always be the first assertion"
	self assertTypeOf: messageNode receiver is: self class testedClass.
	
	self shouldnt: [ astC debugASTCStructure ] raise: AssertionFailure.
	self shouldnt: [ expectedC debugASTCStructure ] raise: AssertionFailure.
	self assert: astC equals: expectedC.
]

{ #category : #tests }
IlliciumBooleanTest >> testIfTrueIfFalse [
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
