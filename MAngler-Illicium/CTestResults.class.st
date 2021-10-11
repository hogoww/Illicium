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
CTestResults >> allOtherByClass [
	^ self allByClass: 'Others'
]

{ #category : #query }
CTestResults >> allOthers [
	^ self all: 'Others'
]

{ #category : #initialization }
CTestResults >> allPassing [
	^ self all: 'Test passed'
]

{ #category : #initialization }
CTestResults >> allPassingByClass [
	^ self allByClass: 'Test passed'
]

{ #category : #query }
CTestResults >> allSegFaults [
	^ self all: 'Segmentation fault'
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
		'Pharo errors' -> self allOthers size.
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
