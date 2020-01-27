Extension { #name : #ClassDescription }

{ #category : #'*Angler-Core' }
ClassDescription >> asCType [
	^ #'struct ' , self name
]
