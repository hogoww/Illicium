Class {
	#name : #GenerationTest,
	#superclass : #TestCase,
	#category : #'ASTC-Translation-Test'
}

{ #category : #tests }
GenerationTest >> testASTCIdentifier [
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
GenerationTest >> testASTCIf [
	| astPharo visitor astC expectedC|
	astPharo := RBParser parseExpression: '1=2 ifTrue:[] ifFalse:[]'.
	visitor := ASTCFromPharo new.
	astC := astPharo acceptVisitor: visitor.
	
	expectedC := ASTCIf new 
		predicate: (ASTCOperator new
			symbol:'==';
			operands: (ASTCContainer new 
				add:
					(ASTCLiteral new value:	(ASTCSmallInteger new myself:1 ; yourself);
					 yourself);
				add:
					(ASTCLiteral new value:	(ASTCSmallInteger new myself:2 ; yourself);
					 yourself);
				yourself);
			yourself);
		then:(ASTCBlock new);
		else:(ASTCBlock new);
		yourself.	
	
	self assert: astC isStructuralyValidAST.
	self assert: astC equals: expectedC.
]

{ #category : #tests }
GenerationTest >> testASTCOperatorBinary [
	| astPharo visitor astC expectedC|
	astPharo := RBParser parseExpression: 'c=6'.
	visitor := ASTCFromPharo new.
	astC := astPharo acceptVisitor: visitor.
	
	expectedC := ASTCOperator new
		symbol:'==';
		operands: (ASTCContainer new
			add:(ASTCIdentifier new id:#c ; yourself);
			add:(ASTCLiteral new value: 
				(ASTCSmallInteger new myself:6 ; yourself) ;
				yourself);
			yourself);
		yourself.
	
	self assert: astC isASTCOperator.
	self assert: astC symbol equals: '=='.
	self assert: astC operands first id equals: #c.
	self assert: astC operands second value myself equals: 6.
	self assert: astC equals: expectedC.
]

{ #category : #tests }
GenerationTest >> testASTCSmallIntegerIsLiteral [
	| astPharo visitor astC |
	astPharo := RBParser parseExpression: '5'.
	visitor := ASTCFromPharo new.
	astC := astPharo acceptVisitor: visitor.
	
	self assert: astC isASTCLiteral.
	self assert: astC value myself equals: 5.
	self assert: astC equals: 
		(ASTCLiteral new value: 
			(ASTCSmallInteger new myself:5;yourself) ;
		yourself).
]
