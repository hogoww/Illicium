Class {
	#name : #IlliciumTestCase,
	#superclass : #IlliciumObject,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #asserting }
IlliciumTestCase >> assert: aBooleanCondition [
	^ self asFunctionCall: #CuAssertTrue withArguments: {
		RBArgumentNode named: #testCase.
		aBooleanCondition.
		}
]
