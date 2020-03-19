Class {
	#name : #MASpurSegmentManagerRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-generatedResource'
}

{ #category : #running }
MASpurSegmentManagerRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: SpurSegmentManager)
]
