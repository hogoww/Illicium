Extension { #name : #RBMethodNode }

{ #category : #'*Angler-Slang' }
RBMethodNode >> anglerCalls [
	
	^ self propertyAt: #anglerCalls ifAbsent: [ 0 ]
]

{ #category : #'*Angler-Slang' }
RBMethodNode >> anglerIncrementCalls [
	
	| calls |
	calls := self propertyAt: #anglerCalls ifAbsent: 0.
	self propertyAt: #anglerCalls put: calls + 1.
]
