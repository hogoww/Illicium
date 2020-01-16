Class {
	#name : #ASTCVariableDeclarationAnnotator,
	#superclass : #ASTCAbstractCheckVisitor,
	#instVars : [
		'varTodeclareAtStart'
	],
	#category : #'ASTC-VisitorsRB'
}

{ #category : #accessing }
ASTCVariableDeclarationAnnotator class >> property [
	^#toDeclare
]

{ #category : #initialization }
ASTCVariableDeclarationAnnotator >> initialize [ 
	super initialize.
	varTodeclareAtStart := Set new.
]

{ #category : #visit }
ASTCVariableDeclarationAnnotator >> visitMethodNode: aMethodNode [
	super visitMethodNode: aMethodNode.
	
	"set the property for the temporaries tagged to be declared at the start of the function in the sequence node"
	"currenlty the temporary inside a block should still be declared at the start of the method"
	self atNewPropertyPut: varTodeclareAtStart for: aMethodNode body
]

{ #category : #accessing }
ASTCVariableDeclarationAnnotator >> visitSequenceNode: aSequenceNode [
	super visitSequenceNode: aSequenceNode.
	
	"This set should currently be empty except for the body of the method."
	"The body of the method is currenlty set by the visit of the methodNode"
	aSequenceNode parent isMethod ifFalse: [ self atNewPropertyPut: Set new for: aSequenceNode ]
]
