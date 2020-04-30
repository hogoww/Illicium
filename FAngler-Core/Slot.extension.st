Extension { #name : #Slot }

{ #category : #'*FAngler-Core' }
Slot >> acceptTranslator: aTranslator [
	^ aTranslator translateInstanceVariableSlot: self
]
