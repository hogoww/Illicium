Class {
	#name : #BrokenPluginTranslationTest,
	#superclass : #ILPluginSlangToCGeneratedTests,
	#category : #'Illicium-Plugins-Tests'
}

{ #category : #running }
BrokenPluginTranslationTest >> setUp [
  super setUp.
  testedClass := BrokenPlugin.
  translator := ASTCSlangPluginTranslator new
]

{ #category : #'primitives-smoke-test' }
BrokenPluginTranslationTest >> testPrimitiveNoPopButPushSmoke [
  self testMethod: #primitiveNoPopButPush
]

{ #category : #'primitives-equaliy-test' }
BrokenPluginTranslationTest >> testPrimitiveNoPopButPushStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveNoPopButPush.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveNoPopButPush.
  self assert: illiString equals: slangString
]

{ #category : #'primitives-smoke-test' }
BrokenPluginTranslationTest >> testPrimitivePopAndFailSmoke [
  self testMethod: #primitivePopAndFail
]

{ #category : #'primitives-equaliy-test' }
BrokenPluginTranslationTest >> testPrimitivePopAndFailStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitivePopAndFail.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitivePopAndFail.
  self assert: illiString equals: slangString
]

{ #category : #'primitives-smoke-test' }
BrokenPluginTranslationTest >> testPrimitivePopLessThanExpectedSmoke [
  self testMethod: #primitivePopLessThanExpected
]

{ #category : #'primitives-equaliy-test' }
BrokenPluginTranslationTest >> testPrimitivePopLessThanExpectedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitivePopLessThanExpected.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitivePopLessThanExpected.
  self assert: illiString equals: slangString
]

{ #category : #'primitives-smoke-test' }
BrokenPluginTranslationTest >> testPrimitivePopMoreThanExpectedSmoke [
  self testMethod: #primitivePopMoreThanExpected
]

{ #category : #'primitives-equaliy-test' }
BrokenPluginTranslationTest >> testPrimitivePopMoreThanExpectedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitivePopMoreThanExpected.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitivePopMoreThanExpected.
  self assert: illiString equals: slangString
]
