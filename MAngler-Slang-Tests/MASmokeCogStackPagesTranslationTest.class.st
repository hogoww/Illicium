Class {
	#name : #MASmokeCogStackPagesTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-GeneratedTests'
}

{ #category : #running }
MASmokeCogStackPagesTranslationTest >> setUp [
	super setUp.
	testedClass := CogStackPages
]

{ #category : #'page access' }
MASmokeCogStackPagesTranslationTest >> testMarkStackPageLeastMostRecentlyUsedStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #markStackPageLeastMostRecentlyUsed:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'page access' }
MASmokeCogStackPagesTranslationTest >> testOverflowLimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #overflowLimit.
	self prettyPrintIllicium: illiAST
]

{ #category : #statistics }
MASmokeCogStackPagesTranslationTest >> testRecordLivePagesOnMappingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #recordLivePagesOnMapping:.
	self prettyPrintIllicium: illiAST
]

{ #category : #statistics }
MASmokeCogStackPagesTranslationTest >> testStatAverageLivePagesWhenMappingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statAverageLivePagesWhenMapping:.
	self prettyPrintIllicium: illiAST
]

{ #category : #statistics }
MASmokeCogStackPagesTranslationTest >> testStatMaxPageCountWhenMappingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statMaxPageCountWhenMapping:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeCogStackPagesTranslationTest >> translator [
	^ MACogStackPagesRessource current translator
]
