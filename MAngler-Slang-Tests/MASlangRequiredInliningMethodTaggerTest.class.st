Class {
	#name : #MASlangRequiredInliningMethodTaggerTest,
	#superclass : #FAVisitorTest,
	#instVars : [
		'program',
		'needToBeRemovedProperty'
	],
	#category : #'MAngler-Slang-Tests-AnalysisTests'
}

{ #category : #tests }
MASlangRequiredInliningMethodTaggerTest >> aMethodReceivingABlockAsArg: aBlock [
	aBlock value
]

{ #category : #tests }
MASlangRequiredInliningMethodTaggerTest >> aMethodSendingAMessageWithABlock [
	self aMethodReceivingABlockAsArg: [ 1 ].
]

{ #category : #basic }
MASlangRequiredInliningMethodTaggerTest >> setUp [
	program := MASlangProgram new.
	visitor := MASlangRequiredInliningMethodTagger new program: program; yourself.
	needToBeRemovedProperty := MASlangProgramCleaner propertyName
]

{ #category : #tests }
MASlangRequiredInliningMethodTaggerTest >> testTagMethodWithABlockAsArgumentAsShouldBeRemoved [
	| methodNeedingInlining methodNeedingToBeInlined |
	methodNeedingToBeInlined := (self class >> #aMethodReceivingABlockAsArg:) ast copy.
	methodNeedingInlining := (self class >> #aMethodSendingAMessageWithABlock) ast copy.
	program addMethod: methodNeedingInlining.
	program addMethod: methodNeedingToBeInlined.
	
	methodNeedingInlining acceptVisitor: visitor.
	methodNeedingToBeInlined acceptVisitor: visitor.
	
	self deny: (methodNeedingInlining hasProperty: needToBeRemovedProperty).
	self assert: (methodNeedingToBeInlined hasProperty: needToBeRemovedProperty).
	self assert: program methods size equals: 2.
	program methods do:
		[ :aMethod | 
			self assert: ((aMethod hasProperty: needToBeRemovedProperty) ==> [ aMethod = methodNeedingToBeInlined]) ]
]
