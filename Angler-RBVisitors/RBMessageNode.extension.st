Extension { #name : #RBMessageNode }

{ #category : #'*Angler-RBVisitors' }
RBMessageNode >> getDefiningBlockOrMethodNode [
	^ parent getDefiningBlockOrMethodNode
]

{ #category : #'*Angler-RBVisitors' }
RBMessageNode >> isMessageInABlock [
	^self getDefiningBlockOrMethodNode isBlock
]
