Extension { #name : #RBMessageNode }

{ #category : #'*FAngler-RB-Extensions' }
RBMessageNode >> getDefiningBlockOrMethodNode [
	^ parent getDefiningBlockOrMethodNode
]

{ #category : #'*FAngler-RB-Extensions' }
RBMessageNode >> isMessageInABlock [
	^self getDefiningBlockOrMethodNode isBlock
]
