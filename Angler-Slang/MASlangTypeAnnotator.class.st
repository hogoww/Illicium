"
I annotate RB ASTs with types informations coming from Slang type inference, provided by CCodeGenerator
(See CCodeGenerator, type inference protocol)
"
Class {
	#name : #MASlangTypeAnnotator,
	#superclass : #FATypeAnnotator,
	#instVars : [
		'currentTMethod'
	],
	#category : #'Angler-Slang-Analysis'
}

{ #category : #visiting }
MASlangTypeAnnotator >> currentTMethod [
	^ currentTMethod
]

{ #category : #accessing }
MASlangTypeAnnotator >> typeThatNode: aNode [
	| type |
	type := aNode getSlangTypeUsing: inferer in: currentTMethod.
	self atNewPropertyPut: type -> nil for: aNode
]

{ #category : #accessing }
MASlangTypeAnnotator >> visitMessageNode: aMessageNode [
	"add an exception for cCode:inSmalltalk:, because slang ignores the second argument"
	aMessageNode selector = #cCode:inSmalltalk: 
		ifTrue: [ 
			self visitNode: aMessageNode receiver.
			self visitNode: aMessageNode arguments first.
			self typeThatNode: aMessageNode.
			^aMessageNode
			].
		
	aMessageNode selector = #halt
		ifTrue: [ ^ self visitNode: aMessageNode receiver ].

	(#( caseOf: caseOf:otherwise:) includes: aMessageNode selector)
		ifTrue: [ 
			self visitNode: aMessageNode receiver.
			aMessageNode arguments first statements do: [ :aMessageCaseNode |
					self visitNode: aMessageCaseNode receiver.
					aMessageCaseNode arguments do: [ :each | self visitNode: each ] ].
	
			"If there is an otherwise clause"
			aMessageNode arguments size > 1
				ifTrue: [self visitNode: aMessageNode arguments second].
			self typeThatNode: aMessageNode.
			^ aMessageNode ].
		
	super visitMessageNode: aMessageNode

	
]

{ #category : #accessing }
MASlangTypeAnnotator >> visitMethodNode: aMethodNode [
	"set the current tMethod, so we can give it to the CCodeGenerator, when asking for a node's type"
	currentTMethod := inferer methodNamed: aMethodNode selector.
	super visitMethodNode: aMethodNode.
	^ aMethodNode
]
