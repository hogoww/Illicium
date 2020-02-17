Class {
	#name : #IlliciumUserClass,
	#superclass : #IlliciumObject,
	#category : #'Angler-Illicium-messages-translators'
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
	self flag: #checks ."needs to check that the message exists in the original class"
	aMessage selector = #doesnNotUnderstand: ifTrue:[ self error: 'infinite recursion'].
	
	^ self messageToFunctionCall: aMessage

]
