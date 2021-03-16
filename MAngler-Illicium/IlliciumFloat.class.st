Class {
	#name : #IlliciumFloat,
	#superclass : #IlliciumNumber,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #type }
IlliciumFloat class >> asCType [
	^ #float
]

{ #category : #default }
IlliciumFloat class >> defaultValue [
	^ 0.0
]
