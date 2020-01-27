Class {
	#name : #ANSlangDeclarationAnnotator,
	#superclass : #ASTCVariableDeclarationAnnotator,
	#instVars : [
		'varNodesToDeclareAtTheStartOfTheMethod'
	],
	#category : #'Angler-Slang'
}

{ #category : #visiting }
ANSlangDeclarationAnnotator >> initialize [
	super initialize.
	varNodesToDeclareAtTheStartOfTheMethod := Set new
]

{ #category : #visiting }
ANSlangDeclarationAnnotator >> visitAssignmentNode: anAssignmentNode [
	super visitAssignmentNode: anAssignmentNode.
	self atNewPropertyPut: false for: anAssignmentNode
]

{ #category : #visiting }
ANSlangDeclarationAnnotator >> visitBlockNode: aBlockNode [ 
	super visitBlockNode: aBlockNode.
	"Slang declares everything at start, including arguments of certain blocks (#to:do:..)"
	
	"exception list for stuff using arguments in blocks that are not considered"
	(aBlockNode parent isMessage 
		and: [ (#(addressOf:put:) includes: aBlockNode parent selector) ]) 
			ifTrue:[ ^ self ].
	
	aBlockNode arguments collect: [ :aTempDecl | aTempDecl ] into: varNodesToDeclareAtTheStartOfTheMethod.
]

{ #category : #visit }
ANSlangDeclarationAnnotator >> visitMethodNode: aMethodNode [
	super visitMethodNode: aMethodNode.
	
	"set the property for the temporaries tagged to be declared at the start of the function in the sequence node"
	"currenlty the temporary inside a block should still be declared at the start of the method"
	self atNewPropertyPut: varNodesToDeclareAtTheStartOfTheMethod asOrderedCollection for: aMethodNode body
]

{ #category : #visiting }
ANSlangDeclarationAnnotator >> visitSequenceNode: aSequenceNode [ 
	super visitSequenceNode: aSequenceNode.
	"Slang declares everything at start.
	currently skips the temp declared in blocks."
	aSequenceNode temporaries collect: [ :aTempDecl | aTempDecl ] into: varNodesToDeclareAtTheStartOfTheMethod.
	aSequenceNode parent isMethod ifFalse: [ self atNewPropertyPut: OrderedCollection new for: aSequenceNode ] 
]
