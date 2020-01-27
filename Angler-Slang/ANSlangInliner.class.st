Class {
	#name : #ANSlangInliner,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'program',
		'inlinedSomething',
		'argumentToReplace'
	],
	#category : #'Angler-Slang'
}

{ #category : #applying }
ANSlangInliner >> applyOnMethod: aMethodNode ofProgram: aProgram [
	program := aProgram.
	[ 
		inlinedSomething := false.
		aMethodNode acceptVisitor: self 
	] doWhileTrue: [ inlinedSomething ].
	 ^ aMethodNode
]

{ #category : #inlining }
ANSlangInliner >> inline: aMethodNode insteadOf: aMessageNode [
	| nodeToInline |
	nodeToInline := aMethodNode statements first.
	nodeToInline isReturn
		ifTrue: [ nodeToInline := nodeToInline value ].
	self renameVariablesOf: aMethodNode byArguments: aMessageNode arguments.
	aMessageNode replaceWith: nodeToInline
]

{ #category : #inilining }
ANSlangInliner >> renameVariablesOf: aMethodNode byArguments: arguments [
  | replacement |
	aMethodNode body nodesDo: [:aNode |  aNode isArgument ifTrue: [
		
		replacement := arguments at: (aMethodNode argumentNames indexOf: aNode name).
		aNode replaceWith: replacement ] ]
]

{ #category : #inilining }
ANSlangInliner >> visitArgument: anArgumentNode [

	argumentToReplace ifNil:[ ^self]. "Unset, therefore no replacement needed"
	anArgumentNode replaceWith: [ argumentToReplace detect: [:anArgNode| anArgNode name = anArgumentNode name ] ]
]

{ #category : #applying }
ANSlangInliner >> visitAssignmentNode: anAssignmentNode [
	self halt.
	super visitAssignmentNode: anAssignmentNode 
]

{ #category : #applying }
ANSlangInliner >> visitMessageNode: aMessageNode [
	(program hasMethodNamed: aMessageNode selector)
		ifTrue:[ 
			inlinedSomething := true.
			argumentToReplace := aMessageNode arguments.
			self inline: (program methodNamed: aMessageNode selector) insteadOf: aMessageNode.
			argumentToReplace := nil.
			].
	super visitMessageNode: aMessageNode
]
