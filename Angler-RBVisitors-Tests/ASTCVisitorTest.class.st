Class {
	#name : #ASTCVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor',
		'propertyName'
	],
	#category : #'Angler-RBVisitors-Tests-abstract-test'
}

{ #category : #basic }
ASTCVisitorTest >> assert: aNode propertyEquals: aBoolean [
	self assert: (aNode hasProperty: propertyName).
	self assert: (aNode propertyAt: propertyName) equals: aBoolean
]
