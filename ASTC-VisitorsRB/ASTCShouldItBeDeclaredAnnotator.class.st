Class {
	#name : #ASTCShouldItBeDeclaredAnnotator,
	#superclass : #ASTCAbstractCheckVisitor,
	#instVars : [
		'variableAppeareanceTracker',
		'varTodeclareAtStart'
	],
	#category : #'ASTC-VisitorsRB'
}

{ #category : #accessing }
ASTCShouldItBeDeclaredAnnotator class >> property [
	^#needsDeclaration
]

{ #category : #initialization }
ASTCShouldItBeDeclaredAnnotator >> initialize [ 
	variableAppeareanceTracker:= Dictionary new.
	varTodeclareAtStart := Bag new.
]

{ #category : #visit }
ASTCShouldItBeDeclaredAnnotator >> visitAssignmentNode: anAssignmentNode [
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
			varTodeclareAtStart add: variable.
			].
	"Heuristic, if something is declared anywhere but the body of the method, we declare it in the body anyway.
	a scope analysis slightly more complex would allow something better though."


	self atNewPropertyPut: association value for: anAssignmentNode.
	association value: false.
	
	anAssignmentNode value acceptVisitor: self
]

{ #category : #visit }
ASTCShouldItBeDeclaredAnnotator >> visitGlobalNode: aGlobalNode [
	(aGlobalNode parent isAssignment
		and: [ aGlobalNode parent variable = aGlobalNode ])
		ifTrue: [ UnsupportedFeature new feature: 'Global variable assignements' ; signal ].
	^ false
]

{ #category : #visit }
ASTCShouldItBeDeclaredAnnotator >> visitInstanceVariableNode: anInstanceVariable [
	^ false
]

{ #category : #visit }
ASTCShouldItBeDeclaredAnnotator >> visitMethodNode: aMethodNode [
	super visitMethodNode: aMethodNode.

	aMethodNode body temporaries
		do: [ :aTemp | 
			self atNewPropertyPut: (varTodeclareAtStart includes: aTemp)
				for: aTemp ]
]

{ #category : #visit }
ASTCShouldItBeDeclaredAnnotator >> visitTemporaryNode: aTemporaryNode [
	^ true
]
