Class {
	#name : #CTestResultCCompilationError,
	#superclass : #CTestResult,
	#category : #'MAngler-Illicium-Results'
}

{ #category : #testing }
CTestResultCCompilationError class >> canHandleResult: aTestResult [
	"idk"
	^ false 
]

{ #category : #testing }
CTestResultCCompilationError >> isCCompilationError [
	^ true

]

{ #category : #Initialization }
CTestResultCCompilationError >> setDescription: aTestResult [
	description := aTestResult
]
