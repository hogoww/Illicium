Extension { #name : #AssociationType }

{ #category : #'*ASTC-Translation' }
AssociationType >> performReplacementUsing: bindings [
	^ self class new
		keyType: (keyType performReplacementUsing: bindings);
		valueType: (valueType performReplacementUsing: bindings)
]
