Extension { #name : #RBProgramNode }

{ #category : #'*FAngler-RB-Extensions' }
RBProgramNode >> acceptMultipleVisitors: aCollectionOfProgramNodeVisitors [ 
	aCollectionOfProgramNodeVisitors do:[:aProgramNodeVisitor| self acceptVisitor: aProgramNodeVisitor  ].
	^aCollectionOfProgramNodeVisitors.
]

{ #category : #'*FAngler-RB-Extensions' }
RBProgramNode >> getSlangTypeUsing: aCCodeGenerator in: aTMethod [
	^ aCCodeGenerator typeFor: (self propertyAt: #tNodeEquivalent) in: aTMethod
]

{ #category : #'*FAngler-RB-Extensions' }
RBProgramNode >> isArgumentNode [
	^ false
]

{ #category : #'*FAngler-RB-Extensions' }
RBProgramNode >> isGlobalNode [
	^ false
]

{ #category : #'*FAngler-RB-Extensions' }
RBProgramNode >> isInstanceVariableNode [
	^ false
]

{ #category : #'*FAngler-RB-Extensions' }
RBProgramNode >> isTemporaryNode [
	^ false
]
