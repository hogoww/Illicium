Class {
	#name : #CTestResultFail,
	#superclass : #CTestResult,
	#category : #'MAngler-Illicium-Results'
}

{ #category : #testing }
CTestResultFail class >> canHandleResult: aTestResult [
	aTestResult isString ifFalse: [ ^ false ].
	^ ((aTestResult lines second last: 6) = 'failed') 
		or: [ (aTestResult lines last last: 6) = 'failed' ] 
]

{ #category : #testing }
CTestResultFail >> isFail [ 
	^ true
]

{ #category : #initialization }
CTestResultFail >> setDescription: aTestResult [
	description := aTestResult
]
