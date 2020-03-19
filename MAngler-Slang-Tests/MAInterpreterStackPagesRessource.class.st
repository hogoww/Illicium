Class {
	#name : #MAInterpreterStackPagesRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-generatedResource'
}

{ #category : #running }
MAInterpreterStackPagesRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: InterpreterStackPages)
]
