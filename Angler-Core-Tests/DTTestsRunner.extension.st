Extension { #name : #DTTestsRunner }

{ #category : #'*Angler-Core-Tests' }
DTTestsRunner >> runForConfiguration: aDTpluginConfiguration [
	| results |
	results := self pluginResultClass new
		testResults: (self runTestSuites: { aDTpluginConfiguration asTestSuite });
		yourself.

	results testResults inspect.
	^ aDTpluginConfiguration handleResults: results for: self
]