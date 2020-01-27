Extension { #name : #PISmallIntegerMethodType }

{ #category : #'*Angler-RBVisitors' }
PISmallIntegerMethodType >> isPrimitive [ 
	^self node pragmas anySatisfy: [:aPragma| aPragma isPrimitive ]
]
