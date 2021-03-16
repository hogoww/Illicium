Class {
	#name : #IlliciumClass,
	#superclass : #IlliciumObject,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #'instance creation' }
IlliciumClass >> new [
	"easier to have a general mechanism instead of a case by case."
	| type |
	type := methodTranslator getNodeTranslationType: receiverNode parent.
	
	^ type handleNewMessageSend.
]
