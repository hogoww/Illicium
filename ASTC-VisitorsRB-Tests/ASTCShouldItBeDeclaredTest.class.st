"
An ASTCShouldItBeDeclaredTest is a test class for testing the behavior of ASTCShouldItBeDeclared
"
Class {
	#name : #ASTCShouldItBeDeclaredTest,
	#superclass : #ASTCVisitorTest,
	#instVars : [
		'iv'
	],
	#category : #'ASTC-VisitorsRB-Tests'
}

{ #category : #basic }
ASTCShouldItBeDeclaredTest >> aMethodWithAGlobalAssignedToATemp [
	|t|
	t := ASTCShouldItBeDeclaredTest 
	
]

{ #category : #basic }
ASTCShouldItBeDeclaredTest >> aMethodWithATemp [
	| aTemp |
	aTemp := 3
]

{ #category : #basic }
ASTCShouldItBeDeclaredTest >> aMethodWithATempThatShouldBeDeclaredAtStart [
	|t|
	(t := true) ifTrue: 1
]

{ #category : #basic }
ASTCShouldItBeDeclaredTest >> aMethodWithAnAssignedGlobalVar [
	"should probably pick something that won't break the system on a random execution :D"
	Smalltalk := 1
	
]

{ #category : #basic }
ASTCShouldItBeDeclaredTest >> aMethodWithAnIV [
	iv := 1
]

{ #category : #basic }
ASTCShouldItBeDeclaredTest >> setUp [
	super setUp.
	visitor:=ASTCShouldItBeDeclared new.
	propertyName := ASTCShouldItBeDeclared property.
]

{ #category : #basic }
ASTCShouldItBeDeclaredTest >> testTemporariesShouldNotBeDeclared [
	| ast |
	ast := (self class >> #aMethodWithAnIV) ast copy.
	ast acceptVisitor: visitor.

	self assert: (ast body statements at: 1) propertyIs: false
]

{ #category : #basic }
ASTCShouldItBeDeclaredTest >> testVisitGlobalNode [
	| ast |
	ast := (self class >> #aMethodWithAGlobalAssignedToATemp) ast copy.
	ast acceptVisitor: visitor.
	
	self assert: (ast body statements at: 1) propertyIs: true
]

{ #category : #basic }
ASTCShouldItBeDeclaredTest >> testVisitGlobalVariableNodeAssignation [
	| ast |
	ast := (self class >> #aMethodWithAnAssignedGlobalVar) ast copy.
	self should: [ ast acceptVisitor: visitor ] raise: UnsupportedFeature.
	
]

{ #category : #basic }
ASTCShouldItBeDeclaredTest >> testVisitInstanceVariableNode [ 
	| ast |
	ast := (self class >> #aMethodWithAnIV) ast copy.
	ast acceptVisitor: visitor.
	
	self assert: (ast body statements at: 1) propertyIs: false
]

{ #category : #basic }
ASTCShouldItBeDeclaredTest >> testVisitTemporaryNode [
	| ast |
	ast := (self class >> #aMethodWithATemp) ast copy.
	ast acceptVisitor: visitor.
	
	self assert: (ast body statements at: 1) propertyIs: true.

	self assert: ast body temporaries isNotEmpty.
	ast body temporaries do:[ :aTempDecl|
		self assert: aTempDecl propertyIs: false
		].
]
