Extension { #name : #RBSequenceNode }

{ #category : #'*FAngler-RB-Extensions' }
RBSequenceNode >> getDefiningBlockOrMethodNode [
	^self parent getDefiningBlockOrMethodNode
]
