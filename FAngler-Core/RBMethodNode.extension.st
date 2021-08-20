Extension { #name : #RBMethodNode }

{ #category : #'*FAngler-Core' }
RBMethodNode >> isAccessor [
	self pragmaNamed: #accessor ifPresent: [ ^ true ].
	^ self protocol = #accessing.
]
