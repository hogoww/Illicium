Class {
	#name : #ASTCRBFirstAssignementOccurence,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'argumentTracker'
	],
	#category : #'ASTC-Extensions-RBAnnotations'
}

{ #category : #initialization }
ASTCRBFirstAssignementOccurence >> atNewProperty: aProperty put: aValue for:anArgumentNode [
	"similar to #at:put:, but check that this didn't exists previously"
	(anArgumentNode propertyAt: aProperty
		ifPresent:[:assoc|
			 self error:' visitor property conflict. ''first appearance'' already exists for RBArgumentNode' ] 
		ifAbsent: [ anArgumentNode propertyAt: aProperty put: aValue. ] ).

]

{ #category : #initialization }
ASTCRBFirstAssignementOccurence >> initialize [ 
	argumentTracker:= Dictionary new.
]

{ #category : #initialization }
ASTCRBFirstAssignementOccurence >> visitAssignmentNode: anAssignmentNode [
	| association | 
	association := argumentTracker associationAt: anAssignmentNode variable name ifAbsent:[ argumentTracker add: (Association key:anAssignmentNode variable name value:0)].	

	self atNewProperty:'firstOccurence' 
		put: association value=0
		for: anAssignmentNode.

	association value:1.
	^self
]
