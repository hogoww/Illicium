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
	| illiAST illiString |
	illiAST := self generateIllicium: #couldBeFramePointer:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeInterpreterStackPagesTranslationTest >> testExtraStackBytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extraStackBytes.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'page access' }
MASmokeInterpreterStackPagesTranslationTest >> testMarkStackPageLeastMostRecentlyUsedStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #markStackPageLeastMostRecentlyUsed:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'page access' }
MASmokeInterpreterStackPagesTranslationTest >> testOverflowLimitStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #overflowLimit.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #statistics }
MASmokeInterpreterStackPagesTranslationTest >> testRecordLivePagesOnMappingStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #recordLivePagesOnMapping:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #statistics }
MASmokeInterpreterStackPagesTranslationTest >> testStatAverageLivePagesWhenMappingStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statAverageLivePagesWhenMapping:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #statistics }
MASmokeInterpreterStackPagesTranslationTest >> testStatMaxPageCountWhenMappingStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statMaxPageCountWhenMapping:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeInterpreterStackPagesTranslationTest >> testWhereIsMaybeStackThingStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #whereIsMaybeStackThing:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeInterpreterStackPagesTranslationTest >> translator [
	^ MAInterpreterStackPagesRessource current translator
]
