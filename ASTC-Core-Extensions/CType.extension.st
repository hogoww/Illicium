Extension { #name : #CType }

{ #category : #'*ASTC-Core-Extensions' }
CType >> asCTypeNode [
	^ (SingleType new type: self ; yourself) asCTypeNode
]
