Class {
	#name : #MACogStackPagesRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-generatedResource'
}

{ #category : #running }
MACogStackPagesRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: CogStackPages)
]
