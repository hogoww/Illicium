Class {
	#name : #CTestResultVMCompilationError,
	#superclass : #CTestResult,
	#category : #'MAngler-Illicium-Results'
}

{ #category : #testing }
CTestResultVMCompilationError class >> canHandleResult: aTestResult [
	"Only hand created"
	^ false
]

{ #category : #initializing }
CTestResultVMCompilationError >> isVMCompilationError [
	^ true
]

{ #category : #initializing }
CTestResultVMCompilationError >> setDescription: aDescription [
	description := aDescription
]
