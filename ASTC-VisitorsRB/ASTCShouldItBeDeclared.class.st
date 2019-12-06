Class {
	#name : #ASTCShouldItBeDeclared,
	#superclass : #ASTCAbstractCheckVisitor,
	#instVars : [
		'variableAppeareanceTracker'
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
]

{ #category : #visit }
ASTCShouldItBeDeclared >> visitArgumentNode: anArgumentNode [
	^ true
]

{ #category : #visit }
ASTCShouldItBeDeclared >> visitAssignmentNode: anAssignmentNode [
	| association variable | 
	self haltIf: [ variable = #srcIndex ].
	variable := anAssignmentNode variable.
	association := variableAppeareanceTracker associationAt: variable name 
		ifAbsent:[ variableAppeareanceTracker add: 
			(Association key: variable name value:
				(variable acceptVisitor: self))].	

	self atNewPropertyPut: association value for: anAssignmentNode.

	association value: false.
	^ self
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
ASTCShouldItBeDeclared >> visitSelfNode: anSelfNode [
	^false
	
]

{ #category : #visit }
ASTCShouldItBeDeclared >> visitSuperNode: anSuperNode [
	"should never be called. Pharo's Compiler should stop you first."
	self error: 'trying to assign something to super? Are you sure?'. 
	
]

{ #category : #visit }
ASTCShouldItBeDeclared >> visitTemporaryNode: anTemporaryNode [
	^ true
]

{ #category : #visit }
ASTCShouldItBeDeclared >> visitThisContextNode: anThisContextNode [
	"should never be called. Pharo's Compiler should stop you first."
	self error: 'trying to assign something to thisContext? Are you sure?'. 
	
]
