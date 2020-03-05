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

{ #category : #accessing }
MAStackInterpreterRessource >> translator [
	^ translator
]

{ #category : #accessing }
MAStackInterpreterRessource >> translator: aTranslator [
	translator := aTranslator
]
