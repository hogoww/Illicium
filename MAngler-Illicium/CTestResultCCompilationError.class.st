Class {
	#name : #CTestResultCCompilationError,
	#superclass : #CTestResult,
	#category : #'MAngler-Illicium-Results'
}

{ #category : #testing }
CTestResultCCompilationError class >> canHandleResult: aTestResult [
	self flag: #wip.
	^ (aTestResult lines last findString: 'error') > 0
]

{ #category : #testing }
CTestResultCCompilationError >> isCCompilationError [
	^ true

]

{ #category : #Initialization }
CTestResultCCompilationError >> setDescription: aTestResult [
	description := aTestResult
]
