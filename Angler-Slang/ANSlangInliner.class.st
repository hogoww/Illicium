Class {
	#name : #ANSlangInliner,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'program',
		'inlinedSomething',
		'translator'
	],
	#category : #'Angler-Slang'
}

{ #category : #accessing }
ANSlangInliner class >> translator: aTranslator [

	^ self new
		translator: aTranslator;
		yourself
]

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
			1halt.
			((aNode isMessage
				and: [ aProgram hasMethodNamed: aNode selector ])
					and: [ (translator isSpecialSelector: aNode selector) ])	
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
ANSlangInliner >> cleanStatements: nodesToInline [

	| cleanNodes node |
	nodesToInline size > 1 ifFalse: [ ^ nodesToInline ].
	cleanNodes := nodesToInline copy.
	node := cleanNodes first.
	(node isMessage and: [ node selector = #flag: ])
		ifTrue: [ cleanNodes remove: node ].
	^ cleanNodes
]

{ #category : #inlining }
ANSlangInliner >> inline: aMethodNode insteadOf: aMessageNode [
	| nodesToInline |
	aMessageNode methodNode body
		temporaries: aMessageNode methodNode temporaries , aMethodNode body temporaries.
	nodesToInline := aMethodNode statements.
	nodesToInline := self cleanStatements: nodesToInline.
	
	nodesToInline last isReturn
		ifTrue: [ nodesToInline add: nodesToInline removeLast value ].

	nodesToInline size = 1
		ifTrue: [ aMessageNode replaceWith: nodesToInline first ]
		ifFalse: [
			aMessageNode parent
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
ANSlangInliner >> shouldInline: aMessageNode [
	
	| methodToInline |
	(program hasMethodNamed: aMessageNode selector) ifFalse: [ ^ false ].
	
	methodToInline := program methodNamed: aMessageNode selector.
	^ (translator isSpecialSelector: aMessageNode selector) not
		and: [ (methodToInline hasPragmaNamed: #cmacro) not ]
]

{ #category : #accessing }
ANSlangInliner >> translator [
	^ translator
]

{ #category : #accessing }
ANSlangInliner >> translator: anObject [
	translator := anObject
]

{ #category : #applying }
ANSlangInliner >> visitMessageNode: aMessageNode [

	(self shouldInline: aMessageNode)
		ifTrue:[ | methodToInline |
			inlinedSomething := true.
			methodToInline := (program methodNamed: aMessageNode selector) copy.
			self renameVariablesOf: methodToInline byArguments: aMessageNode arguments.
			self inline: methodToInline insteadOf: aMessageNode.
			].
	
	"Do not inline inside assertions"
	aMessageNode selector = #assert: ifTrue: [ ^ self ].
	super visitMessageNode: aMessageNode
]
