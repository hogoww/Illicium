Class {
	#name : #MASpur64BitMemoryManagerRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-GeneratedResource'
}

{ #category : #running }
MASpur64BitMemoryManagerRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: Spur64BitMemoryManager)
]
