Extension { #name : #RBProgramNode }

{ #category : #'*Angler-RBVisitors' }
RBProgramNode >> acceptMultipleVisitors: aCollectionOfProgramNodeVisitors [ 
	aCollectionOfProgramNodeVisitors do:[:aProgramNodeVisitor| self acceptVisitor: aProgramNodeVisitor  ].
	^aCollectionOfProgramNodeVisitors.
]

{ #category : #'*Angler-RBVisitors' }
RBProgramNode >> getSlangTypeUsing: aCCodeGenerator in: aTMethod [
	^ aCCodeGenerator typeFor: (self propertyAt: #tNodeEquivalent) in: aTMethod
]
