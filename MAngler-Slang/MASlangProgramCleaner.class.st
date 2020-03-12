"
My aim is to clean the program of methods that are tagged as such.
An example of this can be seen in MASlangRequiredInliningMethodTagger.
"
Class {
	#name : #MASlangProgramCleaner,
	#superclass : #Object,
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #accessing }
MASlangProgramCleaner class >> propertyName [
	^ #shouldBeRemoved
]

{ #category : #'as yet unclassified' }
MASlangProgramCleaner >> applyOnProgram: aProgram [
	aProgram methodsDo: [ :aMethod |
		(aMethod hasProperty: self class propertyName) 
			ifTrue:[ aProgram removeMethod: aMethod ] ]
]
