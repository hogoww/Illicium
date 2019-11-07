Class {
	#name : #TranslationTest,
	#superclass : #TestCase,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #tests }
TranslationTest >> testASTCIdentifier [
	| astPharo visitor astC expectedC |
	astPharo := RBParser parseExpression: 'c'.
	visitor := ASTCMethodTranslator new.
	astC := astPharo acceptVisitor: visitor.
	
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
	astC := self translate: '1=2 ifTrue:[1] ifFalse:[2]'.
	
	expectedC := ASTCIf new 
		condition: (ASTCOperator new
			symbol:'==';
			addOperand: (ASTCLiteral value: (ASTCSmallInteger value:1));
			addOperand: (ASTCLiteral value: (ASTCSmallInteger value:2));
			yourself);
		then:(ASTCBlock new
			add: (ASTCLiteral value: (ASTCSmallInteger value:1)) asASTCStatement;
			yourself);
		else:(ASTCBlock new
			add: (ASTCLiteral value: (ASTCSmallInteger value:2)) asASTCStatement;
			yourself);
		yourself.	
	
	astC debugASTCStructure.
	self assert: astC equals: expectedC.
]

{ #category : #tests }
TranslationTest >> testASTCOperatorBinary [
	| astC expectedC|
	astC := self translate: '1=6'.
	
	expectedC := ASTCOperator new
		symbol:'==';
		addOperand:(ASTCLiteral value: (ASTCSmallInteger value:1));
		addOperand: (ASTCLiteral value: (ASTCSmallInteger value:6));
		yourself.
	
	self assert: astC isOperator.
	self assert: astC symbol equals: '=='.
	self assert: astC operands first value value equals: 1.
	self assert: astC operands second value value equals: 6.
	self assert: astC equals: expectedC.
]

{ #category : #tests }
TranslationTest >> testASTCSmallIntegerIsLiteral [
	| astPharo visitor astC |
	astPharo := RBParser parseExpression: '5'.
	visitor := ASTCMethodTranslator  new.
	astC := astPharo acceptVisitor: visitor.
	
	self assert: astC isLiteral.
	self assert: astC value value equals: 5.
	self assert: astC equals: 
		(ASTCLiteral new value: 
			(ASTCSmallInteger new value:5;yourself) ;
		yourself).
]

{ #category : #tests }
TranslationTest >> translate: sourceCode [
	| astPharo inferer type |
	astPharo := RBParser parseExpression: sourceCode.
	astPharo doSemanticAnalysis.
	
	inferer := PhineasInferer new.
	type := (inferer inferAST: astPharo methodNode) methodType.
	astPharo methodNode acceptVisitor: (ASTCTypeAnnotationAST new
		inferer: inferer;
		yourself).
	
	type accept: PIIsMethodTypeInterpreted new.
	^ astPharo acceptVisitor: ASTCMethodTranslator new.
]
