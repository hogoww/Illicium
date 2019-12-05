Extension { #name : #CollectionType }

{ #category : #'*ASTC-Translation' }
CollectionType >> asCType [
	(collectionType = ASTCArray asTypeReification and: [ elementType = ASTCFloat asTypeReification ])
	ifTrue: [ ^ #'float*' ]	.
	"Will be improved case by case"
	self halt.
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
