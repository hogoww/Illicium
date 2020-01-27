Extension { #name : #EmptyType }

{ #category : #'*Angler-Core' }
EmptyType >> asCType [
	^ NoTypeFound signal
]

{ #category : #'*Angler-Core' }
EmptyType >> createInstance [
	^ NoTypeFound signal
]

{ #category : #'*Angler-Core' }
EmptyType >> performReplacementUsing: bindings [
	^ NoTypeFound new signal
]
