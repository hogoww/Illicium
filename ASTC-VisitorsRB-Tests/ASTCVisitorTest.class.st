Class {
	#name : #ASTCVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor',
		'propertyName'
	],
	#category : #'ASTC-VisitorsRB-Tests'
}

{ #category : #test }
ASTCVisitorTest >> inferMethodSelector: aSelector for: aClass [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.

	visitor inferer inferAST: aMethodAST.
	
	aMethodAST acceptVisitor: visitor.
	
	^aMethodAST
]

{ #category : #test }
ASTCVisitorTest >> inferMethodSelector: aSelector for: aClass usingBlock: aBlock [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.
	visitor inferer infer: aBlock.
	"This removes the block used as an entry point of the inference"
	"This would cause problem for resolution for the methodType otherwise."
	visitor inferer typeProvider methodTypes
		detect: [ :aMethodType | aMethodType node isBlock ]
		ifFound: [ :aMethodType | visitor inferer typeProvider methodTypes remove: aMethodType ].
	aMethodAST acceptVisitor: visitor.
	^ aMethodAST
]

{ #category : #running }
ASTCVisitorTest >> setUp [
	super setUp.
	visitor:=ASTCTypeAnnotationAST new 
		inferer: PhineasInferer new;
		yourself.
	propertyName := ASTCTypeAnnotationAST property.
]
