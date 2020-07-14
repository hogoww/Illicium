Extension { #name : #CType }

{ #category : #'*FAngler-Core' }
CType >> asCTypeNode [
	^ (SingleType new type: self ; yourself) asCTypeNode
]
