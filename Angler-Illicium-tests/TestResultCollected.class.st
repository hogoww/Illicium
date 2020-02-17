Class {
	#name : #TestResultCollected,
	#superclass : #TestResult,
	#instVars : [
		'errorKinds',
		'failureKinds'
	],
	#category : #'Angler-Illicium-tests'
}

{ #category : #adding }
TestResultCollected >> addError: aTestCase [
	| erroredTest |
	[ aTestCase setUp performTest ]
		on: Exception
		do: [ :e | 
			erroredTest := errorKinds
				at: e class name, ' ',e messageText
				ifAbsentPut: [ OrderedCollection new ].
			erroredTest add: aTestCase ].
	^ super addError: aTestCase
]

{ #category : #adding }
TestResultCollected >> addFailure: aTestCase [
	| erroredTest |
	[ aTestCase setUp performTest ]
		on: Exception
		do: [ :e | 
			erroredTest := failureKinds
				at: e messageText
				ifAbsentPut: [ OrderedCollection new ].
			erroredTest add: aTestCase ].
	^ super addFailure: aTestCase
]

{ #category : #accessing }
TestResultCollected >> errorKinds [
	^ errorKinds
]

{ #category : #accessing }
TestResultCollected >> initialize [
	super initialize.
	errorKinds := Dictionary new.
	failureKinds := Dictionary new.
]
