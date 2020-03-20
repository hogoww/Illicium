Class {
	#name : #MAStringCompCogStackPagesTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MAStringCompCogStackPagesTranslationTest >> setUp [
	super setUp.
	testedClass := CogStackPages
]

{ #category : #'page access' }
MAStringCompCogStackPagesTranslationTest >> testFreeStackPageNoAssertStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeStackPageNoAssert:.
	illiAST := self generateIllicium: #freeStackPageNoAssert:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access' }
MAStringCompCogStackPagesTranslationTest >> testFreeStackPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeStackPage:.
	illiAST := self generateIllicium: #freeStackPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access' }
MAStringCompCogStackPagesTranslationTest >> testMarkStackPageMostRecentlyUsedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markStackPageMostRecentlyUsed:.
	illiAST := self generateIllicium: #markStackPageMostRecentlyUsed:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access' }
MAStringCompCogStackPagesTranslationTest >> testMarkStackPageNextMostRecentlyUsedStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #markStackPageNextMostRecentlyUsed:.
	illiAST := self generateIllicium: #markStackPageNextMostRecentlyUsed:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access' }
MAStringCompCogStackPagesTranslationTest >> testNewStackPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #newStackPage.
	illiAST := self generateIllicium: #newStackPage.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #assertions }
MAStringCompCogStackPagesTranslationTest >> testPageListIsWellFormedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pageListIsWellFormed.
	illiAST := self generateIllicium: #pageListIsWellFormed.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access' }
MAStringCompCogStackPagesTranslationTest >> testStackPageAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPageAt:.
	illiAST := self generateIllicium: #stackPageAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access' }
MAStringCompCogStackPagesTranslationTest >> testStackPageForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPageFor:.
	illiAST := self generateIllicium: #stackPageFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #statistics }
MAStringCompCogStackPagesTranslationTest >> testStatAverageLivePagesWhenMappingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #statAverageLivePagesWhenMapping.
	illiAST := self generateIllicium: #statAverageLivePagesWhenMapping.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompCogStackPagesTranslationTest >> translator [
	^ MACogStackPagesRessource current translator
]
