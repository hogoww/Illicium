Class {
	#name : #MAInterpreterStackPagesTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MAInterpreterStackPagesTranslationTest >> setUp [
	super setUp.
	testedClass := InterpreterStackPages
]

{ #category : #'page access-equaliy-test' }
MAInterpreterStackPagesTranslationTest >> testFreeStackPageNoAssertStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeStackPageNoAssert:.
	illiAST := self generateIllicium: #freeStackPageNoAssert:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access-equaliy-test' }
MAInterpreterStackPagesTranslationTest >> testFreeStackPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeStackPage:.
	illiAST := self generateIllicium: #freeStackPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'initialization-equaliy-test' }
MAInterpreterStackPagesTranslationTest >> testInitializeStacknumSlotspageSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #initializeStack:numSlots:pageSize:.
	illiAST := self generateIllicium: #initializeStack:numSlots:pageSize:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access-equaliy-test' }
MAInterpreterStackPagesTranslationTest >> testMarkStackPageMostRecentlyUsedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markStackPageMostRecentlyUsed:.
	illiAST := self generateIllicium: #markStackPageMostRecentlyUsed:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access-equaliy-test' }
MAInterpreterStackPagesTranslationTest >> testMarkStackPageNextMostRecentlyUsedStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #markStackPageNextMostRecentlyUsed:.
	illiAST := self generateIllicium: #markStackPageNextMostRecentlyUsed:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access-equaliy-test' }
MAInterpreterStackPagesTranslationTest >> testNewStackPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #newStackPage.
	illiAST := self generateIllicium: #newStackPage.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access-equaliy-test' }
MAInterpreterStackPagesTranslationTest >> testPageIndexForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pageIndexFor:.
	illiAST := self generateIllicium: #pageIndexFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'assertions-equaliy-test' }
MAInterpreterStackPagesTranslationTest >> testPageListIsWellFormedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pageListIsWellFormed.
	illiAST := self generateIllicium: #pageListIsWellFormed.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access-equaliy-test' }
MAInterpreterStackPagesTranslationTest >> testStackPageAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPageAt:.
	illiAST := self generateIllicium: #stackPageAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access-equaliy-test' }
MAInterpreterStackPagesTranslationTest >> testStackPageForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPageFor:.
	illiAST := self generateIllicium: #stackPageFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'statistics-equaliy-test' }
MAInterpreterStackPagesTranslationTest >> testStatAverageLivePagesWhenMappingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #statAverageLivePagesWhenMapping.
	illiAST := self generateIllicium: #statAverageLivePagesWhenMapping.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAInterpreterStackPagesTranslationTest >> translator [
	^ MAInterpreterStackPagesRessource current translator
]
