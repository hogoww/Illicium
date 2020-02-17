Extension { #name : #RBMessageNode }

{ #category : #'*Angler-RB-Extensions' }
RBMessageNode >> getDefiningBlockOrMethodNode [
	^ parent getDefiningBlockOrMethodNode
]

{ #category : #'*Angler-RB-Extensions' }
RBMessageNode >> isMessageInABlock [
	^self getDefiningBlockOrMethodNode isBlock
]
