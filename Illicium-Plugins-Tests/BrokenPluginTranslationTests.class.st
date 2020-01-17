Class {
	#name : #BrokenPluginTranslationTests,
	#superclass : #ILSlangToCGeneratedTests,
	#category : #'Illicium-Plugins-Tests'
}

{ #category : #running }
BrokenPluginTranslationTests >> setUp [
  super setUp.
  testedClass := BrokenPlugin.
  translator := ASTCSlangTranslator new
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTests >> testEqualsSlangOutputForPrimitiveNoPopButPush [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveNoPopButPush.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveNoPopButPush.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTests >> testEqualsSlangOutputForPrimitivePopAndFail [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitivePopAndFail.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitivePopAndFail.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTests >> testEqualsSlangOutputForPrimitivePopLessThanExpected [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitivePopLessThanExpected.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitivePopLessThanExpected.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTests >> testEqualsSlangOutputForPrimitivePopMoreThanExpected [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitivePopMoreThanExpected.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitivePopMoreThanExpected.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
BrokenPluginTranslationTests >> testSmokePrimitiveNoPopButPush [
  self testMethod: #primitiveNoPopButPush
]

{ #category : #'smoke-test' }
BrokenPluginTranslationTests >> testSmokePrimitivePopAndFail [
  self testMethod: #primitivePopAndFail
]

{ #category : #'smoke-test' }
BrokenPluginTranslationTests >> testSmokePrimitivePopLessThanExpected [
  self testMethod: #primitivePopLessThanExpected
]

{ #category : #'smoke-test' }
BrokenPluginTranslationTests >> testSmokePrimitivePopMoreThanExpected [
  self testMethod: #primitivePopMoreThanExpected
]
