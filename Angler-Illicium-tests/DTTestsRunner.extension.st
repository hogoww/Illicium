Extension { #name : #DTTestsRunner }

{ #category : #'*Angler-Illicium-tests' }
DTTestsRunner >> runForConfiguration: aDTpluginConfiguration [
	| results |
	results := self pluginResultClass new
		testResults: (self runTestSuites: { aDTpluginConfiguration asTestSuite });
		yourself.

	results testResults inspect.
	^ aDTpluginConfiguration handleResults: results for: self
]
