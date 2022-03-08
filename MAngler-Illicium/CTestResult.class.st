Class {
	#name : #CTestResult,
	#superclass : #Object,
	#instVars : [
		'testMethod',
		'description'
	],
	#category : #'MAngler-Illicium-Results'
}

{ #category : #testing }
CTestResult class >> canHandleResult: aTestResult [
	^ self subclassResponsibility
]

{ #category : #creating }
CTestResult class >> forMethod: aMethod withResult: aTestResult [
	| handler |
	handler :=CTestResult subclasses 
		detect: 
			[ :class | 
				class canHandleResult: aTestResult ]
		ifNone: [ self error: 'No handler found' ].
	^ handler
		newForMethod: aMethod
		withResult: aTestResult
]

{ #category : #creating }
CTestResult class >> newForMethod: aMethod withResult: aTestResult [
	^ self new
		testMethod: aMethod;
		setDescription: aTestResult
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

{ #category : #testing }
CTestResult >> isVMCompilationError [
	^ false
]

{ #category : #initializing }
CTestResult >> setDescription: aDescription [
	^ self subclassResponsibility
]

{ #category : #accessing }
CTestResult >> testMethod [
	^ testMethod
]

{ #category : #accessing }
CTestResult >> testMethod: aTestMethod [
	testMethod := aTestMethod
]
