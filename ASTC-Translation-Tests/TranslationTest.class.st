Class {
	#name : #TranslationTest,
	#superclass : #TestCase,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #tests }
TranslationTest >> testASTCIdentifier [
	| astPharo visitor astC expectedC validationVisitor |
	astPharo := RBParser parseExpression: 'c'.
	visitor := ASTCFromPharo new.
	astC := astPharo acceptVisitor: visitor.
	
	expectedC := ASTCIdentifier new
		id: #c;
		yourself.
	
	self assert: astC isASTCIdentifier.
	self assert: astC id equals: #c.
	self assert: astC equals: expectedC.
	validationVisitor := ASTCValidatorDebug new.

	astC acceptVisitor: validationVisitor.
	expectedC acceptVisitor: validationVisitor.
]

{ #category : #tests }
TranslationTest >> testASTCIf [
	| astC expectedC |
	astC := self translate: '1=2 ifTrue:[1] ifFalse:[2]'.
	
	expectedC := ASTCIf new 
		condition: (ASTCOperator new
			symbol:'==';
			operands: (ASTCContainer new 
				add: (ASTCLiteral value: (ASTCSmallInteger value:1));
				add: (ASTCLiteral value: (ASTCSmallInteger value:2));
				yourself);
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
		operands: (ASTCContainer new
			add: (ASTCLiteral value: (ASTCSmallInteger value:1));
			add: (ASTCLiteral value: (ASTCSmallInteger value:6));
			yourself);
		yourself.
	
	self assert: astC isASTCOperator.
	self assert: astC symbol equals: '=='.
	self assert: astC operands first value value equals: 1.
	self assert: astC operands second value value equals: 6.
	self assert: astC equals: expectedC.
]

{ #category : #tests }
TranslationTest >> testASTCSmallIntegerIsLiteral [
	| astPharo visitor astC |
	astPharo := RBParser parseExpression: '5'.
	visitor := ASTCFromPharo new.
	astC := astPharo acceptVisitor: visitor.
	
	self assert: astC isASTCLiteral.
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
	^ astPharo acceptVisitor: ASTCFromPharo new.
]
