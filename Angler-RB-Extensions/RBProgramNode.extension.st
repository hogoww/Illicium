Extension { #name : #RBProgramNode }

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
