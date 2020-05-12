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
MAStringCompInterpreterStackPagesTranslationTest >> testPageIndexForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pageIndexFor:.
	illiAST := self generateIllicium: #pageIndexFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'page access' }
MAStringCompInterpreterStackPagesTranslationTest >> testPageIndexForstackMemorybytesPerPageStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #pageIndexFor:stackMemory:bytesPerPage:.
	illiAST := self
		generateIllicium: #pageIndexFor:stackMemory:bytesPerPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompInterpreterStackPagesTranslationTest >> translator [
	^ MAInterpreterStackPagesRessource current translator
]
