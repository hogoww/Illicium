Extension { #name : #MultipleType }

{ #category : #'*Angler-Illicium' }
MultipleType >> asCType [
	^ TypeAmbiguity new types: types ; signal
]

{ #category : #'*Angler-Illicium' }
MultipleType >> createInstance [
	^ TypeAmbiguity new types: types ; signal
]

{ #category : #'*Angler-Illicium' }
MultipleType >> performReplacementUsing: bindings [ 
	" We don't tolerate types ambiguity in the code, so multiple types are out."
	^ TypeAmbiguity new types: types ; signal
]
