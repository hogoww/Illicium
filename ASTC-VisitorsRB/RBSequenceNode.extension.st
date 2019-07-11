Extension { #name : #RBSequenceNode }

{ #category : #'*ASTC-VisitorsRB' }
RBSequenceNode >> getDefiningBlockOrMethodNode [
	^self parent getDefiningBlockOrMethodNode
]
