Extension { #name : #TestAsserter }

{ #category : #'*Angler-Illicium-tests' }
TestAsserter class >> classForTestResult [
	"Returns the class of the test result"
	^ TestResultCollected
]
