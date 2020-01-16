Class {
	#name : #ASTCSlangDeclarationAnnotator,
	#superclass : #ASTCVariableDeclarationAnnotator,
	#category : #'ASTC-VisitorsRB'
}

{ #category : #visiting }
ASTCSlangDeclarationAnnotator >> visitAssignmentNode: anAssignmentNode [
	super visitAssignmentNode: anAssignmentNode.
	self atNewPropertyPut: false for: anAssignmentNode
]

{ #category : #visiting }
ASTCSlangDeclarationAnnotator >> visitSequenceNode: aSequenceNode [ 
	super visitSequenceNode: aSequenceNode.
	"Slang declares everything at start.
	currently skips the temp declared in blocks."
	aSequenceNode temporaries collect: [ :aTemp | aTemp name ] into: varTodeclareAtStart
]
