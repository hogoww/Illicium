Class {
	#name : #BaseTestResults,
	#superclass : #TestResult,
	#instVars : [
		'testResults'
	],
	#category : #'MAngler-Illicium-Results'
}

{ #category : #initialization }
BaseTestResults >> addAllResults: aResult [
	aResult class ~= CTestResults ifTrue: [ self error ].
	testResults addAll: aResult testResults
]

{ #category : #initialization }
BaseTestResults >> addResult: aResult [
	testResults add: aResult
]

{ #category : #private }
BaseTestResults >> all: testState [
	^ testResults select: [ :aTestResult | aTestResult isKindOf: testState ]
]

{ #category : #private }
BaseTestResults >> allByClass: testState [
	^ (self all: testState) groupedBy: [ :c | c testMethod methodClass ].
]

{ #category : #initialization }
BaseTestResults >> initialize [
	testResults := OrderedCollection new
]

{ #category : #initialization }
BaseTestResults >> printOn: aStream [
	"shortcircuit TestResult printOn:"
	testResults printOn: aStream
]

{ #category : #testing }
BaseTestResults >> runCount [
	^ testResults size
]

{ #category : #accessing }
BaseTestResults >> testResults [
	^ testResults
]
