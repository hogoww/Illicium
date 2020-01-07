"
An ASTCShouldItBeDeclaredTest is a test class for testing the behavior of ASTCShouldItBeDeclared
"
Class {
	#name : #ASTCShouldItBeDeclaredAnnotatorTest,
	#superclass : #ASTCVisitorTest,
	#instVars : [
		'iv'
	],
	#category : #'ASTC-VisitorsRB-Tests'
}

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> aMethodWithAGlobalAssignedToATemp [
	|t|
	t := ASTCShouldItBeDeclaredAnnotatorTest 
	
]

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> aMethodWithATemp [
	| aTemp |
	aTemp := 3
]

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> aMethodWithATempThatShouldBeDeclaredAtStart [
	|t|
	(t := true) ifTrue: 1
]

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> aMethodWithAnAssignedGlobalVar [
	"should probably pick something that won't break the system on a random execution :D"
	Smalltalk := 1
	
]

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> aMethodWithAnIV [
	iv := 1
]

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> assignmentInCondition [
	|t|
	(t := true) ifTrue: 1
]

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> assignmentInOtherSequence [
	|t|
	true ifTrue: [ t := 1 ]
]

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> setUp [
	super setUp.
	visitor:=ASTCShouldItBeDeclaredAnnotator new.
	propertyName := ASTCShouldItBeDeclaredAnnotator property.
]

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> testAssignmentInCondition [
	| ast |
	ast := (self class >> #assignmentInCondition) ast copy.
	ast acceptVisitor: visitor.
	
	self assert: (ast body statements at: 1) receiver propertyEquals: false.

	self assert: ast body temporaries isNotEmpty.
	ast body temporaries do:[ :aTempDecl|
		self assert: aTempDecl propertyEquals: true
		].
]

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> testAssignmentIndifferentSequence [
	| ast |
	ast := (self class >> #assignmentInOtherSequence) ast copy.
	ast acceptVisitor: visitor.

	self assert: (((ast body statements at: 1) arguments at: 1) statements at: 1) 	propertyEquals: false.

	self assert: ast body temporaries isNotEmpty.
	ast body temporaries do:[ :aTempDecl|
		self assert: aTempDecl propertyEquals: true
		].
]

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> testTemporariesShouldNotBeDeclared [
	| ast |
	ast := (self class >> #aMethodWithAnIV) ast copy.
	ast acceptVisitor: visitor.

	self assert: (ast body statements at: 1) propertyEquals: false
]

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> testVisitGlobalNode [
	| ast |
	ast := (self class >> #aMethodWithAGlobalAssignedToATemp) ast copy.
	ast acceptVisitor: visitor.
	
	self assert: (ast body statements at: 1) propertyEquals: true
]

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> testVisitGlobalVariableNodeAssignation [
	| ast |
	ast := (self class >> #aMethodWithAnAssignedGlobalVar) ast copy.
	self should: [ ast acceptVisitor: visitor ] raise: UnsupportedFeature.
	
]

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> testVisitInstanceVariableNode [ 
	| ast |
	ast := (self class >> #aMethodWithAnIV) ast copy.
	ast acceptVisitor: visitor.
	
	self assert: (ast body statements at: 1) propertyEquals: false
]

{ #category : #basic }
ASTCShouldItBeDeclaredAnnotatorTest >> testVisitTemporaryNode [
	| ast |
	ast := (self class >> #aMethodWithATemp) ast copy.
	ast acceptVisitor: visitor.
	
	self assert: (ast body statements at: 1) propertyEquals: true.

	self assert: ast body temporaries isNotEmpty.
	ast body temporaries do:[ :aTempDecl|
		self assert: aTempDecl propertyEquals: false
		].
]
