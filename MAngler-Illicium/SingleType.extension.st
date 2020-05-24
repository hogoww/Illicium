Extension { #name : #SingleType }

{ #category : #'*MAngler-Illicium' }
SingleType >> asCType [
	^ type
]

{ #category : #'*MAngler-Illicium' }
SingleType >> createInstance [
	^ type new
]

{ #category : #'*MAngler-Illicium' }
SingleType >> performReplacementUsing: bindings [
	^ self class new type: (bindings at: type name ifAbsent:[ ReplacementTypeUnknown new type: type ; signal ]).
]
