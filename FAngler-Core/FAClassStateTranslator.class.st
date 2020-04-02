Class {
	#name : #FAClassStateTranslator,
	#superclass : #Object,
	#instVars : [
		'translators',
		'classTranslator'
	],
	#category : #'FAngler-Core-StateTranslation'
}

{ #category : #'translation-api' }
FAClassStateTranslator >> classTranslator [
	^ classTranslator
]

{ #category : #'translation-api' }
FAClassStateTranslator >> classTranslator: aClassTranslator [
	^ classTranslator := aClassTranslator
]

{ #category : #initialization }
FAClassStateTranslator >> initialize [
	translators := (Dictionary new: 2)
		at: #instanceVariableSlotTranslator put: (FAInstanceVariableSlotTranslator new stateTranslator: self; yourself);
		at: #classVariableSlotTranslator put: (FAClassVariableSlotTranslator new stateTranslator: self; yourself);
		yourself.
]

{ #category : #asserting }
FAClassStateTranslator >> shouldTranslateVariable: aVarName [
	^ classTranslator shouldTranslateVariable: aVarName
]

{ #category : #'translation-slot' }
FAClassStateTranslator >> translateClassVariableSlot: anClassVariableSlot [
	^ (translators at: #classVariableSlotTranslator) 
		translateSlot: anClassVariableSlot
]

{ #category : #'translation-slot' }
FAClassStateTranslator >> translateInstanceVariableSlot: anInstanceVariableSlot [
	^ (translators at: #instanceVariableSlotTranslator) 
		translateSlot: anInstanceVariableSlot
]

{ #category : #'translation-api' }
FAClassStateTranslator >> translateStateOf: aClass [
	| cu |
	"not sure SharedPoolVariables are are considered in slang"	
	cu := ASTCCompilationUnit new.	
	
	"We only translate the current's class slots, since we're treating each class in the hierarchy, and there is no polymorphism. (besides VMclass, will see in time"
	aClass slots collect: [:aSlot | aSlot acceptTranslator: self ] into: cu.
	"aClass classVariables collect: [:aSlot | aSlot acceptTranslator: self ] into: cu."
	"aClass sharedPools collect: [:aSlot | aSlot acceptTranslator: self ] into: cu."
	^ cu
]

{ #category : #typing }
FAClassStateTranslator >> typeOfSlot: aSlot [
	^ classTranslator typeOfSlot: aSlot
]
