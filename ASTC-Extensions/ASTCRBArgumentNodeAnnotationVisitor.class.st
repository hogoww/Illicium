Class {
	#name : #ASTCRBArgumentNodeAnnotationVisitor,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'argumentTracker'
	],
	#category : #'ASTC-Extensions-RBAnnotations'
}

{ #category : #initialization }
ASTCRBArgumentNodeAnnotationVisitor >> atNewProperty: aProperty put: aValue for:anArgumentNode [
	"similar to #at:put:, but check that this didn't exists previously"
	anArgumentNode propertyAt: aProperty 
		ifPresent:[:assoc|
			 self error:' visitor property conflict. ''first appearance'' already exists for RBArgumentNode'] 
		ifAbsent: [ anArgumentNode propertyAt: aProperty put: aValue].

]

{ #category : #initialization }
ASTCRBArgumentNodeAnnotationVisitor >> initialize [ 
	argumentTracker:= Dictionary new.
]

{ #category : #initialization }
ASTCRBArgumentNodeAnnotationVisitor >> visitArgumentNode: anArgumentNode [
	| association | 
	self flag:#todo.
	association := argumentTracker associationAt: anArgumentNode name ifAbsent:[ argumentTracker add: (Association key:anArgumentNode name value:0)].	

	(association value=0) crLog. 
	self atNewProperty:'firstAppearance' 
		put: association value=0
		for: anArgumentNode.

	association value:1.
	^self
]
