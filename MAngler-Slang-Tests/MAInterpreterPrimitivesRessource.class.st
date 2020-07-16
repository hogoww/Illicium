Class {
	#name : #MAInterpreterPrimitivesRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-GeneratedResource'
}

{ #category : #running }
MAInterpreterPrimitivesRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: InterpreterPrimitives)
]
