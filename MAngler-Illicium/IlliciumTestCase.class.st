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

{ #category : #asserting }
IlliciumTestCase >> assert: actual  equals: expected [ 
	"this is transformed to self assert: actual = expected.
	Easier from a typing point of view."
	| fakeMessageNode |
	fakeMessageNode := RBMessageNode receiver: actual selector: #= arguments: { expected }. 
	^ self assert: fakeMessageNode
]
