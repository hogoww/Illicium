Class {
	#name : #FAAbstractSlotTranslator,
	#superclass : #Object,
	#instVars : [
		'stateTranslator'
	],
	#category : #'FAngler-Core-StateTranslation'
}

{ #category : #translation }
FAAbstractSlotTranslator >> stateTranslator [
	^ stateTranslator
]

{ #category : #translation }
FAAbstractSlotTranslator >> stateTranslator: aStateTranslator [
	stateTranslator := aStateTranslator
]

{ #category : #translation }
FAAbstractSlotTranslator >> translateSlot: aSlot [
	"this should return a C translation of the Slot"
	^ self subclassResponsibility
]

{ #category : #translation }
FAAbstractSlotTranslator >> typeOfSlot: aSlot [
	^ stateTranslator typeOfSlot: aSlot
]
