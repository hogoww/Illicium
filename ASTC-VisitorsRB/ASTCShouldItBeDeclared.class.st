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
ASTCShouldItBeDeclared >> visitArgumentNode: anArgumentNode [
	^ false
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
				
	(association value and: [ (variable whoDefines: variable name) = variable methodNode body or:[ anAssignmentNode parent isSequence not]])
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
ASTCShouldItBeDeclared >> visitGlobalNode: aGlobalNode [
	(aGlobalNode parent isAssignment and:[ aGlobalNode parent variable = self]) ifTrue:[ self error: 'Unsupported for now' ].
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
			(varTodeclareAtStart includes: aTemp) ifTrue:[ self halt. self atNewPropertyPut: true for: aTemp ]]
]

{ #category : #visit }
ASTCShouldItBeDeclared >> visitSelfNode: aSelfNode [
	^ false
]

{ #category : #visit }
ASTCShouldItBeDeclared >> visitSuperNode: aSuperNode [
	"should never be called. Pharo's Compiler should stop you first."
	self error: 'trying to assign something to super? Are you sure?'. 
	
]

{ #category : #visit }
ASTCShouldItBeDeclared >> visitTemporaryNode: aTemporaryNode [
	^ true
]

{ #category : #visit }
ASTCShouldItBeDeclared >> visitThisContextNode: aThisContextNode [
	"should never be called. Pharo's Compiler should stop you first."
	self error: 'trying to assign something to thisContext? Are you sure?'. 
	
]
