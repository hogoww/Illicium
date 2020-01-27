"
An ASTCValidatorTest is a test class for testing the behavior of ASTCValidator
"
Class {
	#name : #ASTCValidatorTest,
	#superclass : #TestCase,
	#category : #'Angler-VisitorsASTC-Tests-Validation'
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
	self assert: astc isStructuralyValidAST
]

{ #category : #tests }
ASTCValidatorTest >> testVisitASTCTypeBad [
	<expectedFailure>
	"not up to date"
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
		type: ASTCSmallInteger asTypeReification;
		yourself.
	self assert: astc isStructuralyValidAST
]
