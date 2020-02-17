Class {
	#name : #MASlangTestResource,
	#superclass : #TestResource,
	#instVars : [
		'translator'
	],
	#category : #'MAngler-Slang-Tests-generated-tests-base'
}

{ #category : #configuring }
MASlangTestResource class >> resetAll [
	<script>
	self allSubclassesDo: [ :aResourceClass | aResourceClass reset ]
]

{ #category : #configuring }
MASlangTestResource class >> translatorClass [
	"should return the method used for this tests translation"
	^ self subclassResponsibility
]

{ #category : #'instance creation' }
MASlangTestResource >> newTranslatorWith: aClass [
	^ self class translatorClass new
		program: MASlangProgram new;
		addClass: aClass;
		beStrict;
		yourself
]
