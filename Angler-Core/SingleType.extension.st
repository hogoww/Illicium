Extension { #name : #SingleType }

{ #category : #'*Angler-Core' }
SingleType >> asCType [
	^ type asCType
]

{ #category : #'*Angler-Core' }
SingleType >> createInstance [
	^ type new
]

{ #category : #'*Angler-Core' }
SingleType >> performReplacementUsing: bindings [
	^ self class new type: (bindings at: type name ifAbsent:[ ReplacementTypeUnknown new type: type ; signal ]).
]
