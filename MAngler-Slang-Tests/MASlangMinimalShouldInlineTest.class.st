Class {
	#name : #MASlangMinimalShouldInlineTest,
	#superclass : #MASlangAbstractShouldInlineTest,
	#category : #'MAngler-Slang-Tests-AnalysisTests'
}

{ #category : #testing }
MASlangMinimalShouldInlineTest class >> inlinerClass [
	^ MASlangMinimalInliner 
]

{ #category : #testing }
MASlangMinimalShouldInlineTest class >> isAbstract [ 
	^ false
]

{ #category : #tests }
MASlangMinimalShouldInlineTest >> testShouldInlineMethodWithArgumentBlock [
	self assert: super testShouldInlineMethodWithArgumentBlock
]

{ #category : #tests }
MASlangMinimalShouldInlineTest >> testShouldInlineSuper [
	self assert: super testShouldInlineSuper
]

{ #category : #tests }
MASlangMinimalShouldInlineTest >> testShouldNotInlineUnknownMethods [
	self deny: super testShouldNotInlineUnknownMethods
]
