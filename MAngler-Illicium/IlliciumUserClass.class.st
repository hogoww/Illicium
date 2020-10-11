Class {
	#name : #IlliciumUserClass,
	#superclass : #IlliciumObject,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #type }
IlliciumUserClass class >> asCType [
	^ #sqInt
]

{ #category : #'reflective operations' }
IlliciumUserClass >> cCoerce: aVariable to: aType [
	^ methodTranslator forward: (MessageSend receiver: self receiverNode selector: #cCoerce:to: arguments: {aVariable. aType}) to: InterpreterProxy
]

{ #category : #'reflective operations' }
IlliciumUserClass >> doesNotUnderstand: aMessage [
	| functionCall |
	aMessage selector = #doesNotUnderstand: ifTrue: [ self error: 'infinite recursion' ].
	
	(methodTranslator methodFor: aMessage selector) 
		ifNotNil: [ 
			self asFunctionCall: aMessage selector withArguments: aMessage arguments.
			functionCall := self messageToFunctionCall: aMessage.
	
			functionCall arguments: ({ 'self' asCIdentifierNode } , functionCall arguments).
			^ functionCall
		 ].

	super doesNotUnderstand: aMessage
]
