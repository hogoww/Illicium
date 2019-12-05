Extension { #name : #CollectionType }

{ #category : #'*ASTC-Translation' }
CollectionType >> asCType [
	self halt.
	^ collectionType asCType
]

{ #category : #'*ASTC-Translation' }
CollectionType >> createInstance [
	^ collectionType createInstance elementType: elementType ; yourself
]

{ #category : #'*ASTC-Translation' }
CollectionType >> performReplacementUsing: bindings [
	^ self class new 
		collectionType: (collectionType performReplacementUsing: bindings);
		elementType: (elementType performReplacementUsing: bindings)
]
