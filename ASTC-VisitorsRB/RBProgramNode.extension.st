Extension { #name : #RBProgramNode }

{ #category : #'*ASTC-VisitorsRB' }
RBProgramNode >> acceptMultipleVisitors: aCollectionOfProgramNodeVisitors [ 
	aCollectionOfProgramNodeVisitors do:[:aProgramNodeVisitor| self acceptVisitor: aProgramNodeVisitor  ].
	^aCollectionOfProgramNodeVisitors.
]
