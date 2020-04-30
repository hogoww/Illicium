Extension { #name : #ClassVariable }

{ #category : #'*FAngler-Core' }
ClassVariable >> acceptTranslator: aTranslator [
	^ aTranslator translateClassVariableSlot: self
]
