Class {
	#name : #ASTCVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor',
		'propertyName'
	],
	#category : #'ASTC-VisitorsRB-Tests'
}

{ #category : #basic }
ASTCVisitorTest >> assert: aNode propertyIs: aBoolean [
	self assert: (aNode hasProperty: propertyName).
	self assert: (aNode propertyAt: propertyName) equals: aBoolean.

]
