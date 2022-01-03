Class {
	#name : #CTestResultPharoError,
	#superclass : #CTestResult,
	#category : #'MAngler-Illicium-Results'
}

{ #category : #testing }
CTestResultPharoError class >> canHandleResult: aTestResult [
	"Done explicitly, it's not calculable from the resultString"
	^ false
]

{ #category : #testing }
CTestResultPharoError >> isPharoError [
	^ true
]

{ #category : #initialization }
CTestResultPharoError >> setDescription: aTestResult [
	"input should be an exception"
	description := aTestResult description
]
