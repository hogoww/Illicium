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
]
