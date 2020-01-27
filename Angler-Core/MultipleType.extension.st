Extension { #name : #MultipleType }

{ #category : #'*Angler-Core' }
MultipleType >> asCType [
	^ TypeAmbiguity new types: types ; signal
]

{ #category : #'*Angler-Core' }
MultipleType >> createInstance [
	^ TypeAmbiguity new types: types ; signal
]

{ #category : #'*Angler-Core' }
MultipleType >> performReplacementUsing: bindings [ 
	" We don't tolerate types ambiguity in the code, so multiple types are out."
	^ TypeAmbiguity new types: types ; signal
]
