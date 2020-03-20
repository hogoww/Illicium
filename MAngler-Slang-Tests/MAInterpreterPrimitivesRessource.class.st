Class {
	#name : #MAInterpreterPrimitivesRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-generatedResource'
}

{ #category : #running }
MAInterpreterPrimitivesRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: InterpreterPrimitives)
]
