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
ASTCShouldItBeDeclaredTest >> testVisitGlobalNode [
	| ast node |
	ast := (self class >> #aMethodWithAGlobalAssignedToATemp) ast copy.
	ast acceptVisitor: visitor.
	
	node := (ast body statements at: 1).
	self assert: (node hasProperty: propertyName).
	self assert: (node propertyAt: propertyName).
]

{ #category : #basic }
ASTCShouldItBeDeclaredTest >> testVisitGlobalVariableNodeAssignation [
	| ast |
	ast := (self class >> #aMethodWithAnAssignedGlobalVar) ast copy.
	self should: [ ast acceptVisitor: visitor ] raise: UnsupportedFeature.
	
]

{ #category : #basic }
ASTCShouldItBeDeclaredTest >> testVisitInstanceVariableNode [ 
	| ast node |
	ast := (self class >> #aMethodWithAnIV) ast copy.
	ast acceptVisitor: visitor.
	node := (ast body statements at: 1).
	self assert: (node hasProperty: propertyName).
	self deny: (node propertyAt: propertyName).
]

{ #category : #basic }
ASTCShouldItBeDeclaredTest >> testVisitTemporaryNode [
	| ast node |
	ast := (self class >> #aMethodWithATemp) ast copy.
	ast acceptVisitor: visitor.
	
	node := (ast body statements at: 1).
	self assert: (node hasProperty: propertyName).
	self assert: (node propertyAt: propertyName).
]
