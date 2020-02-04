Class {
	#name : #ANSlangVMTestResource,
	#superclass : #ANSlangTestResource,
	#category : #'Angler-Slang-Tests'
}

{ #category : #configuring }
ANSlangVMTestResource class >> translatorClass [
	^ ANSlangTranslator
]
