Class {
	#name : #MAInterpreterStackPagesRessource,
	#superclass : #MASlangVMTestResource,
	#category : #'MAngler-Slang-Tests-GeneratedResource'
}

{ #category : #running }
MAInterpreterStackPagesRessource >> setUp [
	super setUp.
	self translator: (self newTranslatorWith: InterpreterStackPages)
]
