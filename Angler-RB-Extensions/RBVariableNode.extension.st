Extension { #name : #RBVariableNode }

{ #category : #'*Angler-RB-Extensions' }
RBVariableNode >> getSlangTypeUsing: aCodeGenerator in: aTMethod [
	^ (aTMethod typeFor: self name in: aCodeGenerator) ifNil: [#sqInt]
]

{ #category : #'*Angler-RB-Extensions' }
RBVariableNode >> isArgumentNode [

	^self binding 
		ifNil: [ false ]
		ifNotNil: [ :binding | binding isArg ]
]

{ #category : #'*Angler-RB-Extensions' }
RBVariableNode >> isGlobalNode [
	^self binding 
		ifNil:[ false ] 
		ifNotNil: [ :binding | binding isGlobal ]
]

{ #category : #'*Angler-RB-Extensions' }
RBVariableNode >> isInstanceVariableNode [
	^self binding
		ifNil:[ false ] 
		ifNotNil: [ :binding | binding isInstance ]
]

{ #category : #'*Angler-RB-Extensions' }
RBVariableNode >> isTemporaryNode [
	^self binding 
		ifNil: [ false ]
		ifNotNil: [ :binding | binding isTemp]
]
