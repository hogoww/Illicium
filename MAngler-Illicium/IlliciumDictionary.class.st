Class {
	#name : #IlliciumDictionary,
	#superclass : #IlliciumAbstractCollection,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #translation }
IlliciumDictionary class >> handleNewMessageSendFor: anAssociationType [
	" curently the association types are hardcoded "
	self flag: #hardcoded.
	^ self new asFunctionCall: 'ILnewDict'
]

{ #category : #accessing }
IlliciumDictionary >> at: aKey put: aValue [
	^ self asFunctionCall: #ILatPut withArguments: { receiverNode . aKey . aValue }
]
