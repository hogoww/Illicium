Extension { #name : #SingleType }

{ #category : #'*MAngler-Illicium' }
SingleType >> asCType [
	type class = CType ifTrue: [ ^ type ].
	type = SmallInteger ifTrue: [ ^ CType createFrom: #int ].
	type = Boolean ifTrue: [ ^ CType createFrom: #bool ].
	type = VMClass ifTrue: [ ^ CType createFrom: #sqInt ].
	self halt.
	^ type
]

{ #category : #'*MAngler-Illicium' }
SingleType >> createInstance [
	^ type new
]

{ #category : #'*MAngler-Illicium' }
SingleType >> performReplacementUsing: bindings [
	| abstractType |
	self flag:#badFix.
	(type includesBehavior: TestCase) 
		ifTrue:[ abstractType := TestCase ]
		ifFalse:[ abstractType := type ].
		
	^ self class new type: (bindings at: abstractType name ifAbsent:[ ReplacementTypeUnknown new type: type ; signal ]).
]
