Extension { #name : #AssociationType }

{ #category : #'*Angler-Core' }
AssociationType >> performReplacementUsing: bindings [
	^ self class new
		keyType: (keyType performReplacementUsing: bindings);
		valueType: (valueType performReplacementUsing: bindings)
]
