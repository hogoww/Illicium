"
An ASTCValidatorTest is a test class for testing the behavior of ASTCValidator
"
Class {
	#name : #ASTCValidatorTest,
	#superclass : #TestCase,
	#category : #'ASTC-VisitorsASTC-Tests-Validation'
}

{ #category : #tests }
ASTCValidatorTest >> testVisitASTCReturnBad [
	| astc |
	astc := ASTCReturn new expression: ASTCReturn new ; yourself.
	self deny: astc isStructuralyValidAST
]

{ #category : #tests }
ASTCValidatorTest >> testVisitASTCReturnGood [
	| astc |
	astc := ASTCReturn new
		expression:
			(ASTCLiteral new
				value: 1;
				yourself);
		yourself.
	astc debugASTCStructure
]

{ #category : #tests }
ASTCValidatorTest >> testVisitASTCTypeBad [
	| astc |
	astc := ASTCType new
		type: ASTCSmallInteger new;
		yourself.
	self deny: astc isStructuralyValidAST
]

{ #category : #tests }
ASTCValidatorTest >> testVisitASTCTypeGood [
	| astc |
	astc := ASTCType new
		type: ASTCSmallInteger;
		yourself.
	astc debugASTCStructure
]
