"
An ASTCValidatorDebugTest is a test class for testing the behavior of ASTCValidatorDebug
"
Class {
	#name : #ASTCValidatorDebugTest,
	#superclass : #TestCase,
	#category : #'ASTC-Extensions-Tests-validation'
}

{ #category : #test }
ASTCValidatorDebugTest >> testVisitASTCReturnBad [
	| astc |
	astc:=	ASTCReturn new
		expression:
			ASTCReturn new
		yourself.

	self should: [astc debugASTCStructure] raise: Error.

]

{ #category : #test }
ASTCValidatorDebugTest >> testVisitASTCReturnGood [
	| astc |
	astc:=	ASTCReturn new
		expression:
			(ASTCLiteral new
			value:1;
			yourself);
		yourself.

	"self shouldnt:" astc debugASTCStructure . "raise: Error."

]

{ #category : #test }
ASTCValidatorDebugTest >> testVisitASTCTypeBad [
	| astc |
	astc:=	ASTCType new
		type:ASTCSmallInteger new;
		yourself.

	self should: [ astc debugASTCStructure ] raise: Error.
]

{ #category : #test }
ASTCValidatorDebugTest >> testVisitASTCTypeGood [
	| astc |
	astc := ASTCType new
		type: ASTCSmallInteger;
		yourself.
		
	"self shouldnt:" astc debugASTCStructure "raise error"
]
