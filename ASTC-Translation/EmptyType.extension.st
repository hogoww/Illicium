Extension { #name : #EmptyType }

{ #category : #'*ASTC-Translation' }
EmptyType >> createInstance [
	^ NoTypeFound signal
]

{ #category : #'*ASTC-Translation' }
EmptyType >> performReplacementUsing: bindings [
	^ NoTypeFound new signal
]
