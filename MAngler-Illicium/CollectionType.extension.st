Extension { #name : #CollectionType }

{ #category : #'*MAngler-Illicium' }
CollectionType >> asCType [
	| cType |
	cType := (CType new initialSymbol: #buildByAsCType ; yourself).

	cType type: elementType asCType.
	collectionType = Array asTypeReification ifTrue: [ 
		self size
			ifNil: [ self error: 'Not handled curently'. "don't know" ]
			ifNotNil: [ :size | cType addStaticArrayDeclarationOfSize: self size ]
		].

	^ cType
]

{ #category : #'*MAngler-Illicium' }
CollectionType >> createInstance [
	^ collectionType createInstance elementType: elementType ; yourself
]

{ #category : #'*MAngler-Illicium' }
CollectionType >> handleNewMessageSend [
	^ collectionType type handleNewMessageSendFor: elementType
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
