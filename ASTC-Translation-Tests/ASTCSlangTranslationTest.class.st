Class {
	#name : #ASTCSlangTranslationTest,
	#superclass : #ILTranslationTest,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #running }
ASTCSlangTranslationTest >> setUp [
	translator := ASTCSlangTranslator new
]

{ #category : #tests }
ASTCSlangTranslationTest >> testNoPopButPush [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu |
	cu := translator translateMethod: #primitiveNoPopButPush fromClass: BrokenPlugin.
	^ cu
]

{ #category : #tests }
ASTCSlangTranslationTest >> testPopAndFail [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu |
	cu := translator translateMethod: #primitivePopAndFail fromClass: BrokenPlugin.
	^ cu
]

{ #category : #tests }
ASTCSlangTranslationTest >> testPopLessThanExpected [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu |
	cu := translator translateMethod: #primitivePopLessThanExpected fromClass: BrokenPlugin.
	^ cu
]

{ #category : #tests }
ASTCSlangTranslationTest >> testPopMoreThanExpected [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu |
	cu := translator translateMethod: #primitivePopMoreThanExpected fromClass: BrokenPlugin.
	^ cu
]

{ #category : #tests }
ASTCSlangTranslationTest >> testTranslateBrokenPlugin [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu declaration definition statement operands |
	cu := translator translateMethod: #primitiveNoPopButPush fromClass: BrokenPlugin.

	self assert: cu isStructuralyValidAST.
	declaration := cu declarations at:1.
	self assert: declaration type type equals: ASTCUserClass.
	self assert: declaration id id equals: 'primitiveNoPopButPush'.
	self assert: declaration parameters isEmpty.
	
	definition:= cu definitions at:1.
	self assert:definition body statements size equals: 1.
	statement := definition body statements first.
	self assert: statement isASTCExpressionStatement.
	self assert: statement expression isASTCOperator.
	self assert: statement expression symbol equals: '->'.
	operands:=  statement expression operands.
	self assert: operands size equals: 2.
	self assert: operands first isASTCIdentifier.
	self assert: operands first id equals: 'interpreterProxy'.
	self assert: operands second isASTCFunctionCall.
	self assert: operands second id id equals: 'pushBool'.
	self assert: operands second arguments size equals: 1.
	self assert: operands second arguments first isASTCLiteral.
	self assert: operands second arguments first value equals: 'true'.
	
	
	self halt.
]
