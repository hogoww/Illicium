Class {
	#name : #MASpurPlanningCompactorRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-generatedResource'
}

{ #category : #running }
MASpurPlanningCompactorRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: SpurPlanningCompactor)
]

{ #category : #accessing }
MASpurPlanningCompactorRessource >> translator [
	^ translator
]

{ #category : #accessing }
MASpurPlanningCompactorRessource >> translator: aTranslator [
	translator := aTranslator
]
