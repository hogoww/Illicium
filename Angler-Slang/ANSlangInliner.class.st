Class {
	#name : #ANSlangInliner,
	#superclass : #Object,
	#category : #'Angler-Slang'
}

{ #category : #applying }
ANSlangInliner >> applyOnMethod: aMethodNode ofProgram: aProgram [
	| inlining |
	inlining := true.
	[ inlining ]
	whileTrue:[
		inlining := false.
		aMethodNode nodesDo: [:aNode|
			(aNode isMessage and: [ aProgram containsMethodNamed: aNode selector ] )
				ifTrue:[
					inlining := true.
					self inline:( aProgram methodNamed: aNode selector) insteadOf: aNode
					]
		 ]].
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
