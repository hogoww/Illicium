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

{ #category : #tests }
BrokenPluginTranslationTests >> testEqualsSlangOutputForPrimitiveNoPopButPush [
	| slangString illiString |
	illiString := self generateIllicium: #primitiveNoPopButPush.
	slangString := self generateSlang: #primitiveNoPopButPush.
	self assert: illiString equals: slangString
]

{ #category : #tests }
BrokenPluginTranslationTests >> testEqualsSlangOutputForPrimitivePopAndFail [
	| slangString illiString |
	illiString := self generateIllicium: #primitivePopAndFail.
	slangString := self generateSlang: #primitivePopAndFail.
	self assert: illiString equals: slangString
]

{ #category : #tests }
BrokenPluginTranslationTests >> testEqualsSlangOutputForPrimitivePopLessThanExpected [
	| slangString illiString |
	illiString := self generateIllicium: #primitivePopLessThanExpected.
	slangString := self generateSlang: #primitivePopLessThanExpected.
	self assert: illiString equals: slangString
]

{ #category : #tests }
BrokenPluginTranslationTests >> testEqualsSlangOutputForPrimitivePopMoreThanExpected [
	| slangString illiString |
	illiString := self generateIllicium: #primitivePopMoreThanExpected.
	slangString := self generateSlang: #primitivePopMoreThanExpected.
	self assert: illiString equals: slangString
]

{ #category : #tests }
BrokenPluginTranslationTests >> testSmokePrimitiveNoPopButPush [
	self testMethod: #primitiveNoPopButPush
]

{ #category : #tests }
BrokenPluginTranslationTests >> testSmokePrimitivePopAndFail [
	self testMethod: #primitivePopAndFail
]

{ #category : #tests }
BrokenPluginTranslationTests >> testSmokePrimitivePopLessThanExpected [
	self testMethod: #primitivePopLessThanExpected
]

{ #category : #tests }
BrokenPluginTranslationTests >> testSmokePrimitivePopMoreThanExpected [
	self testMethod: #primitivePopMoreThanExpected
]
