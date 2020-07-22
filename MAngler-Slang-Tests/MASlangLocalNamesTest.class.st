"
A MASlangLocalNamesTest is a test class for testing the behavior of MASlangLocalNames.
"
Class {
	#name : #MASlangLocalNamesTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor'
	],
	#category : #'MAngler-Slang-Tests-AnalysisTests'
}

{ #category : #support }
MASlangLocalNamesTest >> aBlockArg [
	[:aBlockArg|]

]

{ #category : #support }
MASlangLocalNamesTest >> aBlockArgInInnerBlock [
	[[:aBlockArgInInnerBlock|]]

]

{ #category : #support }
MASlangLocalNamesTest >> aBlockTemp [
	[|aBlockTemp|]

]

{ #category : #support }
MASlangLocalNamesTest >> aBlockTempInInnerBlock [
	[[|aBlockTempInInnerBlock|]]

]

{ #category : #'test-scope' }
MASlangLocalNamesTest >> aMethodWithSameTempInDifferentBlocks [
	[ | aTemp | ].
	[ | aTemp | ]
]

{ #category : #support }
MASlangLocalNamesTest >> aTemp [
	| aTemp |
]

{ #category : #support }
MASlangLocalNamesTest >> anArg: anArg [

]

{ #category : #support }
MASlangLocalNamesTest >> anUsedArg: anArg [
	anArg
]

{ #category : #support }
MASlangLocalNamesTest >> anUsedArgInBlock: anArg [
	[ anArg ]
]

{ #category : #support }
MASlangLocalNamesTest >> anUsedTemp [
	| aTemp |
	aTemp
]

{ #category : #support }
MASlangLocalNamesTest >> anUsedTempInBlock [
	| aTemp |
	[ aTemp ]
]

{ #category : #support }
MASlangLocalNamesTest >> arg1: arg1 arg2: arg2 [
]

{ #category : #'support-invalidMethods' }
MASlangLocalNamesTest >> conflictingArgs [
	^ RBParser parseMethod: 
'aMethod: anArg arg2: anArg'
]

{ #category : #'support-invalidMethods' }
MASlangLocalNamesTest >> conflictingTempAndArg [
	^ RBParser parseMethod: 
'aMethod: aLocal
	| aLocal |'
]

{ #category : #'support-invalidMethods' }
MASlangLocalNamesTest >> conflictingTempAndBlockArg [
	^ RBParser parseMethod: 
'aMethod
	| aLocal |
	[ :aLocal | ]'
]

{ #category : #'support-invalidMethods' }
MASlangLocalNamesTest >> conflictingTempAndBlockTemp [
	^ RBParser parseMethod: 
'aMethod
	| aTemp |
	[ | aTemp | ]'
]

{ #category : #'support-invalidMethods' }
MASlangLocalNamesTest >> conflictingTemps [
	^ RBParser parseMethod: 
'aMethod
	| aTemp aTemp |'
]

{ #category : #support }
MASlangLocalNamesTest >> oneOfEach: anArg [
	| aTemp |
	[ :aBlockArg | | aBlockTemp| 
		[ :aBlockArgInInnerBlock | | aBlockTempInInnerBlock |]]
]

{ #category : #running }
MASlangLocalNamesTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	visitor := MASlangLocalNamesVisitor new
]

{ #category : #support }
MASlangLocalNamesTest >> temps [
	| temp1 temp2 |
]

{ #category : #test }
MASlangLocalNamesTest >> testArg [
	(self class >> #anArg:) ast acceptVisitor: visitor.
	self assert: visitor result equals: #( anArg )
]

{ #category : #test }
MASlangLocalNamesTest >> testArgs [
	(self class >> #arg1:arg2:) ast acceptVisitor: visitor.
	self assert: visitor result equals: #( arg1 arg2 )
]

{ #category : #test }
MASlangLocalNamesTest >> testBlockArg [
	(self class >> #aBlockArg) ast acceptVisitor: visitor.
	self assert: visitor result equals: #( aBlockArg )
]

{ #category : #test }
MASlangLocalNamesTest >> testBlockArgInInnerBlock [
	(self class >> #aBlockArgInInnerBlock) ast acceptVisitor: visitor.
	self assert: visitor result equals: #( aBlockArgInInnerBlock )
]

{ #category : #test }
MASlangLocalNamesTest >> testBlockTemp [
	(self class >> #aBlockTemp) ast acceptVisitor: visitor.
	self assert: visitor result equals: #( aBlockTemp )
]

{ #category : #test }
MASlangLocalNamesTest >> testBlockTempInInnerBlock [
	(self class >> #aBlockTempInInnerBlock) ast acceptVisitor: visitor.
	self assert: visitor result equals: #( aBlockTempInInnerBlock )
]

{ #category : #'test-InvalidMethods' }
MASlangLocalNamesTest >> testConflictingArgs [
	| method |
	method := self conflictingArgs.
	self should: [ method acceptVisitor: visitor ] raise: MASlangFoundSameNameTwice withExceptionDo: [ :e | e conflictings anyOne name = #anArg ]
]

{ #category : #'test-InvalidMethods' }
MASlangLocalNamesTest >> testConflictingTempAndArg [
	| method |
	method := self conflictingTempAndArg.
	self should: [ method acceptVisitor: visitor ] raise: MASlangFoundSameNameTwice withExceptionDo: [ :e | e conflictings anyOne name = #aLocal ]
]

{ #category : #'test-InvalidMethods' }
MASlangLocalNamesTest >> testConflictingTempAndBlockArg [
	| method |
	method := self conflictingTempAndBlockArg.
	self should: [ method acceptVisitor: visitor ] raise: MASlangFoundSameNameTwice withExceptionDo: [ :e | e conflictings anyOne name = #aLocal ]
]

{ #category : #'test-InvalidMethods' }
MASlangLocalNamesTest >> testConflictingTempAndBlockTemp [
	| method |
	method := self conflictingTempAndBlockTemp.
	self should: [ method acceptVisitor: visitor ] raise: MASlangFoundSameNameTwice withExceptionDo: [ :e | e conflictings anyOne name = #aTemp ]
]

{ #category : #'test-InvalidMethods' }
MASlangLocalNamesTest >> testConflictingTemps [
	| method |
	method := self conflictingTemps.
	self should: [ method acceptVisitor: visitor ] raise: MASlangFoundSameNameTwice withExceptionDo: [ :e | e conflictings anyOne name = #aTemp ]
]

{ #category : #test }
MASlangLocalNamesTest >> testOneOfEach [
	(self class >> #oneOfEach:) ast acceptVisitor: visitor.
	self assert: visitor result asSet equals: #( aTemp anArg aBlockTemp aBlockArg aBlockTempInInnerBlock aBlockArgInInnerBlock ) asSet
]

{ #category : #test }
MASlangLocalNamesTest >> testTemp [
	(self class >> #aTemp) ast acceptVisitor: visitor.
	self assert: visitor result equals: #( aTemp )
]

{ #category : #test }
MASlangLocalNamesTest >> testTemps [
	(self class >> #temps) ast acceptVisitor: visitor.
	self assert: visitor result equals: #( temp1 temp2 )
]

{ #category : #test }
MASlangLocalNamesTest >> testUsedArg [
	self shouldnt: [ (self class >> #anUsedArg:) ast acceptVisitor: visitor ] raise: MASlangFoundSameNameTwice.
]

{ #category : #test }
MASlangLocalNamesTest >> testUsedArgInBlock [
	self shouldnt: [ (self class >> #anUsedArgInBlock:) ast acceptVisitor: visitor ] raise: MASlangFoundSameNameTwice.
]

{ #category : #test }
MASlangLocalNamesTest >> testUsedTemp [
	self shouldnt: [ (self class >> #anUsedTemp) ast acceptVisitor: visitor ] raise: MASlangFoundSameNameTwice
]

{ #category : #test }
MASlangLocalNamesTest >> testUsedTempInBlock [
	self shouldnt: [ (self class >> #anUsedTempInBlock) ast acceptVisitor: visitor ] raise: MASlangFoundSameNameTwice.
]
