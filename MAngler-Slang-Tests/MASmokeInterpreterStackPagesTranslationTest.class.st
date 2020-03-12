Class {
	#name : #MASmokeInterpreterStackPagesTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MASmokeInterpreterStackPagesTranslationTest >> setUp [
	super setUp.
	testedClass := InterpreterStackPages
]

{ #category : #assertions }
MASmokeInterpreterStackPagesTranslationTest >> testCouldBeFramePointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #couldBeFramePointer:.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeInterpreterStackPagesTranslationTest >> testExtraStackBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extraStackBytes.
	self prettyPrintIllicium: illiAST
]

{ #category : #'page access' }
MASmokeInterpreterStackPagesTranslationTest >> testMarkStackPageLeastMostRecentlyUsedStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #markStackPageLeastMostRecentlyUsed:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'page access' }
MASmokeInterpreterStackPagesTranslationTest >> testOverflowLimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #overflowLimit.
	self prettyPrintIllicium: illiAST
]

{ #category : #statistics }
MASmokeInterpreterStackPagesTranslationTest >> testRecordLivePagesOnMappingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #recordLivePagesOnMapping:.
	self prettyPrintIllicium: illiAST
]

{ #category : #statistics }
MASmokeInterpreterStackPagesTranslationTest >> testStatAverageLivePagesWhenMappingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statAverageLivePagesWhenMapping:.
	self prettyPrintIllicium: illiAST
]

{ #category : #statistics }
MASmokeInterpreterStackPagesTranslationTest >> testStatMaxPageCountWhenMappingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statMaxPageCountWhenMapping:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeInterpreterStackPagesTranslationTest >> testWhereIsMaybeStackThingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #whereIsMaybeStackThing:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeInterpreterStackPagesTranslationTest >> translator [
	^ MAInterpreterStackPagesRessource current translator
]
