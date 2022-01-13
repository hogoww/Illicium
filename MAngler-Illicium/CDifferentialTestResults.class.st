Class {
	#name : #CDifferentialTestResults,
	#superclass : #BaseTestResults,
	#category : #'MAngler-Illicium-Results'
}

{ #category : #'instance creation' }
CDifferentialTestResults class >> for: aMutant results: aTestResult [ 
	"This method is use for running tests. That's the reason why it sends nil as argument"
	^ self 
		mutant: aMutant;
		results: aTestResult
]
