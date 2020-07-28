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
MAEnsureIDAppearsOncePerMethodTest >> aTempArgConflictIsUsedBeforeAndAfter [
	^ RBParser parseMethod:
'aMethod 
	| aLocal | "<- method scope"
	
	[:aLocal | "<- block scope"
		aLocal. ]. "<- block scope"
	
	aLocal' "<- method scope"
]

{ #category : #support }
MAEnsureIDAppearsOncePerMethodTest >> aTempConflictIsUsedBeforeAndAfter [
	^ RBParser parseMethod:
'aMethod 
	| aTemp | "<- method scope"
	
	[| aTemp | "<- block scope"
		aTemp. ]. "<- block scope"
	
	aTemp' "<- method scope"
]

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
MAEnsureIDAppearsOncePerMethodTest >> anArgConflictIsUsedBeforeAndAfter [
	^ RBParser parseMethod:
'aMethod: anArg "<- method scope"
	
	[ :anArg |  "<- block scope"
		anArg. ]. "<- block scope"
	
	anArg' "<- method scope"
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

{ #category : #support }
MAEnsureIDAppearsOncePerMethodTest >> anArgTempConflictIsUsedBeforeAndAfter [
	^ RBParser parseMethod:
'aMethod: aLocal "<- method scope"
	
	[ | aLocal | "<- block scope"
		aLocal. ]. "<- block scope"
	
	aLocal' "<- method scope"
]

{ #category : #running }
MAEnsureIDAppearsOncePerMethodTest >> setUp [
	super setUp.
	
	"Put here a common initialization logic for tests"
	visitor := MAEnsureIDAppearsOncePerMethod new
]

{ #category : #test }
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

{ #category : #test }
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

{ #category : #test }
MAEnsureIDAppearsOncePerMethodTest >> testArgConflictAppearBeforeAndAfter [
	| method counterNormal counterRenamed |
	method := self anArgConflictIsUsedBeforeAndAfter.
	method acceptVisitor: visitor.

	counterNormal := 0.
	counterRenamed := 0.
	method nodesDo: [ :aNode | 
		aNode isVariableNode "Method is not semantically analysed, as it would be wrong. Therefore, no tempNodes."
			ifTrue: [ 
				aNode name = #anArg ifTrue: [ counterNormal := counterNormal + 1 ].
				aNode name = #anArg1 ifTrue: [ counterRenamed := counterRenamed + 1 ].
			] ].
	self assert: counterNormal equals: 2.
	self assert: counterRenamed equals: 2.
]

{ #category : #'test-withScope' }
MAEnsureIDAppearsOncePerMethodTest >> testArgConflictWithScope [
	| method counterRenamed |
	method := (self class >> #anArgNoRenaming:) ast copy.
	visitor startWithNamesInScope: { #anArg } . 
	method acceptVisitor: visitor.

	counterRenamed := 0.
	method nodesDo: [ :aNode | 
		aNode isVariableNode
			ifTrue: [ 
				aNode name = #anArg1 ifTrue: [ counterRenamed := counterRenamed + 1 ].
			] ].
	self assert: counterRenamed equals: 4.

]

{ #category : #test }
MAEnsureIDAppearsOncePerMethodTest >> testArgTempConflictAppearBeforeAndAfter [
	| method counterNormal counterRenamed |
	method := self anArgTempConflictIsUsedBeforeAndAfter.
	method acceptVisitor: visitor.

	counterNormal := 0.
	counterRenamed := 0.
	method nodesDo: [ :aNode | 
		aNode isVariableNode "Method is not semantically analysed, as it would be wrong. Therefore, no tempNodes."
			ifTrue: [ 
				aNode name = #aLocal ifTrue: [ counterNormal := counterNormal + 1 ].
				aNode name = #aLocal1 ifTrue: [ counterRenamed := counterRenamed + 1 ].
			] ].

	self assert: counterNormal equals: 2.
	self assert: counterRenamed equals: 2.
]

{ #category : #test }
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

{ #category : #test }
MAEnsureIDAppearsOncePerMethodTest >> testTempArgConflictAppearBeforeAndAfter [
	| method counterNormal counterRenamed |
	method := self aTempArgConflictIsUsedBeforeAndAfter.
	method acceptVisitor: visitor.

	counterNormal := 0.
	counterRenamed := 0.
	method nodesDo: [ :aNode | 
		aNode isVariableNode "Method is not semantically analysed, as it would be wrong. Therefore, no tempNodes."
			ifTrue: [ 
				aNode name = #aLocal ifTrue: [ counterNormal := counterNormal + 1 ].
				aNode name = #aLocal1 ifTrue: [ counterRenamed := counterRenamed + 1 ].
			] ].
	
	self assert: counterNormal equals: 2.
	self assert: counterRenamed equals: 2.
]

{ #category : #test }
MAEnsureIDAppearsOncePerMethodTest >> testTempConflictAppearBeforeAndAfter [
	| method counterNormal counterRenamed |
	method := self aTempConflictIsUsedBeforeAndAfter.
	method acceptVisitor: visitor.

	counterNormal := 0.
	counterRenamed := 0.
	method nodesDo: [ :aNode | 
		aNode isVariableNode "Method is not semantically analysed, as it would be wrong. Therefore, no tempNodes."
			ifTrue: [ 
				aNode name = #aTemp ifTrue: [ counterNormal := counterNormal + 1 ].
				aNode name = #aTemp1 ifTrue: [ counterRenamed := counterRenamed + 1 ].
			] ].
	self assert: counterNormal equals: 2.
	self assert: counterRenamed equals: 2.
]

{ #category : #test }
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

{ #category : #'test-withScope' }
MAEnsureIDAppearsOncePerMethodTest >> testTestConflictWithScope [
	| method counterRenamed |
	method := (self class >> #aTempNoRenaming) ast copy.
	visitor startWithNamesInScope: { #aTemp } . 
	method acceptVisitor: visitor.

	counterRenamed := 0.
	method nodesDo: [ :aNode | 
		aNode isTemporaryNode
			ifTrue: [ 
				aNode name = #aTemp1 ifTrue: [ counterRenamed := counterRenamed + 1 ].
			] ].
	self assert: counterRenamed equals: 4.

]
