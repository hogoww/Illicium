Class {
	#name : #MASpur64BitMemoryManagerRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-generatedResource'
}

{ #category : #running }
MASpur64BitMemoryManagerRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: Spur64BitMemoryManager)
]
