Extension { #name : #RBMethodNode }

{ #category : #'*FAngler-Core' }
RBMethodNode >> isAccessor [
	^ self pragmaNamed: #accessor ifPresent: [ true ] ifAbsent: [ false ]
]
