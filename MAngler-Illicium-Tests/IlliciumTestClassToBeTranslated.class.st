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
IlliciumTestClassToBeTranslated >> testWithAssertOnePlusOneEqualsThree [
	"failing test on purpose"
	self assert: 1 + 1 = 3
]

{ #category : #tests }
IlliciumTestClassToBeTranslated >> testWithAssertOnePlusOneEqualsTwo [
	self assert: 1 + 1 = 2
]

{ #category : #tests }
IlliciumTestClassToBeTranslated >> testWithAssertTrue [
	self assert: true
]
