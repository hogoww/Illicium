Extension { #name : #EmptyType }

{ #category : #'*Angler-Illicium' }
EmptyType >> asCType [
	^ NoTypeFound signal
]

{ #category : #'*Angler-Illicium' }
EmptyType >> createInstance [
	^ NoTypeFound signal
]

{ #category : #'*Angler-Illicium' }
EmptyType >> performReplacementUsing: bindings [
	^ NoTypeFound new signal
]
