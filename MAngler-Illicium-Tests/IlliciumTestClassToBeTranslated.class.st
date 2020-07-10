Class {
	#name : #IlliciumTestClassToBeTranslated,
	#superclass : #TestCase,
	#category : #'MAngler-Illicium-Tests-Support'
}

{ #category : #testing }
IlliciumTestClassToBeTranslated class >> isAbstract [ 
	"Not technically abstract, but the testXX are not tests"
	^ true
]

{ #category : #tests }
IlliciumTestClassToBeTranslated >> testEmpty [
]

{ #category : #tests }
IlliciumTestClassToBeTranslated >> testWithAssertTrue [
	self assert: true
]
