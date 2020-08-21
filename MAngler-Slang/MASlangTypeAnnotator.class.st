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
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #visiting }
MASlangTypeAnnotator >> currentTMethod [
	^ currentTMethod
]

{ #category : #accessing }
MASlangTypeAnnotator >> typeThatNode: aNode [
	| type cType |
	type := aNode getSlangTypeUsing: inferer in: currentTMethod.
	cType := CType createFrom: type .
	self atNewPropertyPut: cType for: aNode
]

{ #category : #accessing }
MASlangTypeAnnotator >> visitMessageNode: aMessageNode [
	(#(caseOf: caseOf:otherwise: ) includes: aMessageNode selector)
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
	aMethodNode isCMacro
		ifFalse: [ super visitMethodNode: aMethodNode ]
		ifTrue: [ self typeThatNode: aMethodNode ].
	^ aMethodNode
]
