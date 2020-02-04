Class {
	#name : #ANSlangTestResource,
	#superclass : #TestResource,
	#instVars : [
		'translator'
	],
	#category : #'Angler-Slang-Tests'
}

{ #category : #configuring }
ANSlangTestResource class >> resetAll [
	<script>
	self allSubclassesDo: [ :aResourceClass | aResourceClass reset ]
]

{ #category : #configuring }
ANSlangTestResource class >> translatorClass [
	"should return the method used for this tests translation"
	^ self subclassResponsibility
]

{ #category : #'instance creation' }
ANSlangTestResource >> newTranslatorWith: aClass [
	^ self class translatorClass new
		addClass: aClass;
		yourself
]
