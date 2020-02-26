Class {
	#name : #MASlangCompleteShouldInlineTest,
	#superclass : #MASlangAbstractShouldInlineTest,
	#category : #'MAngler-Slang-Tests-AnalysisTests'
}

{ #category : #testing }
MASlangCompleteShouldInlineTest class >> inlinerClass [
	^ MASlangCompleteInliner
]

{ #category : #testing }
MASlangCompleteShouldInlineTest class >> isAbstract [
	^ false
]

{ #category : #tests }
MASlangCompleteShouldInlineTest >> testShouldInlineMethodWithArgumentBlock [
	self assert: super testShouldInlineMethodWithArgumentBlock
]

{ #category : #tests }
MASlangCompleteShouldInlineTest >> testShouldInlineSuper [
	self assert: super testShouldInlineSuper
]
