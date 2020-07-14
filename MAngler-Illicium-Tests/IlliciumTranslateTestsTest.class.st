Class {
	#name : #IlliciumTranslateTestsTest,
	#superclass : #FAMessageNodeTranslatorTest,
	#category : #'MAngler-Illicium-Tests-TranslatorTest'
}

{ #category : #accessing }
IlliciumTranslateTestsTest >> classToTest [
	^ IlliciumTestClassToBeTranslated  
]

{ #category : #testing }
IlliciumTranslateTestsTest >> testEmptyTest [
	| function |
	function := MAIlliciumTranslator translateMethod: self classToTest >> #testEmpty.
	function debugASTCStructure.
	self assert: function declaration parameters size equals: 1.
	self assert: function declaration parameters first type type type equals: (CType createFrom: 'CuTest*').
	self assert: function body isEmpty.
]

{ #category : #testing }
IlliciumTranslateTestsTest >> testGenerateTestClass [
	"very weak test, not sure how to test the generation otherwise"
	
	MAIlliciumTranslator generateTestClass: self classToTest
	
]

{ #category : #testing }
IlliciumTranslateTestsTest >> testTranslateTestClass [
	| cu expectedNumberOfDeclaration suiteDeclarationFunction |
	cu := MAIlliciumTranslator translateTestClass: self classToTest.
	cu debugASTCStructure.

	expectedNumberOfDeclaration := (self classToTest allSelectorsBelow: TestCase) 
		count: [ :aSelector | (self classToTest lookupSelector: aSelector) ast isTest ].
	self assert: cu definitions size equals: expectedNumberOfDeclaration + 1. "+1 for the declaration of the suite"
	
	suiteDeclarationFunction := cu functionNamed: self classToTest name , #GetSuite.
	self assert: suiteDeclarationFunction body statements size equals: expectedNumberOfDeclaration + 1. "+ CuSuite Assignment (declaration is not a statement)"
	
	self assert: cu includes size equals: 2.
]

{ #category : #testing }
IlliciumTranslateTestsTest >> testWithAssertTrueOnePlusOneEqualsThree [
	| function assertFuncCall |
	"The tested test is a failing one"
	function := MAIlliciumTranslator translateMethod: self classToTest >> #testWithAssertOnePlusOneEqualsThree.
	function debugASTCStructure.
	self assert: function declaration parameters size equals: 1.
	self assert: function declaration parameters first type type type equals: (CType createFrom: 'CuTest*').
	self assert: function body statements size equals: 1.
	assertFuncCall := function body statements anyOne expression.
	self assert: assertFuncCall id id equals: #CuAssertTrue.
	self assert: assertFuncCall arguments size equals: 2.
]

{ #category : #testing }
IlliciumTranslateTestsTest >> testWithAssertTrueOnePlusOneEqualsTwoTest [
	| function assertFuncCall |
	function := MAIlliciumTranslator translateMethod: self classToTest >> #testWithAssertOnePlusOneEqualsTwo.
	function debugASTCStructure.
	self assert: function declaration parameters size equals: 1.
	self assert: function declaration parameters first type type type equals: (CType createFrom: 'CuTest*').
	self assert: function body statements size equals: 1.
	assertFuncCall := function body statements anyOne expression.
	self assert: assertFuncCall id id equals: #CuAssertTrue.
	self assert: assertFuncCall arguments size equals: 2.
]

{ #category : #testing }
IlliciumTranslateTestsTest >> testWithAssertTrueTest [
	| function assertFuncCall |
	function := MAIlliciumTranslator translateMethod: self classToTest >> #testWithAssertTrue.
	function debugASTCStructure.
	self assert: function declaration parameters size equals: 1.
	self assert: function declaration parameters first type type type equals: (CType createFrom: 'CuTest*').
	self assert: function body statements size equals: 1.
	assertFuncCall := function body statements anyOne expression.
	self assert: assertFuncCall id id equals: #CuAssertTrue.
	self assert: assertFuncCall arguments size equals: 2.
]
