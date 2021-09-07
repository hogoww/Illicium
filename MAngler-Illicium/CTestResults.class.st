Class {
	#name : #CTestResults,
	#superclass : #Object,
	#instVars : [
		'testResults'
	],
	#category : #'MAngler-Illicium-Results'
}

{ #category : #initialization }
CTestResults >> add: aResult [

	{ aResult } asDictionary keysAndValuesDo: [ :aClass :someResults | | resultDict |
		resultDict := Dictionary new.
		someResults do: [ :aTestResult | | col |
			col := resultDict at: aTestResult key ifAbsentPut: [ OrderedCollection new ].
			col add: aTestResult value
			].
		testResults at: aClass put: resultDict.
		].
	^ aResult
]

{ #category : #private }
CTestResults >> all: testState [
	^ testResults flatCollect:[ :c | c at: testState ifAbsent: [ #() ] ]
]

{ #category : #private }
CTestResults >> allByClass: testState [
	^ testResults collect: [ :c | c at: testState ifAbsent: #() ].
]

{ #category : #query }
CTestResults >> allCCompilationErrors [
	^ self all: 'C compilation error'
]

{ #category : #query }
CTestResults >> allCCompilationErrorsByClass [
	^ self allByClass: 'C compilation error'
]

{ #category : #initialization }
CTestResults >> allFailling [
	^ self all: 'Test failed'
]

{ #category : #initialization }
CTestResults >> allFaillingByClass [
	^ self allByClass: 'Test failed'
]

{ #category : #initialization }
CTestResults >> allPassing [
	^ self all: 'Test passed'
]

{ #category : #initialization }
CTestResults >> allPassingByClass [
	^ self allByClass: 'Test passed'
]

{ #category : #initialization }
CTestResults >> initialize [
	testResults := Dictionary new.
]
