Class {
	#name : #IsItTheFirstAssignmentChecker,
	#superclass : #ASTCAbstractCheckVisitor,
	#instVars : [
		'argumentTracker'
	],
	#category : #'ASTC-Extensions-RBAnnotations'
}

{ #category : #accessing }
IsItTheFirstAssignmentChecker class >> property [
	^#firstAssignment
]

{ #category : #initialization }
IsItTheFirstAssignmentChecker >> initialize [ 
	argumentTracker:= Dictionary new.
]

{ #category : #initialization }
IsItTheFirstAssignmentChecker >> visitAssignmentNode: anAssignmentNode [
	| association | 
	association := argumentTracker associationAt: anAssignmentNode variable name ifAbsent:[ argumentTracker add: (Association key:anAssignmentNode variable name value:0)].	

	self atNewProperty: self class property
		put: association value=0
		for: anAssignmentNode.

	association value:1.
	^self
]
