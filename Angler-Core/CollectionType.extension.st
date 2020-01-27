Extension { #name : #CollectionType }

{ #category : #'*Angler-Core' }
CollectionType >> asCType [
	(collectionType = ASTCArray asTypeReification and: [ elementType = ASTCFloat asTypeReification ])
	ifTrue: [ ^ #'float*' ].

	(collectionType = ASTCArray asTypeReification and: [ elementType = ASTCSmallInteger asTypeReification ])
	ifTrue: [ ^ #'int*' ]	.
	"Will be improved case by case"
	self halt.
]

{ #category : #'*Angler-Core' }
CollectionType >> createInstance [
	^ collectionType createInstance elementType: elementType ; yourself
]

{ #category : #'*Angler-Core' }
CollectionType >> performReplacementUsing: bindings [
	^ self class new 
		collectionType: (collectionType performReplacementUsing: bindings);
		elementType: (elementType performReplacementUsing: bindings);
		properties: properties;
		yourself
]
