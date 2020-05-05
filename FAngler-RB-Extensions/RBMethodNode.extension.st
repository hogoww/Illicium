Extension { #name : #RBMethodNode }

{ #category : #'*FAngler-RB-Extensions' }
RBMethodNode >> getDefiningBlockOrMethodNode [
	^ self
]

{ #category : #'*FAngler-RB-Extensions' }
RBMethodNode >> isCMacro [
	^ (self hasPragmaNamed: #cmacro)
		or: [(self hasPragmaNamed: #cmacro:) ]
]

{ #category : #'*FAngler-RB-Extensions' }
RBMethodNode >> isSubclassResponsibility [
	self nodesDo: [ :aNode | 
		(aNode isMessage and:[ aNode selector = #subClassResponsibility ]) 
			ifTrue: [ ^ true ] ].
	^ false
]

{ #category : #'*FAngler-RB-Extensions' }
RBMethodNode >> protocol [
	^ self methodClass organization categoryOfElement: self selector
]
