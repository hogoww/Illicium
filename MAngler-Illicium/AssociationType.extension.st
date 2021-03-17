Extension { #name : #AssociationType }

{ #category : #'*MAngler-Illicium' }
AssociationType >> asCType [
	^ CType new type: #'llDictionary*' ; yourself
]
