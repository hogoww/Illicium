Class {
	#name : #MASpurMemoryManagerRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-GeneratedResource'
}

{ #category : #running }
MASpurMemoryManagerRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: SpurMemoryManager)
]
