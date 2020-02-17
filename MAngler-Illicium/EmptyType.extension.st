Extension { #name : #EmptyType }

{ #category : #'*MAngler-Illicium' }
EmptyType >> asCType [
	^ NoTypeFound signal
]

{ #category : #'*MAngler-Illicium' }
EmptyType >> createInstance [
	^ NoTypeFound signal
]

{ #category : #'*MAngler-Illicium' }
EmptyType >> performReplacementUsing: bindings [
	^ NoTypeFound new signal
]
