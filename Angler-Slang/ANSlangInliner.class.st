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

{ #category : #applying }
ANSlangInliner >> applyOnMethodI: aMethodNode ofProgram: aProgram [
	| inlining |		
	program := aProgram.
	inlining := true.
	[ inlining ]
	whileTrue: [  
		aMethodNode nodesDo: [:aNode|	
			(aNode isMessage and: [ aProgram containsMethodNamed: aNode selector ] )	
				ifTrue:[
					inlining := true.	
					self inline:( aProgram methodNamed: aNode selector) insteadOf: aNode	
					]]].
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

{ #category : #inlining }
ANSlangInliner >> renameVariablesOf: aMethodNode byArguments: arguments [
  | replacement |	
	aMethodNode body nodesDo: [:aNode |  
		aNode isArgument ifTrue: [
			replacement :=  arguments at: (aMethodNode arguments indexOf: aNode).
			aNode replaceWith: replacement ] ] 
]

{ #category : #applying }
ANSlangInliner >> visitMessageNode: aMessageNode [
	| methodToInline |
	(program hasMethodNamed: aMessageNode selector)
		ifTrue:[
			inlinedSomething := true.
			argumentToReplace := aMessageNode arguments.
			methodToInline := (program methodNamed: aMessageNode selector) copy.
			self renameVariablesOf: methodToInline byArguments: argumentToReplace.
			self inline: methodToInline insteadOf: aMessageNode.
			argumentToReplace := nil.
			].
	super visitMessageNode: aMessageNode
]
