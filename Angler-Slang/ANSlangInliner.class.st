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
	aMessageNode parent replaceNode: aMessageNode withNode: nodeToInline
]

{ #category : #inilining }
ANSlangInliner >> visitArgument: anArgumentNode [

	argumentToReplace ifNil:[ ^self]. "Unset, therefore no replacement needed"
	anArgumentNode replaceWith: [ argumentToReplace detect: [:anArgNode| anArgNode name = anArgumentNode name ] ]
]

{ #category : #applying }
ANSlangInliner >> visitMessageNode: aMessageNode [
	| methodToInline |
	(program hasMethodNamed: aMessageNode selector)
		ifTrue:[ 
			inlinedSomething := true.
			argumentToReplace := aMessageNode arguments.
			methodToInline := (program methodNamed: aMessageNode selector) copy. 
			methodToInline body acceptVisitor: self.
			self inline:methodToInline insteadOf: aMessageNode.
			argumentToReplace := nil.
			].
	super visitMessageNode: aMessageNode
]
