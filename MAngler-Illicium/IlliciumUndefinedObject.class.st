Class {
	#name : #IlliciumUndefinedObject,
	#superclass : #IlliciumObject,
	#category : #'MAngler-Illicium-messages-translators'
}

{ #category : #type }
IlliciumUndefinedObject class >> asCType [
	^ #void
]

{ #category : #'message performing' }
IlliciumUndefinedObject >> perform: aMessage withArguments: anArray [
	self halt.
]

{ #category : #'message performing' }
IlliciumUndefinedObject >> value [ 
	self flag: #hack.
	^ #null
]
