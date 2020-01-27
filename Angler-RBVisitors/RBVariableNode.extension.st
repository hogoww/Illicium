Extension { #name : #RBVariableNode }

{ #category : #'*Angler-RBVisitors' }
RBVariableNode >> getSlangTypeUsing: aCodeGenerator in: aTMethod [
	^ (aTMethod typeFor: self name in: aCodeGenerator) ifNil: [#sqInt]
]
