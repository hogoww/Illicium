Class {
	#name : #FAClassStateTranslator,
	#superclass : #Object,
	#instVars : [
		'translators'
	],
	#category : #'FAngler-Core-StateTranslation'
}

{ #category : #initialization }
FAClassStateTranslator >> initialize [
	translators := Dictionary new: 2;
		at: #instanceVariableSlotTranslator put: (FAInstanceVariableSlotTranslator new translator: self; yourself);
		at: #classVariableSlotTranslator put: (FAClassVariableSlotTranslator new translator: self; yourself);
		yourself.
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

	aClass allSlots collect: [:aSlot | aSlot acceptTranslator: self ] into: cu.
	aClass allClassVariables collect: [:aSlot | aSlot acceptTranslator: self ] into: cu.
	"aClass allSharedPools collect: [:aSlot | aSlot acceptTranslator: self ] into: cu."
		
	^ cu


]
