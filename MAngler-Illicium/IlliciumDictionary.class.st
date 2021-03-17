Class {
	#name : #IlliciumDictionary,
	#superclass : #IlliciumAbstractCollection,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #translation }
IlliciumDictionary class >> handleNewMessageSendFor: anAssociationType [
	" curently the association types are hardcoded "
	"should include myfile, but we do not have access to the method translator."
	self flag: #incomplete.
	self flag: #hardcoded.
	^ self new asFunctionCall: 'ILNewDictionary'
]

{ #category : #include }
IlliciumDictionary class >> includeFileName [
	^ '"llDictionary.h"'
]

{ #category : #accessing }
IlliciumDictionary >> at: aKey [
	self includeMyFile.
	^ self asFunctionCall: #ILAt withArguments: { receiverNode . aKey }
]

{ #category : #accessing }
IlliciumDictionary >> at: aKey put: aValue [
	self includeMyFile.
	^ self asFunctionCall: #ILAtPut withArguments: { receiverNode . aKey . aValue }
]
