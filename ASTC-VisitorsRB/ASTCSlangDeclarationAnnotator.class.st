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
ASTCSlangDeclarationAnnotator >> visitTemporaryNode: aTemporaryNode [
	varTodeclareAtStart add: aTemporaryNode name
]
