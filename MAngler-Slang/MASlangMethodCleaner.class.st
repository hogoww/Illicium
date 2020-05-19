Class {
	#name : #MASlangMethodCleaner,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'selectorToRemove'
	],
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #cleaning }
MASlangMethodCleaner >> applyOnMethod: aMethod ofProgram: aProgram [
	" aProgram is not used in this transformation"
	aMethod acceptVisitor: self
]

{ #category : #cleaning }
MASlangMethodCleaner >> initialize [
	selectorToRemove := #(flag flag: assert: eassert: deny: halt cCode:inSmalltalk:)
]

{ #category : #cleaning }
MASlangMethodCleaner >> selectorToRemove [
	^ selectorToRemove
]

{ #category : #cleaning }
MASlangMethodCleaner >> visitMessageNode: aMessageNode [
	(selectorToRemove includes: aMessageNode selector)
		ifFalse: [ ^ super visitMessageNode: aMessageNode ].

	aMessageNode parent isSequence ifTrue:[ ^ aMessageNode parent replaceNode: aMessageNode withNodes: #() ].
	"if it is not replaced in a sequence, this is waaaay more complex and should be handled with care"

	aMessageNode selector = #cCode:inSmalltalk: 
		ifTrue: [ "we remove the smalltalk parts, as they are a problem everywhere."
			aMessageNode selector: #cCode:.
			aMessageNode arguments removeLast.
			^ aMessageNode
			 ].

	"special case for halt"
	(aMessageNode selector = #halt and: [ aMessageNode parent isReturn ])
		ifTrue: [ ^ aMessageNode parent replaceNode: aMessageNode withNode: aMessageNode receiver ].
	self halt.
]
