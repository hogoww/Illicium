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

{ #category : #accessing }
CDifferentialTestResult >> bothFailing [
	^  pharoTestResult hasFailuresOrErrors and: cTestResult isPass not
]

{ #category : #accessing }
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

{ #category : #accessing }
CDifferentialTestResult >> isEquivalent [
	^ false
]

{ #category : #accessing }
CDifferentialTestResult >> isNonEquivalent [
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
