Extension { #name : #ClassDescription }

{ #category : #'*Angler-Illicium' }
ClassDescription >> asCType [
	^ #'struct ' , self name
]
