Class {
	#name : #BrokenPluginTranslationTests,
	#superclass : #ILPluginSlangToCGeneratedTests,
	#category : #'Illicium-Plugins-Tests'
}

{ #category : #running }
BrokenPluginTranslationTests >> setUp [
  super setUp.
  testedClass := BrokenPlugin.
  translator := ASTCSlangPluginTranslator new
]

{ #category : #'smoke-test' }
BrokenPluginTranslationTests >> testPrimitiveNoPopButPushSmoke [
  self testMethod: #primitiveNoPopButPush
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTests >> testPrimitiveNoPopButPushStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveNoPopButPush.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveNoPopButPush.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
BrokenPluginTranslationTests >> testPrimitivePopAndFailSmoke [
  self testMethod: #primitivePopAndFail
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTests >> testPrimitivePopAndFailStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitivePopAndFail.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitivePopAndFail.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
BrokenPluginTranslationTests >> testPrimitivePopLessThanExpectedSmoke [
  self testMethod: #primitivePopLessThanExpected
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTests >> testPrimitivePopLessThanExpectedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitivePopLessThanExpected.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitivePopLessThanExpected.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
BrokenPluginTranslationTests >> testPrimitivePopMoreThanExpectedSmoke [
  self testMethod: #primitivePopMoreThanExpected
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTests >> testPrimitivePopMoreThanExpectedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitivePopMoreThanExpected.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitivePopMoreThanExpected.
  self assert: illiString equals: slangString
]
