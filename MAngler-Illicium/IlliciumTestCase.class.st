Class {
	#name : #IlliciumTestCase,
	#superclass : #IlliciumObject,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #include }
IlliciumTestCase class >> includeFileName [
	^ #'"CuTest.h"'
]

{ #category : #asserting }
IlliciumTestCase >> assert: aBooleanCondition [
	self includeMyFile.
	^ self asFunctionCall: #CuAssertTrue withArguments: {
		RBArgumentNode named: #testCase.
		aBooleanCondition.
		}
]
