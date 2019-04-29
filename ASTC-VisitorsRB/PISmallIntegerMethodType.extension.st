Extension { #name : #PISmallIntegerMethodType }

{ #category : #'*ASTC-VisitorsRB' }
PISmallIntegerMethodType >> isPrimitive [ 
	^self node pragmas anySatisfy: [:aPragma| aPragma isPrimitive ]
]
