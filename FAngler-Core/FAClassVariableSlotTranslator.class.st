Class {
	#name : #FAClassVariableSlotTranslator,
	#superclass : #FAAbstractSlotTranslator,
	#category : #'FAngler-Core-StateTranslation'
}

{ #category : #translation }
FAClassVariableSlotTranslator >> translateSlot: aSlot [
	^ ASTCPreprocessorDefine new
		name: aSlot name;
		value: aSlot value;
		yourself
]
