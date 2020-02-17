Extension { #name : #RBProgramNode }

{ #category : #'*Angler-RB-Extensions' }
RBProgramNode >> acceptMultipleVisitors: aCollectionOfProgramNodeVisitors [ 
	aCollectionOfProgramNodeVisitors do:[:aProgramNodeVisitor| self acceptVisitor: aProgramNodeVisitor  ].
	^aCollectionOfProgramNodeVisitors.
]

{ #category : #'*Angler-RB-Extensions' }
RBProgramNode >> getSlangTypeUsing: aCCodeGenerator in: aTMethod [
	^ aCCodeGenerator typeFor: (self propertyAt: #tNodeEquivalent) in: aTMethod
]

{ #category : #'*Angler-RB-Extensions' }
RBProgramNode >> isArgumentNode [
	^ false
]

{ #category : #'*Angler-RB-Extensions' }
RBProgramNode >> isGlobalNode [
	^ false
]

{ #category : #'*Angler-RB-Extensions' }
RBProgramNode >> isInstanceVariableNode [
	^ false
]

{ #category : #'*Angler-RB-Extensions' }
RBProgramNode >> isTemporaryNode [
	^ false
]
