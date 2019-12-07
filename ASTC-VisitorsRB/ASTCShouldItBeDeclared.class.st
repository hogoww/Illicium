Class {
	#name : #ASTCShouldItBeDeclared,
	#superclass : #ASTCAbstractCheckVisitor,
	#instVars : [
		'variableAppeareanceTracker',
		'varTodeclareAtStart'
	],
	#category : #'ASTC-VisitorsRB'
}

{ #category : #accessing }
ASTCShouldItBeDeclared class >> property [
	^#needsDeclaration
]

{ #category : #initialization }
ASTCShouldItBeDeclared >> initialize [ 
	variableAppeareanceTracker:= Dictionary new.
	varTodeclareAtStart := Bag new.
]

{ #category : #visit }
ASTCShouldItBeDeclared >> visitAssignmentNode: anAssignmentNode [
	| association variable |
	
	variable := anAssignmentNode variable.
	association := variableAppeareanceTracker associationAt: variable name 
		ifAbsent:[
			variableAppeareanceTracker add: 
				(Association key: variable name value:
					(variable acceptVisitor: self)) ].
				
	"(association value and: [ (variable whoDefines: variable name) = variable methodNode body or:[ anAssignmentNode parent isSequence not]])
		ifTrue:[
			association value: false.
			varTodeclareAtStart add: variable.
			]."
	"Heuristic, if something is declared anywhere but the body of the method, we declare it in the body anyway.
	a scope analysis slightly more complex would allow something better though."


	self atNewPropertyPut: association value for: anAssignmentNode.
	association value: false.
	
	anAssignmentNode value acceptVisitor: self
]

{ #category : #visit }
ASTCShouldItBeDeclared >> visitGlobalNode: aGlobalNode [
	(aGlobalNode parent isAssignment
		and: [ aGlobalNode parent variable = aGlobalNode ])
		ifTrue: [ UnsupportedFeature new feature: 'Global variable assignements' ; signal ].
	^ false
]

{ #category : #visit }
ASTCShouldItBeDeclared >> visitInstanceVariableNode: anInstanceVariable [
	^ false
]

{ #category : #visit }
ASTCShouldItBeDeclared >> visitMethodNode: aMethodNode [
	super visitMethodNode: aMethodNode.
	
	aMethodNode body temporaries 
		do: [ :aTemp |
			(varTodeclareAtStart includes: aTemp) ifTrue:[  self atNewPropertyPut: true for: aTemp ]]
]

{ #category : #visit }
ASTCShouldItBeDeclared >> visitTemporaryNode: aTemporaryNode [
	^ true
]
