Class {
	#name : #IlliciumAbstractCollection,
	#superclass : #IlliciumObject,
	#instVars : [
		'elementType'
	],
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #accessing }
IlliciumAbstractCollection >> elementType [
	^ elementType
]

{ #category : #accessing }
IlliciumAbstractCollection >> elementType: aType [
	elementType := aType
]
