Class {
	#name : #CTestResultPassed,
	#superclass : #CTestResult,
	#category : #'MAngler-Illicium-Results'
}

{ #category : #testing }
CTestResultPassed class >> canHandleResult: aTestResult [
	aTestResult isString ifFalse: [ ^ false ].
	^ (aTestResult lines last last: 4) = 'done'
]

{ #category : #testing }
CTestResultPassed >> isPass [
	^ true 
]

{ #category : #initializing }
CTestResultPassed >> setDescription: aTestResult [
	" no op, no info are gathered for this class"
	description := 'passed'
]
