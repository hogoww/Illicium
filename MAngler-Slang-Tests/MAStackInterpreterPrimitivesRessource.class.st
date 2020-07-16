Class {
	#name : #MAStackInterpreterPrimitivesRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-GeneratedResource'
}

{ #category : #running }
MAStackInterpreterPrimitivesRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: StackInterpreterPrimitives)
]
