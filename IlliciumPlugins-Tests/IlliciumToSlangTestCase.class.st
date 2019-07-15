Class {
	#name : #IlliciumToSlangTestCase,
	#superclass : #ParametrizedTestCase,
	#instVars : [
		'strategy'
	],
	#category : #'IlliciumPlugins-Tests'
}

{ #category : #'building suites' }
IlliciumToSlangTestCase class >> testParameters [

	^ ParametrizedTestMatrix new
		forSelector: #strategy addOptions: { 
			ILSlangGeneratorForTest new.
			ILIlliciumGeneratorForTest new };
		yourself
]

{ #category : #generation }
IlliciumToSlangTestCase >> generate: aSelector from: aClass [

	^ strategy generateCodeForSelector: aSelector inClass: aClass
]

{ #category : #accessing }
IlliciumToSlangTestCase >> strategy [
	^ strategy
]

{ #category : #accessing }
IlliciumToSlangTestCase >> strategy: anObject [
	strategy := anObject
]
