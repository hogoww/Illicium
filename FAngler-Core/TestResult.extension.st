Extension { #name : #TestResult }

{ #category : #'*FAngler-Core' }
TestResult >> addError: aTestCase [
	"We cannot use self errors as that incorporates test expectations and so does not return the stored collection."
	aTestCase cleanUpInstanceVariables.
	^errors add: aTestCase
]

{ #category : #'*FAngler-Core' }
TestResult >> addFailure: aTestCase [
	"We cannot use self failures as that incorporates test expectations and so does not return the stored collection."
	aTestCase cleanUpInstanceVariables.
	^failures add: aTestCase
]

{ #category : #'*FAngler-Core' }
TestResult >> addPass: aTestCase [
	"We cannot use self passed as that incorporates test expectations and so does not return the stored collection."
	aTestCase cleanUpInstanceVariables.
	^passed add: aTestCase
]

{ #category : #'*FAngler-Core' }
TestResult >> hasFailuresOrErrors [
	^ self hasFailures or: [ self hasErrors ]
]
