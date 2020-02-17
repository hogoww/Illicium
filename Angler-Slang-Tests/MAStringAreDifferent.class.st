Class {
	#name : #MAStringAreDifferent,
	#superclass : #TestFailure,
	#instVars : [
		'expected',
		'actual'
	],
	#category : #'Angler-Slang-Tests-generated-ressource'
}

{ #category : #accessing }
MAStringAreDifferent >> actual [
	^ actual
]

{ #category : #accessing }
MAStringAreDifferent >> actual: anObject [
	actual := anObject
]

{ #category : #accessing }
MAStringAreDifferent >> expected [
	^ expected
]

{ #category : #accessing }
MAStringAreDifferent >> expected: anObject [
	expected := anObject
]

{ #category : #accessing }
MAStringAreDifferent >> gtDiffOn: aComposite [
	<gtInspectorPresentationOrder: 1>
	aComposite diff
		title: 'String did not match';
		display: [ { actual. expected } ]
]
