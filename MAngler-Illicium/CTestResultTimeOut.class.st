Class {
	#name : #CTestResultTimeOut,
	#superclass : #CTestResult,
	#category : #'MAngler-Illicium-Results'
}

{ #category : #testing }
CTestResultTimeOut class >> canHandleResult: aTestResult [
	"Done explicitly, it's not calculable from the resultString"
	^ false
]

{ #category : #testing }
CTestResultTimeOut >> isTimeOut [ 
	^ true
]

{ #category : #initialization }
CTestResultTimeOut >> setDescription: aTestResult [
	" no op, no info are gathered for this class"
]
