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
