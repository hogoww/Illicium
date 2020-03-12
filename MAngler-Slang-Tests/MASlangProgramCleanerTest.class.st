Class {
	#name : #MASlangProgramCleanerTest,
	#superclass : #FAVisitorTest,
	#instVars : [
		'program',
		'needToBeRemovedProperty',
		'cleaner'
	],
	#category : #'MAngler-Slang-Tests-AnalysisTests'
}

{ #category : #'as yet unclassified' }
MASlangProgramCleanerTest >> aMethodThatShouldBeRemoved [
	"because it's using an odd number, and everybody hates odd numbers. Of course."
	1
]

{ #category : #'as yet unclassified' }
MASlangProgramCleanerTest >> aMethodThatShouldNotBeRemoved [
	"even numbers <3"
	2
]

{ #category : #basic }
MASlangProgramCleanerTest >> setUp [
	program := MASlangProgram new.
	cleaner := MASlangProgramCleaner new.
	needToBeRemovedProperty := MASlangProgramCleaner propertyName
]

{ #category : #basic }
MASlangProgramCleanerTest >> testMethodThatShouldBeRemovedIsRemoved [
	| methodThatShouldBeRemoved |
	methodThatShouldBeRemoved := (self class >> #aMethodThatShouldBeRemoved) ast copy.
	methodThatShouldBeRemoved propertyAt: needToBeRemovedProperty put: true.
	program addMethod: methodThatShouldBeRemoved.
	
	cleaner applyOnProgram: program.
	
	self assert: program methods size equals: 0.
]

{ #category : #basic }
MASlangProgramCleanerTest >> testMethodThatShouldNotBeRemovedIsNotRemoved [
	| methodThatShouldNotBeRemoved |
	methodThatShouldNotBeRemoved := (self class >> #aMethodThatShouldNotBeRemoved) ast copy.
	program addMethod: methodThatShouldNotBeRemoved.
	
	cleaner applyOnProgram: program.
	
	self assert: program methods size equals: 1.
	self assert: program methods anyOne equals: methodThatShouldNotBeRemoved.
]
