Extension { #name : #RBSequenceNode }

{ #category : #'*Angler-RBVisitors' }
RBSequenceNode >> getDefiningBlockOrMethodNode [
	^self parent getDefiningBlockOrMethodNode
]
