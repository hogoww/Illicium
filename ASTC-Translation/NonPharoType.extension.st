Extension { #name : #NonPharoType }

{ #category : #'*ASTC-Translation' }
NonPharoType >> asCType [
	^ type
]

{ #category : #'*ASTC-Translation' }
NonPharoType >> createInstance [
	^ self shouldNotImplement
]

{ #category : #'*ASTC-Translation' }
NonPharoType >> performReplacementUsing: bindings [
	^ self shouldNotImplement
]
