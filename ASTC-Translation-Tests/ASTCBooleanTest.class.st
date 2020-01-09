Class {
	#name : #ASTCBooleanTest,
	#superclass : #ASTCMessageNodeTranslatorTest,
	#category : #'ASTC-Translation-Tests-Translators'
}

{ #category : #accessing }
ASTCBooleanTest class >> testedClass [
	^ Boolean
]

{ #category : #tests }
ASTCBooleanTest >> testASTCIfTrue [
	| astC expectedC messageNode |
	messageNode := RBParser parseExpression: 'true ifTrue:[ 1 ]'.
	
	"Manual Typing"
	self addType: SmallInteger to: messageNode.
	self addType: Boolean to: messageNode receiver.
	self addType: BlockClosure to: messageNode arguments first.
	self addType: SmallInteger to: messageNode arguments first statements first.
	
	astC := messageNode acceptVisitor: methodTranslator.
	
	expectedC := ASTCIf new 
		condition: (ASTCLiteral value: true);
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
ASTCBooleanTest >> testIfTrue [
	| astC expectedC messageNode |
	messageNode := RBParser parseExpression: 'true ifTrue:[ 1 ]'.
	
	"Manual Typing"
	self addType: SmallInteger to: messageNode.
	self addType: Boolean to: messageNode receiver.
	self addType: BlockClosure to: messageNode arguments first.
	self addType: SmallInteger to: messageNode arguments first statements first.
	
	astC := messageNode acceptVisitor: methodTranslator.
	
	expectedC := ASTCIf new 
		condition: (ASTCLiteral value: true);
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
ASTCBooleanTest >> testIfTrueIfFalse [
	| astC expectedC |
	astC := ASTCTranslator translateExpression: '1 = 2 ifTrue:[ 1 ] ifFalse:[ 2 ]'.
	
	expectedC := ASTCIf new 
		condition: (ASTCEqualityOperator new
			addOperand: (ASTCLiteral value: 1);
			addOperand: (ASTCLiteral value: 2);
			yourself);
		then:(ASTCBlock new
			addStatement: (ASTCLiteral value: 1) asStatement;
			yourself);
		else:(ASTCBlock new
			addStatement: (ASTCLiteral value: 2) asStatement;
			yourself);
		yourself.	
	
	astC debugASTCStructure.
	self assert: (astC statements at: 1) equals: expectedC.
]
