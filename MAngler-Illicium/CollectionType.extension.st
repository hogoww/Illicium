Extension { #name : #CollectionType }

{ #category : #'*MAngler-Illicium' }
CollectionType >> createInstance [
	^ collectionType createInstance elementType: elementType ; yourself
]

{ #category : #'*MAngler-Illicium' }
CollectionType >> performReplacementUsing: bindings [
	| newCollection |
	newCollection :=  self class new 
		collectionType: (collectionType performReplacementUsing: bindings);
		properties: properties;
		yourself.
	elementType isEmptyType not ifTrue: [
		newCollection elementType: (elementType performReplacementUsing: bindings)
		].
	^ newCollection
]
