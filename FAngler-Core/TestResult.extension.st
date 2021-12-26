Extension { #name : #TestResult }

{ #category : #'*FAngler-Core' }
TestResult >> hasFailuresOrErrors [
	^ self hasFailures or: [ self hasErrors ]
]
