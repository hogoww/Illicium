"
An ASTCValidatorDebugTest is a test class for testing the behavior of ASTCValidatorDebug
"
Class {
	#name : #ASTCValidatorDebugTest,
	#superclass : #TestCase,
	#category : #'ASTC-Core-Tests-validation'
}

{ #category : #test }
ASTCValidatorDebugTest >> aRandomExpressionFactory [
	|anExpression|
	anExpression:= ASTCIdentifier new.
	self assert: anExpression isStructuralyValidAST. "It'll be checked twice, but better that than giving a wrong statment"
	^anExpression
]

{ #category : #test }
ASTCValidatorDebugTest >> aRandomStatmentFactory [
	|aStatment|
	aStatment:=ASTCReturn new
		expression:self aRandomExpressionFactory;
		yourself.
	self assert: aStatment isStructuralyValidAST. "It'll be checked twice, but better that than giving a wrong statment"
	^aStatment
]

{ #category : #test }
ASTCValidatorDebugTest >> testVisitASTCExpressionStatementBad [
	| astc |
	astc := ASTCExpressionStatement new
		expression: self aRandomStatmentFactory;
		yourself.
	self should: [ astc debugASTCStructure ] raise: AssertionFailure
]

{ #category : #test }
ASTCValidatorDebugTest >> testVisitASTCExpressionStatementGood [
	| astc |
	astc := ASTCExpressionStatement new
		expression: self aRandomExpressionFactory;
		yourself.
	self shouldnt: [ astc debugASTCStructure ] raise: AssertionFailure
]

{ #category : #tests }
ASTCValidatorDebugTest >> testVisitASTCReturnBad [
	| astc |
	astc := ASTCReturn new
		expression: ASTCReturn new;
		yourself.
	self should: [ astc debugASTCStructure ] raise: AssertionFailure
]

{ #category : #tests }
ASTCValidatorDebugTest >> testVisitASTCReturnGood [
	| astc |
	astc := ASTCReturn new
		expression:
			(ASTCLiteral new
				value: 1;
				yourself);
		yourself.

	self shouldnt: [ astc debugASTCStructure ] raise: AssertionFailure
]

{ #category : #tests }
ASTCValidatorDebugTest >> testVisitASTCTypeBad [
	<expectedFailure>
	"not up to date"
	| astc |
	astc := ASTCType new
		type: ASTCSmallInteger new;
		yourself.
	self should: [ astc debugASTCStructure ] raise: AssertionFailure
]

{ #category : #tests }
ASTCValidatorDebugTest >> testVisitASTCTypeGood [
	| astc |
	astc := ASTCType new
		type: ASTCSmallInteger asTypeReification ;
		yourself.
	self shouldnt: [ astc debugASTCStructure ] raise: AssertionFailure
]
