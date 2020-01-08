Extension { #name : #RBVariableNode }

{ #category : #'*ASTC-VisitorsRB' }
RBVariableNode >> getSlangTypeUsing: aCodeGenerator in: aTMethod [
	^ (aTMethod  typeFor: self name in: aCodeGenerator) ifNil: [#sqInt]
]
