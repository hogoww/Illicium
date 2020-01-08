"
I annotate RB ASTs with types informations coming from Slang type inference, provided by CCodeGenerator
(See CCodeGenerator, type inference protocol)
"
Class {
	#name : #ASTCSlangTypeAnnotator,
	#superclass : #ASTCTypeAnnotator,
	#instVars : [
		'currentTMethod'
	],
	#category : #'ASTC-VisitorsRB-Typing'
}

{ #category : #visiting }
ASTCSlangTypeAnnotator >> currentTMethod [
	^ currentTMethod
]

{ #category : #accessing }
ASTCSlangTypeAnnotator >> typeThatNode: aNode [
	| type |
	
	type := aNode getSlangTypeUsing: inferer in: currentTMethod.
	self atNewPropertyPut: type -> nil for: aNode
]

{ #category : #accessing }
ASTCSlangTypeAnnotator >> visitMethodNode: aMethodNode [
	"set the current tMethod, so we can give it to the CCodeGenerator, when asking for a node's type"
	currentTMethod := inferer methodNamed: aMethodNode selector.
	super visitMethodNode: aMethodNode.
	^ aMethodNode
]
