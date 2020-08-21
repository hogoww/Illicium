Class {
	#name : #MAMethodCleaner,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'selectorToRemove',
		'messageNode'
	],
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #cleaning }
MAMethodCleaner >> applyOnMethod: aMethod ofProgram: aProgram [
	" aProgram is not used in this transformation"
	aMethod acceptVisitor: self
]

{ #category : #cleaning }
MAMethodCleaner >> asserta: something [
	^ messageNode parent replaceNode: messageNode withNode: messageNode arguments first.
]

{ #category : #cleaning }
MAMethodCleaner >> cCode: something inSmalltalk: somethingElse [
	messageNode selector: #cCode:.
	messageNode arguments removeLast.
]

{ #category : #cleaning }
MAMethodCleaner >> halt [ 
	messageNode parent isReturn
		ifTrue: [ ^ messageNode parent replaceNode: messageNode withNode: messageNode receiver ].

]

{ #category : #initialization }
MAMethodCleaner >> initialize [
	selectorToRemove := #(cCode:inSmalltalk: halt flag flag: assert: deny: eassert: assert:l: asserta:l: asserta:).
]

{ #category : #cleaning }
MAMethodCleaner >> selectorToRemove [
	^ selectorToRemove
]

{ #category : #cleaning }
MAMethodCleaner >> visitMessageNode: aMessageNode [
	(selectorToRemove includes: aMessageNode selector) ifFalse: [ ^ super visitMessageNode: aMessageNode ].
	messageNode := aMessageNode.

	aMessageNode parent isSequence ifTrue:[ ^ aMessageNode parent replaceNode: aMessageNode withNodes: #() ].
	"if it is not replaced in a sequence, this is waaaay more complex and should be handled with care"
 	self perform: aMessageNode selector withArguments: aMessageNode arguments asArray.
]
