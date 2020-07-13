Class {
	#name : #IlliciumTranslateTestsTest,
	#superclass : #FAMessageNodeTranslatorTest,
	#category : #'MAngler-Illicium-Tests-TranslatorTest'
}

{ #category : #accessing }
IlliciumTranslateTestsTest >> classToTest [
	^ IlliciumTestClassToBeTranslated  
]

{ #category : #accessing }
IlliciumTranslateTestsTest >> testEmptyTest [
	| function |
	function := MAIlliciumTranslator translateMethod: self classToTest >> #testEmpty.
	function debugASTCStructure.
	self assert: function declaration parameters size equals: 1.
	self assert: function declaration parameters first type type type equals: (CType createFrom: 'CuTest*').
	self assert: function body isEmpty.
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
