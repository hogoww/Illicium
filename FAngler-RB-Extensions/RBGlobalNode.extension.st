Extension { #name : #RBGlobalNode }

{ #category : #'*FAngler-RB-Extensions' }
RBGlobalNode >> isGlobal [
	^true
]

{ #category : #'*FAngler-RB-Extensions' }
RBGlobalNode >> resolveBinding [
	(self methodNode methodClass allClassVariables 
		detect:[ :aClassVariable | aClassVariable key = name ])
			ifNotNil: [ :aClassVariable | ^ aClassVariable value ].

	"not treating sharedPools yet"
	
	^ self class environment at: name ifAbsent: nil
]
