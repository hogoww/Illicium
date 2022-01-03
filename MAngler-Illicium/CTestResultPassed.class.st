Class {
	#name : #CTestResultPassed,
	#superclass : #CTestResult,
	#category : #'MAngler-Illicium-Results'
}

{ #category : #'as yet unclassified' }
CTestResultPassed class >> canHandleResult: aTestResult [
	^ (aTestResult lines last last: 4) = 'done'
]

{ #category : #testing }
CTestResultPassed >> isPass [
	^ true 
]

{ #category : #initializing }
CTestResultPassed >> setDescription: aTestResult [
	" no op, no info are gathered for this class"
]
