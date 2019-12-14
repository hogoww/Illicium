Extension { #name : #ClassDescription }

{ #category : #'*ASTC-Translation' }
ClassDescription >> asCType [
	^ #'struct ' , self name
]
