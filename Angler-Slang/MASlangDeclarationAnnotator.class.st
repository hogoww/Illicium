"
see super comment.

I also have a bad dependency forcing me to be run last, because i copy temporary nodes that may be used.
And those temporary nodes have to be typed..

USE WITH CARE.
"
Class {
	#name : #MASlangDeclarationAnnotator,
	#superclass : #FAVariableDeclarationAnnotator,
	#instVars : [
		'varNodesToDeclareAtTheStartOfTheMethod'
	],
	#category : #'Angler-Slang-analysis'
}

{ #category : #visiting }
MASlangDeclarationAnnotator >> initialize [
	super initialize.
	varNodesToDeclareAtTheStartOfTheMethod := self class defaultCollection new
]

{ #category : #visiting }
MASlangDeclarationAnnotator >> visitAssignmentNode: anAssignmentNode [
	super visitAssignmentNode: anAssignmentNode.
	self atNewPropertyPut: false for: anAssignmentNode
]

{ #category : #visiting }
MASlangDeclarationAnnotator >> visitBlockNode: aBlockNode [ 
	super visitBlockNode: aBlockNode.
	"Slang declares everything at start, including arguments of certain blocks (#to:do:..)"
	
	"exception list for stuff using arguments in blocks that are not considered"
	(aBlockNode parent isMessage 
		and: [ (#(addressOf:put:) includes: aBlockNode parent selector) ]) 
			ifTrue:[ ^ self ].
	
	"Temporaries are handled by the sequence node."
	aBlockNode arguments collect: [ :anArgDecl | anArgDecl ] into: varNodesToDeclareAtTheStartOfTheMethod.
]

{ #category : #visit }
MASlangDeclarationAnnotator >> visitMethodNode: aMethodNode [
	super visitMethodNode: aMethodNode.
	
	"set the property for the temporaries tagged to be declared at the start of the function in the sequence node"
	"currenlty the temporary inside a block should still be declared at the start of the method"
	self atNewPropertyPut: varNodesToDeclareAtTheStartOfTheMethod for: aMethodNode body
]

{ #category : #visiting }
MASlangDeclarationAnnotator >> visitSequenceNode: aSequenceNode [ 
	super visitSequenceNode: aSequenceNode.
	"Slang declares everything at start.
	currently skips the temp declared in blocks."
	aSequenceNode temporaries collect: [ :aTempDecl | aTempDecl copy ] into: varNodesToDeclareAtTheStartOfTheMethod.
	aSequenceNode parent isMethod ifFalse: [ self atNewPropertyPut: self class defaultCollection new for: aSequenceNode ] 
]
