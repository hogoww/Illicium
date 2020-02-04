Class {
	#name : #ANSlangPluginTestResource,
	#superclass : #ANSlangTestResource,
	#category : #'Angler-Slang-Tests'
}

{ #category : #configuring }
ANSlangPluginTestResource class >> translatorClass [
	^ ANSlangPluginTranslator
]
