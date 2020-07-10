Class {
	#name : #IlliciumTestCase,
	#superclass : #IlliciumObject,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #asserting }
IlliciumTestCase >> assert: aBooleanCondition [
	^ self asFunctionCall: #CuAssert withArguments: {
		RBArgumentNode named: #tc. 
		RBLiteralValueNode value: nil.
		aBooleanCondition.
		}
]
