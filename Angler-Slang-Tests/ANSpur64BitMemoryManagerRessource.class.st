Class {
	#name : #ANSpur64BitMemoryManagerRessource,
	#superclass : #ANSlangVMTestRessource,
	#category : #'Angler-Slang-Tests'
}

{ #category : #running }
ANSpur64BitMemoryManagerRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: Spur64BitMemoryManager)
]

{ #category : #accessing }
ANSpur64BitMemoryManagerRessource >> translator [
	^ translator
]

{ #category : #accessing }
ANSpur64BitMemoryManagerRessource >> translator: aTranslator [
	translator := aTranslator
]
