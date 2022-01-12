Class {
	#name : #CTestResultSegmentationFault,
	#superclass : #CTestResult,
	#category : #'MAngler-Illicium-Results'
}

{ #category : #testing }
CTestResultSegmentationFault class >> canHandleResult: aTestResult [
	aTestResult isString ifFalse: [ ^ false ].
	^ aTestResult lines anySatisfy: [ :aLine | aLine includesSubstring: 'Segmentation fault' ]
]

{ #category : #testing }
CTestResultSegmentationFault >> isSegmentationFault [
	^ true
]

{ #category : #initialization }
CTestResultSegmentationFault >> setDescription: aTestResult [
	" no op, no info are gathered for this class"
]
