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

{ #category : #initialization }
ASTCShouldItBeDeclared >> visitArgumentNode: anArgumentNode [
	^ true
]

{ #category : #initialization }
ASTCShouldItBeDeclared >> visitAssignmentNode: anAssignmentNode [
	| association variable | 
	variable := anAssignmentNode variable.
	association := variableAppeareanceTracker associationAt:  variable name 
		ifAbsent:[ variableAppeareanceTracker add: (Association key: variable name value:
			(variable acceptVisitor: self))].	

	self atNewPropertyPut: association value for: anAssignmentNode.

	association value:false.
	^self
]

{ #category : #initialization }
ASTCShouldItBeDeclared >> visitGlobalNode: anGlobalNode [
	self error: 'Unsupported for now'.
	
]

{ #category : #initialization }
ASTCShouldItBeDeclared >> visitInstanceVariableNode: anInstanceVariable [
	^ false
]

{ #category : #initialization }
ASTCShouldItBeDeclared >> visitSelfNode: anSelfNode [
	"should ever pass there. Pharo's Compiler should stop you first."
	self error: 'trying to assign something to self? Are you sure?'. 
	
]

{ #category : #initialization }
ASTCShouldItBeDeclared >> visitSuperNode: anSuperNode [
	"should ever pass there. Pharo's Compiler should stop you first."
	self error: 'trying to assign something to super? Are you sure?'. 
	
]

{ #category : #initialization }
ASTCShouldItBeDeclared >> visitTemporaryNode: anTemporaryNode [
	^ true
]

{ #category : #initialization }
ASTCShouldItBeDeclared >> visitThisContextNode: anThisContextNode [
	"should ever pass there. Pharo's Compiler should stop you first."
	self error: 'trying to assign something to thisContext? Are you sure?'. 
	
]
