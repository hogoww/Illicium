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
  | slangString illiString |
  illiString := self generateIllicium: #primitiveNoPopButPush.
  slangString := self generateSlang: #primitiveNoPopButPush.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTests >> testEqualsSlangOutputForPrimitivePopAndFail [
  | slangString illiString |
  illiString := self generateIllicium: #primitivePopAndFail.
  slangString := self generateSlang: #primitivePopAndFail.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTests >> testEqualsSlangOutputForPrimitivePopLessThanExpected [
  | slangString illiString |
  illiString := self generateIllicium: #primitivePopLessThanExpected.
  slangString := self generateSlang: #primitivePopLessThanExpected.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
BrokenPluginTranslationTests >> testEqualsSlangOutputForPrimitivePopMoreThanExpected [
  | slangString illiString |
  illiString := self generateIllicium: #primitivePopMoreThanExpected.
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
