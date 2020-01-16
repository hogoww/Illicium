Class {
	#name : #ASTCSlangDeclarationAnnotator,
	#superclass : #ASTCVariableDeclarationAnnotator,
	#instVars : [
		'varNodesToDeclareAtTheStartOfTheMethod'
	],
	#category : #'ASTC-VisitorsRB'
}

{ #category : #visiting }
ASTCSlangDeclarationAnnotator >> initialize [
	super initialize.
	varNodesToDeclareAtTheStartOfTheMethod := Set new
]

{ #category : #visiting }
ASTCSlangDeclarationAnnotator >> visitAssignmentNode: anAssignmentNode [
	super visitAssignmentNode: anAssignmentNode.
	self atNewPropertyPut: false for: anAssignmentNode
]

{ #category : #visit }
ASTCSlangDeclarationAnnotator >> visitMethodNode: aMethodNode [
	super visitMethodNode: aMethodNode.
	
	"set the property for the temporaries tagged to be declared at the start of the function in the sequence node"
	"currenlty the temporary inside a block should still be declared at the start of the method"
	self atNewPropertyPut: varNodesToDeclareAtTheStartOfTheMethod for: aMethodNode body
]

{ #category : #visiting }
ASTCSlangDeclarationAnnotator >> visitSequenceNode: aSequenceNode [ 
	super visitSequenceNode: aSequenceNode.
	"Slang declares everything at start.
	currently skips the temp declared in blocks."
	aSequenceNode temporaries collect: [ :aTempDecl | aTempDecl ] into: varNodesToDeclareAtTheStartOfTheMethod.
	aSequenceNode parent isMethod ifFalse: [ self atNewPropertyPut: Set new for: aSequenceNode ] 
]
