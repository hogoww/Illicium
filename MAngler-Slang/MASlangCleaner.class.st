Class {
	#name : #MASlangCleaner,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'program',
		'inlinedSomething',
		'selectorToRemove'
	],
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #cleaning }
MASlangCleaner >> initialize [
	selectorToRemove := #(flag flag: assert: eassert: deny:)
]

{ #category : #cleaning }
MASlangCleaner >> selectorToRemove [
	^ selectorToRemove
]

{ #category : #cleaning }
MASlangCleaner >> visitMessageNode: aMessageNode [
	(selectorToRemove includes: aMessageNode selector)
		ifTrue:[ aMessageNode replaceWith: #() ]
]
