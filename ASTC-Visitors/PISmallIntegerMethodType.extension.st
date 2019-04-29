Extension { #name : #PISmallIntegerMethodType }

{ #category : #'*ASTC-Visitors' }
PISmallIntegerMethodType >> isPrimitive [ 
	^self node pragmas anySatisfy: [:aPragma| aPragma isPrimitive ]
]
