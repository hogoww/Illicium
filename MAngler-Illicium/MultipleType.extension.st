Extension { #name : #MultipleType }

{ #category : #'*MAngler-Illicium' }
MultipleType >> asCType [
	^ TypeAmbiguity new types: types ; signal
]

{ #category : #'*MAngler-Illicium' }
MultipleType >> createInstance [
	^ TypeAmbiguity new types: types ; signal
]

{ #category : #'*MAngler-Illicium' }
MultipleType >> performReplacementUsing: bindings [ 
	" We don't tolerate types ambiguity in the code, so multiple types are out."
	^ TypeAmbiguity new types: types ; signal
]
