Class {
	#name : #MASpurSegmentManagerRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-GeneratedResource'
}

{ #category : #running }
MASpurSegmentManagerRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: SpurSegmentManager)
]
