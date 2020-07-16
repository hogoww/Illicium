Class {
	#name : #MASpurGenerationScavengerRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-GeneratedResource'
}

{ #category : #running }
MASpurGenerationScavengerRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: SpurGenerationScavenger)
]
