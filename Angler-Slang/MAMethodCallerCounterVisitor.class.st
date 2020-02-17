Class {
	#name : #MAMethodCallerCounterVisitor,
	#superclass : #Object,
	#instVars : [
		'program'
	],
	#category : #'Angler-Slang-Translation'
}

{ #category : #accessing }
MAMethodCallerCounterVisitor >> program [
	^ program
]

{ #category : #accessing }
MAMethodCallerCounterVisitor >> program: anObject [
	program := anObject
]

{ #category : #visiting }
MAMethodCallerCounterVisitor >> visitMethodNode: aRBMethodNode [ 
	
	aRBMethodNode nodesDo: [ :e | 
		(e isMessage and: [ program hasMethodNamed: e selector ])
			ifTrue: [ (program methodNamed: e selector) anglerIncrementCalls ] ]
]
