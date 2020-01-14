Class {
	#name : #ASTCSlangDeclarationAnnotator,
	#superclass : #ASTCVariableDeclarationAnnotator,
	#category : #'ASTC-VisitorsRB'
}

{ #category : #visiting }
ASTCSlangDeclarationAnnotator >> visitAssignmentNode: anAssignmentNode [
	(anAssignmentNode variable acceptVisitor: self)" as in aVariable shouldBeDeclaredAtTheStartOfTheFunction"
		ifTrue: [ varTodeclareAtStart add: anAssignmentNode variable name ].
	
	self atNewPropertyPut: false for: anAssignmentNode.
	
	super visitAssignmentNode: anAssignmentNode.
]

{ #category : #visiting }
ASTCSlangDeclarationAnnotator >> visitGlobalNode: aGlobalNode [
	^ false
]

{ #category : #visiting }
ASTCSlangDeclarationAnnotator >> visitInstanceVariableNode: anInstanceVariableNode [
	^ false
]

{ #category : #visiting }
ASTCSlangDeclarationAnnotator >> visitTemporaryNode: aTemporaryNode [
	^ true
]
