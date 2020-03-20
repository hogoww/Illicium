Class {
	#name : #MAStackInterpreterRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-generatedResource'
}

{ #category : #running }
MAStackInterpreterRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: StackInterpreter)
]
