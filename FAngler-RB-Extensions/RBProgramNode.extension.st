Extension { #name : #RBProgramNode }

{ #category : #'*FAngler-RB-Extensions' }
RBProgramNode >> acceptMultipleVisitors: aCollectionOfProgramNodeVisitors [ 
	aCollectionOfProgramNodeVisitors do:[:aProgramNodeVisitor| self acceptVisitor: aProgramNodeVisitor  ].
	^aCollectionOfProgramNodeVisitors.
]

{ #category : #'*FAngler-RB-Extensions' }
RBProgramNode >> getSlangTypeUsing: aCCodeGenerator in: aTMethod [
    "Some types are used as integer without having an integral type.
    prevents to add StackInterpreter to the program.
    an example of this can be found in: StackInterpreter>>writeImageFileIO "
    self flag:#hackish.
    ^ [ aCCodeGenerator typeFor: (self propertyAt: #tNodeEquivalent) in: aTMethod ] 
		on: UnrecognizedIntegralType do:[ :e | #sqInt ]
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
