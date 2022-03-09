Class {
	#name : #CDifferentialTestResult,
	#superclass : #Object,
	#instVars : [
		'testCase',
		'pharoTestResult',
		'cTestResult',
		'result',
		'pharoExecutionTime',
		'cExecutionTime'
	],
	#category : #'MAngler-Illicium-Results'
}

{ #category : #'as yet unclassified' }
CDifferentialTestResult class >> canHandle: aPharoResult and: aCResult [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
CDifferentialTestResult class >> handleTestCase: aTestCaseReference withPharoResult: aPharoResult andCResult: aCResult [
	| handler |
	handler := self subclasses detect: [ :aClass |
		aClass canHandle: aPharoResult and: aCResult ].
	
	^ handler new
		testCase: aTestCaseReference;
		pharoTestResult: aPharoResult;
		cTestResult: aCResult
]

{ #category : #testing }
CDifferentialTestResult >> bothFailing [
	^  pharoTestResult hasFailuresOrErrors and: [ cTestResult isPass not ]
]

{ #category : #testing }
CDifferentialTestResult >> bothPassed [
	^  pharoTestResult hasPassed and: [ cTestResult isPass ]
]

{ #category : #accessing }
CDifferentialTestResult >> cExecutionTime [

	^ cExecutionTime
]

{ #category : #accessing }
CDifferentialTestResult >> cExecutionTime: anObject [

	cExecutionTime := anObject
]

{ #category : #accessing }
CDifferentialTestResult >> cTestResult [

	^ cTestResult
]

{ #category : #accessing }
CDifferentialTestResult >> cTestResult: anObject [

	cTestResult := anObject
]

{ #category : #testing }
CDifferentialTestResult >> failedOnlyInC [
	^ self passedOnlyInSimulation
]

{ #category : #testing }
CDifferentialTestResult >> failsInGeneration [
	^ cTestResult isPass not
]

{ #category : #testing }
CDifferentialTestResult >> failsInSimulation [
	^ pharoTestResult hasPassed not
]

{ #category : #testing }
CDifferentialTestResult >> failsOnlyInSimulation [
	^ self passedOnlyInC 
]

{ #category : #testing }
CDifferentialTestResult >> isEquivalent [
	^ false
]

{ #category : #testing }
CDifferentialTestResult >> isNonEquivalent [
	^ false
]

{ #category : #testing }
CDifferentialTestResult >> passedInGeneration [
	^ cTestResult hasPassed
]

{ #category : #testing }
CDifferentialTestResult >> passedInSimulation [
	^  pharoTestResult hasPassed
]

{ #category : #testing }
CDifferentialTestResult >> passedOnlyInC [
	^ false
]

{ #category : #testing }
CDifferentialTestResult >> passedOnlyInSimulation [
	^ false
]

{ #category : #accessing }
CDifferentialTestResult >> pharoExecutionTime [

	^ pharoExecutionTime
]

{ #category : #accessing }
CDifferentialTestResult >> pharoExecutionTime: anObject [

	pharoExecutionTime := anObject
]

{ #category : #accessing }
CDifferentialTestResult >> pharoTestResult [

	^ pharoTestResult
]

{ #category : #accessing }
CDifferentialTestResult >> pharoTestResult: anObject [

	pharoTestResult := anObject
]

{ #category : #accessing }
CDifferentialTestResult >> result [

	^ result
]

{ #category : #accessing }
CDifferentialTestResult >> result: anObject [

	result := anObject
]

{ #category : #accessing }
CDifferentialTestResult >> testCase [

	^ testCase
]

{ #category : #accessing }
CDifferentialTestResult >> testCase: anObject [

	testCase := anObject
]
