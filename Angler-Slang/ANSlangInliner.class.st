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

{ #category : #inlining }
ANSlangInliner >> inline: aMethodNode insteadOf: aMessageNode [
	| nodesToInline |
	nodesToInline := aMethodNode statements.
	(nodesToInline last isReturn and: [ nodesToInline last value isSelf not ])
		ifTrue: [ nodesToInline add: nodesToInline removeLast value ].
	aMessageNode parent replaceNode: aMessageNode withNodes: nodesToInline
]

{ #category : #inlining }
ANSlangInliner >> renameVariablesOf: aMethodNode byArguments: arguments [
  | replacement |	
	aMethodNode body nodesDo: [:aNode |  
		(aNode isArgument and:[ aNode isBlockVar not ]) ifTrue: [
			replacement :=  arguments at: (aMethodNode arguments indexOf: aNode).
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
