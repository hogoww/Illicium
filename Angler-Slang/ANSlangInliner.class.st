Class {
	#name : #ANSlangInliner,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'program',
		'inlinedSomething'
	],
	#category : #'Angler-Slang'
}

{ #category : #applying }
ANSlangInliner >> applyOnMethod: aMethodNode ofProgram: aProgram [
	"Should get a copy of a method node as parameter, since it's going to modify it."
	program := aProgram.
	[
		inlinedSomething := false.
		aMethodNode acceptVisitor: self 
	] doWhileTrue: [ inlinedSomething ].
	 ^ aMethodNode
]

{ #category : #applying }
ANSlangInliner >> applyOnMethodI: aMethodNode ofProgram: aProgram [	
	program := aProgram.
	inlinedSomething := true.
	[ inlinedSomething ]
	whileTrue: [  
		aMethodNode nodesDo: [:aNode|	
			(aNode isMessage and: [ aProgram hasMethodNamed: aNode selector ])	
				ifTrue:[ | methodToInline |	
					inlinedSomething := true.
					methodToInline := (aProgram methodNamed: aNode selector) copy.
					self renameVariablesOf: methodToInline byArguments: aNode arguments.
					self inline: methodToInline insteadOf: aNode	
					]]].
	^ aMethodNode
]

{ #category : #cleaning }
ANSlangInliner >> cleanMethod: aRBMethodNode [
	| node |
	aRBMethodNode statements size > 1 ifFalse: [ ^ self ].

	node := aRBMethodNode statements first.
	(node isMessage and: [ node selector = #flag: ])
		ifTrue: [ aRBMethodNode body removeNode: node ]
]

{ #category : #inlining }
ANSlangInliner >> inline: aMethodNode insteadOf: aMessageNode [
	| nodesToInline |
	self cleanMethod: aMethodNode.
	aMessageNode methodNode body
		temporaries: aMessageNode methodNode temporaries , aMethodNode body temporaries.
	nodesToInline := aMethodNode statements.
	
	nodesToInline last isReturn
		ifTrue: [ nodesToInline add: nodesToInline removeLast value ].
		
	nodesToInline size = 1
		ifTrue: [ aMessageNode replaceWith: nodesToInline first ]
		ifFalse: [ aMessageNode parent
				replaceNode: aMessageNode
				withNodes: nodesToInline ]
]

{ #category : #inlining }
ANSlangInliner >> renameVariablesOf: aMethodNode byArguments: arguments [
  | replacement |	
	aMethodNode body nodesDo: [:aNode |  
		(aNode isArgument and:[ aNode isBlockVar not ]) ifTrue: [
			replacement := arguments at: (aMethodNode arguments indexOf: aNode).
			aNode replaceWith: replacement ] ] 
]

{ #category : #applying }
ANSlangInliner >> visitMessageNode: aMessageNode [
	(program hasMethodNamed: aMessageNode selector)
		ifTrue:[ | methodToInline |
			inlinedSomething := true.
			methodToInline := (program methodNamed: aMessageNode selector) copy.
			self renameVariablesOf: methodToInline byArguments: aMessageNode arguments.
			self inline: methodToInline insteadOf: aMessageNode.
			].
	super visitMessageNode: aMessageNode
]
