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
			col := resultDict at: aTestResult class ifAbsentPut: [ OrderedCollection new ].
			col add: aTestResult value
			].
		testResults at: aClass put: resultDict.
		].
	^ aResult
]

{ #category : #private }
CTestResults >> all: testState [
	^ testResults flatCollect: [ :c | c at: testState ifAbsent: [ { } ] ]
]

{ #category : #private }
CTestResults >> allByClass: testState [
	^ testResults collect: [ :c | c at: testState ifAbsent: #() ].
]

{ #category : #query }
CTestResults >> allCCompilationErrors [
	^ self all: CTestResultCCompilationError
]

{ #category : #query }
CTestResults >> allCCompilationErrorsByClass [
	^ self allByClass: CTestResultCCompilationError
]

{ #category : #initialization }
CTestResults >> allFailling [
	^ self all: CTestResultFail
]

{ #category : #initialization }
CTestResults >> allFaillingByClass [
	^ self allByClass: CTestResultFail
]

{ #category : #initialization }
CTestResults >> allPassing [
	^ self all: CTestResultPassed
]

{ #category : #initialization }
CTestResults >> allPassingByClass [
	^ self allByClass: CTestResultPassed
]

{ #category : #query }
CTestResults >> allPharoErrors [
	^ self all: CTestResultPharoError
]

{ #category : #initialization }
CTestResults >> allPharoErrorsByClass [
	^ self allByClass: CTestResultPharoError
]

{ #category : #initialization }
CTestResults >> allPharoErrorsByDescription [
	| res |
	res := Dictionary new.
	(self all: CTestResultPharoError) do: [ :a | 
		res at: a value ifAbsentPut: [ res at: a value put: OrderedCollection new ].
		(res at: a value) add: a ].
	^ res
]

{ #category : #query }
CTestResults >> allSegFaults [
	^ self all: CTestResultSegmentationFault
]

{ #category : #private }
CTestResults >> allTestCases [
	^ testResults flatCollect:[ :c | 
		c keys flatCollect: [ :k | c at: k ] ]
]

{ #category : #initialization }
CTestResults >> initialize [
	testResults := Dictionary new.
]

{ #category : #private }
CTestResults >> inspectionResults: aBuilder [
	<inspectorPresentationOrder: 0 title: #results>
	| items keysColumn valuesColumn |
	items := {
		'Total' -> self allTestCases size.
		'Passing' -> self allPassing size.
		'Failing' -> self allFailling size.
		'compilation error' -> self allCCompilationErrors size.
		'Segmentation Faults' -> self allSegFaults size.
		'Pharo errors' -> self allPharoErrors size.
		} asOrderedCollection.

	keysColumn := SpStringTableColumn title: #key evaluated: [ :anAssociation | anAssociation key ].
	valuesColumn := SpStringTableColumn title: #value evaluated: [ :anAssociation | anAssociation value ].

	^ aBuilder newTable
		addColumn: keysColumn;
		addColumn: valuesColumn;
		items: items;
		yourself
]

{ #category : #accessing }
CTestResults >> testResults [
	^ testResults
]
