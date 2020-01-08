Extension { #name : #RBVariableNode }

{ #category : #'*ASTC-VisitorsRB' }
RBVariableNode >> getSlangTypeUsing: aCCodeGenerator in: aTMethod [
	^ aTMethod typeFor: self name in: aCCodeGenerator 
]
