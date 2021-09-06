Class {
	#name : #TestResultCollected,
	#superclass : #TestResult,
	#instVars : [
		'errorKinds',
		'failureKinds'
	],
	#category : #'MAngler-Illicium-Tests'
}

{ #category : #adding }
TestResultCollected >> addAllResults: aTestResults [
	super addAllResults: aTestResults.
	failureKinds addAll: aTestResults failureKinds.
	errorKinds addAll: aTestResults errorKinds.
	^ self
]

{ #category : #adding }
TestResultCollected >> addError: aTestCase [
	| erroredTest |
	self doNotUse.
	[ aTestCase setUp performTest ]
		on: Exception
		do: [ :e | 
			erroredTest := errorKinds
				at: e class name, ' ',e messageText
				ifAbsentPut: [ OrderedCollection new ].
			erroredTest add: e class name ].
	^ super addFailure: aTestCase class -> (aTestCase selector)
]

{ #category : #adding }
TestResultCollected >> addFailure: aTestCase [
	| erroredTest |
	self doNotUse.
	[ aTestCase setUp performTest ]
		on: Exception
		do: [ :e | 
			erroredTest := failureKinds
				at: e class name
				ifAbsentPut: [ OrderedCollection new ].
			erroredTest add: e class name ].
	^ super addFailure: aTestCase class -> (aTestCase selector)
]

{ #category : #adding }
TestResultCollected >> doNotUse [

	"this leaks memory.
	It is keeping every tests environement used.
	For example the whole simulator & image loaded"



	self halt
]

{ #category : #accessing }
TestResultCollected >> errorKinds [
	^ errorKinds
]

{ #category : #adding }
TestResultCollected >> failureKinds [
	^ failureKinds
]

{ #category : #accessing }
TestResultCollected >> initialize [
	super initialize.
	errorKinds := Dictionary new.
	failureKinds := Dictionary new.
]
