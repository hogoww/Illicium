Extension { #name : #DTTestsRunner }

{ #category : #'*ASTC-Translation-Tests' }
DTTestsRunner >> runForConfiguration: aDTpluginConfiguration [
	| results |
	results := self pluginResultClass new

		testsResult: (self runTestSuites: { aDTpluginConfiguration asTestSuite });
		yourself.

	"results testsResult inspect."
	^ aDTpluginConfiguration handleResults: results for: self
]
