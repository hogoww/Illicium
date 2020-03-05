Class {
	#name : #FAVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor',
		'propertyName'
	],
	#category : #'FAngler-RB-Visitors-Tests-Abstract-test'
}

{ #category : #basic }
FAVisitorTest >> assert: aNode propertyEquals: aBoolean [
	self assert: (aNode hasProperty: propertyName).
	self assert: (aNode propertyAt: propertyName) equals: aBoolean
]
