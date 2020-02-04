Class {
	#name : #ANFilePluginRessource,
	#superclass : #ANSlangVMTestRessource,
	#category : #'Angler-Slang-Tests'
}

{ #category : #running }
ANFilePluginRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: FilePlugin)
]

{ #category : #accessing }
ANFilePluginRessource >> translator [
	^ translator
]

{ #category : #accessing }
ANFilePluginRessource >> translator: aTranslator [
	translator := aTranslator
]
