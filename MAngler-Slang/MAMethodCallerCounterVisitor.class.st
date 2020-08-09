Class {
	#name : #MAMethodCallerCounterVisitor,
	#superclass : #FAAbstractCheckVisitor,
	#instVars : [
		'program'
	],
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #accessing }
MAMethodCallerCounterVisitor class >> propertyName [
	"should return a symbol with the name of the property"
	^ #anglerCalls
]

{ #category : #accessing }
MAMethodCallerCounterVisitor >> incrementCallsFor: aMethodNode [
	| calls |
	calls := aMethodNode propertyAt: #anglerCalls ifAbsent: 0.
	aMethodNode propertyAt: #anglerCalls put: calls + 1.

]

{ #category : #accessing }
MAMethodCallerCounterVisitor >> program [
	^ program
]

{ #category : #accessing }
MAMethodCallerCounterVisitor >> program: anObject [
	program := anObject
]

{ #category : #accessing }
MAMethodCallerCounterVisitor >> visitMessageNode: aMessageNode [ 
	(program hasMethodNamed: aMessageNode selector)
			ifTrue: [ self incrementCallsFor: (program methodNamed: aMessageNode selector) ]
]
