Class {
	#name : #ANBrokenPluginRessource,
	#superclass : #ANSlangTestRessource,
	#category : #'Angler-Slang-Tests'
}

{ #category : #running }
ANBrokenPluginRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: BrokenPlugin)
]

{ #category : #accessing }
ANBrokenPluginRessource >> translator [
	^ translator
]

{ #category : #accessing }
ANBrokenPluginRessource >> translator: aTranslator [
	translator := aTranslator
]
