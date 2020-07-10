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
	"Not sure what kind of assertion should be there.."
	self assert: function declaration parameters size equals: 1.
	self assert: function declaration parameters first type type equals: (CType createFrom: 'CuTest*').
	self assert: function body isEmpty.
]

{ #category : #accessing }
IlliciumTranslateTestsTest >> testWithAssertTrueTest [
	| function |
	function := MAIlliciumTranslator translateMethod: self classToTest >> #testWithAssertTrue.
	function debugASTCStructure.
	"Not sure what kind of assertion should be there.."
	self assert: function body isEmpty.
]
