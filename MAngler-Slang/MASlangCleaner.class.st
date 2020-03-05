Class {
	#name : #MASlangCleaner,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
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
		ifFalse: [ ^ super visitMessageNode: aMessageNode ].
	aMessageNode parent isSequence ifTrue:[ ^ aMessageNode parent replaceNode: aMessageNode withNodes: #() ].
	"if it is not replaced in a sequence, this is waaaay more complex and should be handled with care"
	self halt.
]
