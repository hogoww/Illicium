Extension { #name : #RBVariableNode }

{ #category : #'*FAngler-RB-Extensions' }
RBVariableNode >> getSlangTypeUsing: aCodeGenerator in: aTMethod [
	^ (aTMethod typeFor: self name in: aCodeGenerator) ifNil: [#sqInt]
]

{ #category : #'*FAngler-RB-Extensions' }
RBVariableNode >> isArgumentNode [

	^self binding 
		ifNil: [ false ]
		ifNotNil: [ :binding | binding isArg ]
]

{ #category : #'*FAngler-RB-Extensions' }
RBVariableNode >> isGlobalNode [
	^self binding 
		ifNil:[ false ] 
		ifNotNil: [ :binding | binding isGlobal ]
]

{ #category : #'*FAngler-RB-Extensions' }
RBVariableNode >> isInstanceVariableNode [
	^self binding
		ifNil:[ false ] 
		ifNotNil: [ :binding | binding isInstance ]
]

{ #category : #'*FAngler-RB-Extensions' }
RBVariableNode >> isTemporaryNode [
	^self binding 
		ifNil: [ false ]
		ifNotNil: [ :binding | binding isTemp]
]
