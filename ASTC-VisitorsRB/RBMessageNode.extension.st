Extension { #name : #RBMessageNode }

{ #category : #'*ASTC-VisitorsRB' }
RBMessageNode >> getDefiningBlockOrMethodNode [
	^ parent getDefiningBlockOrMethodNode
]

{ #category : #'*ASTC-VisitorsRB' }
RBMessageNode >> isMessageInABlock [
	^self getDefiningBlockOrMethodNode isBlock
]
