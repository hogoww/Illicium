Extension { #name : #RBProgramNode }

{ #category : #'*ASTC-VisitorsRB' }
RBProgramNode >> acceptMultipleVisitors: aCollectionOfProgramNodeVisitors [ 
	aCollectionOfProgramNodeVisitors do:[:aProgramNodeVisitor| self acceptVisitor: aProgramNodeVisitor  ].
	^aCollectionOfProgramNodeVisitors.
]

{ #category : #'*ASTC-VisitorsRB' }
RBProgramNode >> getSlangTypeUsing: aCCodeGenerator in: aTMethod [
	^ aCCodeGenerator typeFor: (self propertyAt: #tnodeEquivalent) in: aTMethod
]
