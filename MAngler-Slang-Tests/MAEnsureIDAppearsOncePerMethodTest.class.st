"
A MAEnsureIDAppearsOncePerMethodTest is a test class for testing the behavior of MAEnsureIDAppearsOncePerMethod
"
Class {
	#name : #MAEnsureIDAppearsOncePerMethodTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor'
	],
	#category : #'MAngler-Slang-Tests-AnalysisTests'
}

{ #category : #support }
MAEnsureIDAppearsOncePerMethodTest >> aTempInTwoDifferentBlocks [
	[| aTemp |
	aTemp.
	aTemp ifTrue: [ aTemp ]].
	[| aTemp |
	aTemp.
	aTemp ifTrue: [ aTemp ]]
]

{ #category : #support }
MAEnsureIDAppearsOncePerMethodTest >> aTempNoRenaming [
	| aTemp |
	aTemp.
	aTemp ifTrue: [ aTemp ]
]

{ #category : #support }
MAEnsureIDAppearsOncePerMethodTest >> anArgInTwoDifferentBlocks [
	[ :anArg | 
	anArg ifTrue: [ anArg ] ].
	[ :anArg | 
	anArg ifTrue: [ anArg ] ]
]

{ #category : #support }
MAEnsureIDAppearsOncePerMethodTest >> anArgNoRenaming: anArg [
	anArg.
	anArg ifTrue: [ anArg ]
]

{ #category : #running }
MAEnsureIDAppearsOncePerMethodTest >> setUp [
	super setUp.
	
	"Put here a common initialization logic for tests"
	visitor := MAEnsureIDAppearsOncePerMethod new
]

{ #category : #support }
MAEnsureIDAppearsOncePerMethodTest >> testATempNoRenaming [
	| method counter |
	method := (self class >> #aTempNoRenaming) ast copy.
	method acceptVisitor: visitor.

	counter := 0.
	method nodesDo: [ :aNode | 
		aNode isTemporaryNode
			ifTrue: [ 
				counter := counter + 1.
				self assert: aNode name equals: #aTemp.
			] ].
	self assert: counter equals: 4.
]

{ #category : #support }
MAEnsureIDAppearsOncePerMethodTest >> testAnArgNoRenaming [
	| method counter |
	method := (self class >> #anArgNoRenaming:) ast copy.
	method acceptVisitor: visitor.

	counter := 0.
	method nodesDo: [ :aNode | 
		aNode isArgumentNode
			ifTrue: [ 
				counter := counter + 1.
				self assert: aNode name equals: #anArg.
			] ].
	self assert: counter equals: 4.
]

{ #category : #support }
MAEnsureIDAppearsOncePerMethodTest >> testArgsWithRenaming [
	| method counterNormal counterRenamed |
	method := (self class >> #anArgInTwoDifferentBlocks) ast copy.
	method acceptVisitor: visitor.

	counterNormal := 0.
	counterRenamed := 0.
	method nodesDo: [ :aNode | 
		aNode isArgumentNode
			ifTrue: [ 
				aNode name = #anArg ifTrue: [ counterNormal := counterNormal + 1 ].
				aNode name = #anArg1 ifTrue: [ counterRenamed := counterRenamed + 1 ].
			] ].
	self assert: counterNormal equals: 3.
	self assert: counterRenamed equals: 3.
]

{ #category : #support }
MAEnsureIDAppearsOncePerMethodTest >> testTempsWithRenaming [
	| method counterNormal counterRenamed |
	method := (self class >> #aTempInTwoDifferentBlocks) ast copy.
	method acceptVisitor: visitor.

	counterNormal := 0.
	counterRenamed := 0.
	method nodesDo: [ :aNode | 
		aNode isTemporaryNode
			ifTrue: [ 
				aNode name = #aTemp ifTrue: [ counterNormal := counterNormal + 1 ].
				aNode name = #aTemp1 ifTrue: [ counterRenamed := counterRenamed + 1 ].
			] ].
	self assert: counterNormal equals: 4.
	self assert: counterRenamed equals: 4.
]
