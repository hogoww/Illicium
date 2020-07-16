Class {
	#name : #MASpurPlanningCompactorRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-GeneratedResource'
}

{ #category : #running }
MASpurPlanningCompactorRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: SpurPlanningCompactor)
]
