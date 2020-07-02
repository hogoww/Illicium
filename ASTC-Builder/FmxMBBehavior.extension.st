Extension { #name : #FmxMBBehavior }

{ #category : #'*ASTC-Builder' }
FmxMBBehavior >> allRelations [
	| allRelations |
	allRelations := OrderedCollection new.
	self classGeneralization ifNotNil:[ :aGeneralization | allRelations addAll: aGeneralization allRelations ].
	allRelations addAll: relations.
	^ allRelations
]

{ #category : #'*ASTC-Builder' }
FmxMBBehavior >> realClassOrIfAbsent: aBlock [

    ^ [ realClass ifNil: [ self class environment at: self fullName  ] ] on: KeyNotFound do:[ aBlock ]
]
