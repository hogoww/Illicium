Extension { #name : #TestAsserter }

{ #category : #'*Angler-Core-Tests' }
TestAsserter class >> classForTestResult [
	"Returns the class of the test result"
	^ TestResultCollected
]
