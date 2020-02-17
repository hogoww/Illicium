Extension { #name : #TestAsserter }

{ #category : #'*Angler-Illicium-Tests' }
TestAsserter class >> classForTestResult [
	"Returns the class of the test result"
	^ TestResultCollected
]
