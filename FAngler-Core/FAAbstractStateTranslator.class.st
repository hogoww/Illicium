Class {
	#name : #FAAbstractStateTranslator,
	#superclass : #Object,
	#instVars : [
		'translators',
		'classTranslator'
	],
	#category : #'FAngler-Core-StateTranslation'
}

{ #category : #'translation-api' }
FAAbstractStateTranslator >> classTranslator [
	^ classTranslator
]

{ #category : #'translation-api' }
FAAbstractStateTranslator >> classTranslator: aClassTranslator [
	^ classTranslator := aClassTranslator
]

{ #category : #initialization }
FAAbstractStateTranslator >> initialize [
	translators := (Dictionary new: 2)
		at: #instanceVariableSlotTranslator put: (FAInstanceVariableSlotTranslator new stateTranslator: self; yourself);
		at: #classVariableSlotTranslator put: (FAClassVariableSlotTranslator new stateTranslator: self; yourself);
		yourself.
]

{ #category : #asserting }
FAAbstractStateTranslator >> shouldTranslateVariable: aVarName [
	^ classTranslator shouldTranslateVariable: aVarName
]

{ #category : #'translation-slot' }
FAAbstractStateTranslator >> translateClassVariableSlot: anClassVariableSlot [
	^ (translators at: #classVariableSlotTranslator) 
		translateSlot: anClassVariableSlot
]

{ #category : #'translation-slot' }
FAAbstractStateTranslator >> translateInstanceVariableSlot: anInstanceVariableSlot [
	^ (translators at: #instanceVariableSlotTranslator) 
		translateSlot: anInstanceVariableSlot
]

{ #category : #'translation-api' }
FAAbstractStateTranslator >> translateStateOf: aClassOrStruct [
	"Should return a compilation unit containing the state of a class or a struct"
	^ self subclassResponsibility 
]

{ #category : #typing }
FAAbstractStateTranslator >> typeOfSlot: aSlot [
	^ classTranslator typeOfSlot: aSlot
]
