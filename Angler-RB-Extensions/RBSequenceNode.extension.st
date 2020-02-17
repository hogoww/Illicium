Extension { #name : #RBSequenceNode }

{ #category : #'*Angler-RB-Extensions' }
RBSequenceNode >> getDefiningBlockOrMethodNode [
	^self parent getDefiningBlockOrMethodNode
]
