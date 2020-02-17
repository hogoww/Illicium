Extension { #name : #SingleType }

{ #category : #'*Angler-Illicium' }
SingleType >> asCType [
	^ type asCType
]

{ #category : #'*Angler-Illicium' }
SingleType >> createInstance [
	^ type new
]

{ #category : #'*Angler-Illicium' }
SingleType >> performReplacementUsing: bindings [
	^ self class new type: (bindings at: type name ifAbsent:[ ReplacementTypeUnknown new type: type ; signal ]).
]
