Extension { #name : #MultipleType }

{ #category : #'*ASTC-Translation' }
MultipleType >> asCType [
	^ TypeAmbiguity new types: types ; signal
]

{ #category : #'*ASTC-Translation' }
MultipleType >> createInstance [
	^ TypeAmbiguity new types: types ; signal
]

{ #category : #'*ASTC-Translation' }
MultipleType >> performReplacementUsing: bindings [ 
	" We don't tolerate types ambiguity in the code, so multiple types are out."
	^ TypeAmbiguity new types: types ; signal
]
