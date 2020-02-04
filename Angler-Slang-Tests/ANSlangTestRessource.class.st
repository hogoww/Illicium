Class {
	#name : #ANSlangTestRessource,
	#superclass : #TestResource,
	#instVars : [
		'translator'
	],
	#category : #'Angler-Slang-Tests'
}

{ #category : #configuring }
ANSlangTestRessource class >> resetAll [
	<script>
	self allSubclassesDo: [ :aResourceClass | aResourceClass reset ]
]

{ #category : #configuring }
ANSlangTestRessource class >> translatorClass [
	"should return the method used for this tests translation"
	^ self subclassResponsibility
]

{ #category : #'instance creation' }
ANSlangTestRessource >> newTranslatorWith: aClass [
	^ self class translatorClass new
		addClass: aClass;
		yourself
]
