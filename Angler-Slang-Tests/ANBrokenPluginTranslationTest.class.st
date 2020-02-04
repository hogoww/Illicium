Class {
	#name : #ANBrokenPluginTranslationTest,
	#superclass : #ANPluginSlangToCGeneratedTests,
	#category : #'Angler-Slang-Tests'
}

{ #category : #running }
ANBrokenPluginTranslationTest >> setUp [
	super setUp.
	testedClass := BrokenPlugin
]

{ #category : #'primitives-equaliy-test' }
ANBrokenPluginTranslationTest >> testPrimitiveNoPopButPushStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveNoPopButPush.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveNoPopButPush.
	self assert: illiString equals: slangString
]

{ #category : #'primitives-equaliy-test' }
ANBrokenPluginTranslationTest >> testPrimitivePopAndFailStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitivePopAndFail.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitivePopAndFail.
	self assert: illiString equals: slangString
]

{ #category : #'primitives-equaliy-test' }
ANBrokenPluginTranslationTest >> testPrimitivePopLessThanExpectedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitivePopLessThanExpected.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitivePopLessThanExpected.
	self assert: illiString equals: slangString
]

{ #category : #'primitives-equaliy-test' }
ANBrokenPluginTranslationTest >> testPrimitivePopMoreThanExpectedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitivePopMoreThanExpected.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitivePopMoreThanExpected.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
ANBrokenPluginTranslationTest >> translator [
	^ ANBrokenPluginTranslationTest current translator
]
