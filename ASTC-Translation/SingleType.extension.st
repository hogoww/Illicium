Extension { #name : #SingleType }

{ #category : #'*ASTC-Translation' }
SingleType >> asCType [
	^ type asCType
]

{ #category : #'*ASTC-Translation' }
SingleType >> createInstance [
	^ type new
]

{ #category : #'*ASTC-Translation' }
SingleType >> performReplacementUsing: bindings [
	^ self class new type: (bindings at: type name ifAbsent:[ ReplacementTypeUnknown new type: type ; signal ]).
]
