Class {
	#name : #IlliciumOrderedCollection,
	#superclass : #IlliciumAbstractCollection,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #adding }
IlliciumOrderedCollection >> add: anElement [
	receiverNode isNode ifFalse: [ self error: 'Currently only defined for translated arguments' ].
	
	^ self asFunctionCall: #addElement_To
			withTranslatedArguments: { anElement acceptVisitor: methodTranslator . receiverNode }.
]
