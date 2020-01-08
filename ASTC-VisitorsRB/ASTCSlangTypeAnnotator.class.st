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

{ #category : #accessing }
ASTCSlangTypeAnnotator >> typeThatNode: aNode [
	| type tNode |	
	tNode := aNode propertyAt: #tnodeEquivalent ifAbsent: [ self error ].
	
	type := inferer typeFor: tNode in: currentTMethod.
		
	self atNewPropertyPut: type -> nil for: aNode
]

{ #category : #accessing }
ASTCSlangTypeAnnotator >> visitMethodNode: aMethodNode [
	"set the current tMethod, so we can give it to the CCodeGenerator, when asking for a node's type"
	currentTMethod := inferer methodNamed: aMethodNode selector.
	
	self atNewPropertyPut: currentTMethod returnType -> currentTMethod for: aMethodNode.
	"TMethod nodes are not TParseNodes, so we have to ask for the type differntly"
	
	super visitMethodNode: aMethodNode.
	^ aMethodNode
]
