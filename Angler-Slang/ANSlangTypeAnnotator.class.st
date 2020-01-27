"
I annotate RB ASTs with types informations coming from Slang type inference, provided by CCodeGenerator
(See CCodeGenerator, type inference protocol)
"
Class {
	#name : #ANSlangTypeAnnotator,
	#superclass : #ASTCTypeAnnotator,
	#instVars : [
		'currentTMethod'
	],
	#category : #'Angler-Slang'
}

{ #category : #visiting }
ANSlangTypeAnnotator >> currentTMethod [
	^ currentTMethod
]

{ #category : #accessing }
ANSlangTypeAnnotator >> typeThatNode: aNode [
	| type |
	type := aNode getSlangTypeUsing: inferer in: currentTMethod.
	self atNewPropertyPut: type -> nil for: aNode
]

{ #category : #accessing }
ANSlangTypeAnnotator >> visitMessageNode: aMessageNode [
	"add an exception for cCode:inSmalltalk:, because slang ignores the second argument"
	aMessageNode selector = #cCode:inSmalltalk: 
		ifTrue: [ 
			self visitNode: aMessageNode receiver.
			self visitNode: aMessageNode arguments first.
			self typeThatNode: aMessageNode
			]
		ifFalse: [ super visitMessageNode: aMessageNode ].

	^ aMessageNode
]

{ #category : #accessing }
ANSlangTypeAnnotator >> visitMethodNode: aMethodNode [
	"set the current tMethod, so we can give it to the CCodeGenerator, when asking for a node's type"
	currentTMethod := inferer methodNamed: aMethodNode selector.
	super visitMethodNode: aMethodNode.
	^ aMethodNode
]