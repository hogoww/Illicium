Extension { #name : #CompiledMethod }

{ #category : #'*MAngler-Illicium' }
CompiledMethod >> runInC [
	"Wait on this semaphore for up to the given number of milliseconds, then timeout. 
	Return true if the deadline expired, false otherwise."
	MAIlliciumTranslator resetGeneratedTestDirectories.
	MAIlliciumTranslator new generateTestMethod: self ast.
	MAIlliciumTranslator moveFilesintoVMDirectory: self ast.
	^ MAIlliciumTranslator compileVMTest: self ast.
]

{ #category : #'*MAngler-Illicium' }
CompiledMethod >> runInCChecked [
	
	[
		[ ^ self runInC ] 
			valueWithin: (Duration seconds: 10) 
			onTimeout: [ ^ 'TimedOut' -> 'TimeOut' ] ] 
		on: Exception do: [ :e |
			(e isKindOf: Notification) ifTrue:[ e resume ].
		
			e class = Halt ifTrue: [ e pass ].
		
			^ 'PharoError' -> e description
		].
]
