Class {
	#name : #IlliciumTestCase,
	#superclass : #IlliciumUserClass,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #include }
IlliciumTestCase class >> includeFileName [
	^ #'"cTestCase.h"'
]

{ #category : #asserting }
IlliciumTestCase >> assert: aBooleanCondition [
	self includeMyFile.
	^ self asFunctionCall: #assert: withArguments: { aBooleanCondition }
]

{ #category : #asserting }
IlliciumTestCase >> assert: actual equals: expected [ 
	"this is transformed to self assert: actual = expected.
	Easier from a typing point of view."
	| fakeMessageNode |
	"should probably check that the types of both arguments are the same."
	self flag: #missingCheck.
	fakeMessageNode := RBMessageNode receiver: actual selector: #= arguments: { expected }. 
	^ self assert: fakeMessageNode
]
