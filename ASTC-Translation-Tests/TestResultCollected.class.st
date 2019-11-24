Class {
	#name : #TestResultCollected,
	#superclass : #TestResult,
	#instVars : [
		'errorKinds',
		'failureKinds'
	],
	#category : #'ASTC-Translation-Tests'
}

{ #category : #adding }
TestResultCollected >> addError: aTestCase [
	[ aTestCase performTest ] on: Exception do: [:e| errorKinds add: e ].
	^super addError: aTestCase
]

{ #category : #adding }
TestResultCollected >> addFailure: aTestCase [
	[ aTestCase performTest ] on: Exception do: [:e| failureKinds add: e ].
	^super addFailure: aTestCase
]

{ #category : #accessing }
TestResultCollected >> errorKinds [
	^ errorKinds
]

{ #category : #accessing }
TestResultCollected >> initialize [
	super initialize.
	errorKinds := Bag new.
	failureKinds := Bag new.
]
