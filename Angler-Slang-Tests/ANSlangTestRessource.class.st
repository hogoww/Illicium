Class {
	#name : #ANSlangTestRessource,
	#superclass : #TestResource,
	#instVars : [
		'translator'
	],
	#category : #'Angler-Slang-Tests'
}

{ #category : #configuring }
ANSlangTestRessource class >> translatorClass [
	^ ANSlangTranslator
]

{ #category : #'instance creation' }
ANSlangTestRessource >> newTranslatorWith: aClass [
	^ self class translatorClass new
		addClass: aClass;
		yourself
]
