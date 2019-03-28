"
An ASTCValidatorTest is a test class for testing the behavior of ASTCValidator
"
Class {
	#name : #ASTCValidatorTest,
	#superclass : #TestCase,
	#category : #'ASTC-Extensions-Tests-validation'
}

{ #category : #running }
ASTCValidatorTest >> testVisitASTCReturnBad [
	| astc |
	astc:=	ASTCReturn new
		expression:
			ASTCReturn new
		yourself.

	self deny: astc isStructuralyValidAST.
]

{ #category : #running }
ASTCValidatorTest >> testVisitASTCReturnGood [
	| astc |
	astc:=	ASTCReturn new
		expression:
			(ASTCLiteral new
			value:1;
			yourself);
		yourself.

	self assert: astc isStructuralyValidAST.
]

{ #category : #running }
ASTCValidatorTest >> testVisitASTCTypeBad [
	| astc |
	astc:=	ASTCType new
		type:ASTCSmallInteger new;
		yourself.

	self deny: astc isStructuralyValidAST.
]

{ #category : #running }
ASTCValidatorTest >> testVisitASTCTypeGood [
	| astc |
	astc:=	ASTCType new
		type:ASTCSmallInteger;
		yourself.

	self assert: astc isStructuralyValidAST.
]
