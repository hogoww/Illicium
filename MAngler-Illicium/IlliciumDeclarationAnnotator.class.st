Class {
	#name : #IlliciumDeclarationAnnotator,
	#superclass : #FAVariableDeclarationAnnotator,
	#instVars : [
		'variableAppeareanceTracker',
		'varNamesToDeclareAtStart'
	],
	#category : #'MAngler-Illicium-Analysis'
}

{ #category : #visit }
IlliciumDeclarationAnnotator >> initialize [ 
	super initialize.
	varNamesToDeclareAtStart := Set new.
	variableAppeareanceTracker:= Dictionary new.
]

{ #category : #visit }
IlliciumDeclarationAnnotator >> visitAssignmentNode: anAssignmentNode [
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
			varNamesToDeclareAtStart add: variable name.
			].
	"Heuristic, if something is declared anywhere but the body of the method, we declare it in the body anyway.
	a scope analysis slightly more complex would allow something better though."


	self atNewPropertyPut: association value for: anAssignmentNode.
	association value: false.
	
	anAssignmentNode value acceptVisitor: self
]

{ #category : #visit }
IlliciumDeclarationAnnotator >> visitGlobalNode: aGlobalNode [
	"they are already declared"
	^ false
]

{ #category : #visit }
IlliciumDeclarationAnnotator >> visitInstanceVariableNode: aRBInstanceVariableNode [ 
	"they are already declared"
	^ false
]

{ #category : #accessing }
IlliciumDeclarationAnnotator >> visitSequenceNode: aSequenceNode [
	| tempToDeclare |
	super visitSequenceNode: aSequenceNode.
	
	"This set should currently be empty except for the body of the method."
	"The body of the method is currently set by the visit of the methodNode"
	tempToDeclare := aSequenceNode temporaries select: [ :aTemporaryDeclaration | 
		(varNamesToDeclareAtStart includes: aTemporaryDeclaration name)].

	self atNewPropertyPut: tempToDeclare for: aSequenceNode.
]

{ #category : #visit }
IlliciumDeclarationAnnotator >> visitTemporaryNode: aRBTemporaryNode [ 
	"The first occurence should be declared, and the others shouldn't.
	See #visitAssignementNode for more information"
	^ true
]
