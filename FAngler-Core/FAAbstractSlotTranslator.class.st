Class {
	#name : #FAAbstractSlotTranslator,
	#superclass : #Object,
	#instVars : [
		'classTranslator'
	],
	#category : #'FAngler-Core-StateTranslation'
}

{ #category : #'as yet unclassified' }
FAAbstractSlotTranslator >> translateSlot: aSlot [
	"this should return a C translation of the Slot"
	^ self subclassResponsibility
]
