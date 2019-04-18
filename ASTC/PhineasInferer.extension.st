Extension { #name : #PhineasInferer }

{ #category : #'*ASTC' }
PhineasInferer >> getTypeForMessageNode: aRBMessageNode [ 	
	| aNode |
"	aNode:=self types messageTypes detect:[:each| each message = aRBMessageNode ]."
	^aRBMessageNode concreteClass.
]
