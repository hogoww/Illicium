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

{ #category : #'smoke-test' }
BrokenPluginTranslationTest >> testPrimitiveNoPopButPushSmoke [
  self testMethod: #primitiveNoPopButPush
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTest >> testPrimitiveNoPopButPushStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveNoPopButPush.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveNoPopButPush.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
BrokenPluginTranslationTest >> testPrimitivePopAndFailSmoke [
  self testMethod: #primitivePopAndFail
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTest >> testPrimitivePopAndFailStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitivePopAndFail.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitivePopAndFail.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
BrokenPluginTranslationTest >> testPrimitivePopLessThanExpectedSmoke [
  self testMethod: #primitivePopLessThanExpected
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTest >> testPrimitivePopLessThanExpectedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitivePopLessThanExpected.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitivePopLessThanExpected.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
BrokenPluginTranslationTest >> testPrimitivePopMoreThanExpectedSmoke [
  self testMethod: #primitivePopMoreThanExpected
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTest >> testPrimitivePopMoreThanExpectedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitivePopMoreThanExpected.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitivePopMoreThanExpected.
  self assert: illiString equals: slangString
]
