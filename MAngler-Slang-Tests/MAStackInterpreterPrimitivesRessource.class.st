Class {
	#name : #MAStackInterpreterPrimitivesRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-generatedResource'
}

{ #category : #running }
MAStackInterpreterPrimitivesRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: StackInterpreterPrimitives)
]

{ #category : #accessing }
MAStackInterpreterPrimitivesRessource >> translator [
	^ translator
]

{ #category : #accessing }
MAStackInterpreterPrimitivesRessource >> translator: aTranslator [
	translator := aTranslator
]
