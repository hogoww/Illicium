Extension { #name : #CollectionType }

{ #category : #'*MAngler-Illicium' }
CollectionType >> asCType [
	(collectionType = IlliciumArray asTypeReification and: [ elementType = IlliciumFloat asTypeReification ])
	ifTrue: [ ^ #'float*' ].

	(collectionType = IlliciumArray asTypeReification and: [ elementType = IlliciumSmallInteger asTypeReification ])
	ifTrue: [ ^ #'int*' ]	.
	"Will be improved case by case"
	self halt.
]

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
