Class {
	#name : #ASTCIlliciumDeclarationAnnotator,
	#superclass : #ASTCVariableDeclarationAnnotator,
	#category : #'ASTC-VisitorsRB'
}

{ #category : #visit }
ASTCIlliciumDeclarationAnnotator >> visitAssignmentNode: anAssignmentNode [
	| association variable |
	
	variable := anAssignmentNode variable.
	association := variableAppeareanceTracker associationAt: variable name 
		ifAbsent:[
			variableAppeareanceTracker add: 
				(Association key: variable name value:
					(variable acceptVisitor: self)) ].
				
	(association value and: [ anAssignmentNode parent ~= variable methodNode body ])
		ifTrue:[
			association value: false.
			varTodeclareAtStart add: variable name.
			].
	"Heuristic, if something is declared anywhere but the body of the method, we declare it in the body anyway.
	a scope analysis slightly more complex would allow something better though."


	self atNewPropertyPut: association value for: anAssignmentNode.
	association value: false.
	
	anAssignmentNode value acceptVisitor: self
]

{ #category : #visit }
ASTCIlliciumDeclarationAnnotator >> visitGlobalNode: aGlobalNode [
	"they are already declared"
	^ false
]

{ #category : #visit }
ASTCIlliciumDeclarationAnnotator >> visitInstanceVariableNode: aRBInstanceVariableNode [ 
	"they are already declared"
	^ false
]

{ #category : #visit }
ASTCIlliciumDeclarationAnnotator >> visitTemporaryNode: aRBTemporaryNode [ 
	"The first occurence should be declared, and the others shouldn't.
	See #visitAssignementNode for more information"
	^ true
]
