Class {
	#name : #MAStringCompInterpreterStackPagesTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MAStringCompInterpreterStackPagesTranslationTest >> setUp [
	super setUp.
	testedClass := InterpreterStackPages
]

{ #category : #'page access' }
MAStringCompInterpreterStackPagesTranslationTest >> testFreeStackPageNoAssertStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeStackPageNoAssert:.
	illiAST := self generateIllicium: #freeStackPageNoAssert:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access' }
MAStringCompInterpreterStackPagesTranslationTest >> testFreeStackPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeStackPage:.
	illiAST := self generateIllicium: #freeStackPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #initialization }
MAStringCompInterpreterStackPagesTranslationTest >> testInitializeStacknumSlotspageSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #initializeStack:numSlots:pageSize:.
	illiAST := self generateIllicium: #initializeStack:numSlots:pageSize:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access' }
MAStringCompInterpreterStackPagesTranslationTest >> testMarkStackPageMostRecentlyUsedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markStackPageMostRecentlyUsed:.
	illiAST := self generateIllicium: #markStackPageMostRecentlyUsed:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access' }
MAStringCompInterpreterStackPagesTranslationTest >> testMarkStackPageNextMostRecentlyUsedStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #markStackPageNextMostRecentlyUsed:.
	illiAST := self generateIllicium: #markStackPageNextMostRecentlyUsed:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access' }
MAStringCompInterpreterStackPagesTranslationTest >> testNewStackPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #newStackPage.
	illiAST := self generateIllicium: #newStackPage.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access' }
MAStringCompInterpreterStackPagesTranslationTest >> testPageIndexForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pageIndexFor:.
	illiAST := self generateIllicium: #pageIndexFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #assertions }
MAStringCompInterpreterStackPagesTranslationTest >> testPageListIsWellFormedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pageListIsWellFormed.
	illiAST := self generateIllicium: #pageListIsWellFormed.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access' }
MAStringCompInterpreterStackPagesTranslationTest >> testStackPageAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPageAt:.
	illiAST := self generateIllicium: #stackPageAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access' }
MAStringCompInterpreterStackPagesTranslationTest >> testStackPageForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPageFor:.
	illiAST := self generateIllicium: #stackPageFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #statistics }
MAStringCompInterpreterStackPagesTranslationTest >> testStatAverageLivePagesWhenMappingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #statAverageLivePagesWhenMapping.
	illiAST := self generateIllicium: #statAverageLivePagesWhenMapping.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompInterpreterStackPagesTranslationTest >> translator [
	^ MAInterpreterStackPagesRessource current translator
]
