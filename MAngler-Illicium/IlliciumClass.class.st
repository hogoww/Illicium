Class {
	#name : #IlliciumClass,
	#superclass : #IlliciumObject,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #'instance creation' }
IlliciumClass >> new [
	"easier to have a general mechanism instead of a case by case."
	| type receiverClass |
	type := methodTranslator getNodeTranslationType: receiverNode parent.
	receiverClass := (receiverNode propertyAt: #type) type.
	
	receiverClass = Dictionary class ifTrue: [ 	^ type handleNewMessageSend ].
		
	(receiverClass lookupSelector: #new) = (Behavior >> #new)
		ifFalse: [ self shouldBeImplemented "this requires some more work" ].
	"ifFalse"
	
	type isSingleType
		ifTrue: [ ^ self asFunctionCall: #new withTranslatedArguments: { ASTCIdentifier id: #self } ].
	"similar behavior as the Pharo news" 

	^ type handleNewMessageSend
]
