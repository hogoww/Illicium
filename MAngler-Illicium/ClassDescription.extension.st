Extension { #name : #ClassDescription }

{ #category : #'*MAngler-Illicium' }
ClassDescription >> asCType [
	^ #'struct ' , self name
]
