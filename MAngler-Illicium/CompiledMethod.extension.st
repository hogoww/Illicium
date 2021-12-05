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
