Class {
	#name : #CTestResultUnexpected,
	#superclass : #CTestResult,
	#category : #'MAngler-Illicium-Results'
}

{ #category : #testing }
CTestResultUnexpected class >> canHandleResult: aTestResult [
	aTestResult isString ifFalse:[ ^ false ].
	^ aTestResult isEmpty
]

{ #category : #testing }
CTestResultUnexpected >> isUnexpected [
	^ true
]

{ #category : #initialization }
CTestResultUnexpected >> setDescription: aTestResult [
	description := aTestResult
]
