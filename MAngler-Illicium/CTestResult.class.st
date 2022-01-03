Class {
	#name : #CTestResult,
	#superclass : #Object,
	#instVars : [
		'description'
	],
	#category : #'MAngler-Illicium-Results'
}

{ #category : #'as yet unclassified' }
CTestResult class >> canHandleResult: aTestResult [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
CTestResult class >> for: aTestResult [
	| handler |
	handler := self subclasses 
		detect: 
			[ :class | 
				class canHandleResult: aTestResult ]
		ifNone: [ self error: 'No handler found' ].
	^ handler
		newFor: aTestResult
]

{ #category : #'as yet unclassified' }
CTestResult class >> newFor: aTestResult [
	^ self new
		setDescription: aTestResult;
		yourself
]

{ #category : #testing }
CTestResult >> isCCompilationError [
	^ false
]

{ #category : #testing }
CTestResult >> isFail [
	^ false
]

{ #category : #testing }
CTestResult >> isPass [
	^ false
]

{ #category : #testing }
CTestResult >> isPharoError [
	^ false
]

{ #category : #testing }
CTestResult >> isSegmentationFault [
	^ false
]

{ #category : #testing }
CTestResult >> isTimeOut [
	^ false
]

{ #category : #testing }
CTestResult >> isUnexpected [
	^ false
]

{ #category : #initializing }
CTestResult >> setDescription: aDescription [
	^ self subclassResponsibility
]
