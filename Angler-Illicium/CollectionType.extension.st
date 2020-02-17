Extension { #name : #CollectionType }

{ #category : #'*Angler-Illicium' }
CollectionType >> asCType [
	(collectionType = IlliciumArray asTypeReification and: [ elementType = IlliciumFloat asTypeReification ])
	ifTrue: [ ^ #'float*' ].

	(collectionType = IlliciumArray asTypeReification and: [ elementType = IlliciumSmallInteger asTypeReification ])
	ifTrue: [ ^ #'int*' ]	.
	"Will be improved case by case"
	self halt.
]

{ #category : #'*Angler-Illicium' }
CollectionType >> createInstance [
	^ collectionType createInstance elementType: elementType ; yourself
]

{ #category : #'*Angler-Illicium' }
CollectionType >> performReplacementUsing: bindings [
	^ self class new 
		collectionType: (collectionType performReplacementUsing: bindings);
		elementType: (elementType performReplacementUsing: bindings);
		properties: properties;
		yourself
]
