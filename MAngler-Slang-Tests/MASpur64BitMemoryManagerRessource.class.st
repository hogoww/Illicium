Class {
	#name : #MASpur64BitMemoryManagerRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-generated-ressource'
}

{ #category : #running }
MASpur64BitMemoryManagerRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: Spur64BitMemoryManager)
]

{ #category : #accessing }
MASpur64BitMemoryManagerRessource >> translator [
	^ translator
]

{ #category : #accessing }
MASpur64BitMemoryManagerRessource >> translator: aTranslator [
	translator := aTranslator
]
