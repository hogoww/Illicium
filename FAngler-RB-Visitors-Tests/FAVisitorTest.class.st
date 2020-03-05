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
FAVisitorTest >> assert: aNode propertyEquals: aValue [
	self assert: (aNode hasProperty: propertyName).
	self assert: (aNode propertyAt: propertyName) equals: aValue
]

{ #category : #basic }
FAVisitorTest >> setUp [
	"visitor must be set before sending super setUp in subclasses."
	super setUp.
	propertyName := visitor class propertyName
]
