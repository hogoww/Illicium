Class {
	#name : #ANSpur64BitMemoryManagerRessource,
	#superclass : #ANSlangVMTestResource,
	#category : #'Angler-Slang-Tests-generated-ressource'
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
