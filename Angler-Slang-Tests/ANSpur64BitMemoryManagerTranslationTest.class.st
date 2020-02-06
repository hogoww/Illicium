Class {
	#name : #ANSpur64BitMemoryManagerTranslationTest,
	#superclass : #ANVMTranslationTests,
	#category : #'Angler-Slang-Tests'
}

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsMaybeFiredEphemeronStringComparison [
	| illiAST slangString illiString |
	self skip.
	slangString := self generateSlang: #isMaybeFiredEphemeron:.
	illiAST := self generateIllicium: #isMaybeFiredEphemeron:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsWordsOrBytesStringComparison [
	| illiAST slangString illiString |
	self skip.
	slangString := self generateSlang: #isWordsOrBytes:.
	illiAST := self generateIllicium: #isWordsOrBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]
