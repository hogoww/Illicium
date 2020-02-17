"
An ASTCShouldItBeDeclaredTest is a test class for testing the behavior of ASTCShouldItBeDeclared
"
Class {
	#name : #FAVariableDeclarationAnnotatorTest,
	#superclass : #ASTCVisitorTest,
	#instVars : [
		'iv',
		'ast'
	],
	#category : #'Angler-RBVisitors-Tests-declaration'
}

{ #category : #testing }
FAVariableDeclarationAnnotatorTest class >> isAbstract [
	^ true
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> aMethodWithABlockWithAnArg [
	[:a| ]
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> aMethodWithABlockWithAnArgToDiscard [
	| temp | 
	(self addressOf: temp put: [:v| temp := v])
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> aMethodWithATemp [
	| aTemp |
	aTemp := 3
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> aMethodWithATempInABlock [
	[
		| aTemp |
		aTemp := 3
	]
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> aMethodWithAnAssignedGlobalVar [
	"should probably pick something that won't break the system on a random execution :D"
	Smalltalk := 1
	
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> aMethodWithAnIV [
	iv := 1
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> aMethodWithTwoBlockWithSameVariable [
	[:a| ].
	[:a| ]
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> assignmentInCondition [
	| t |
	(t := true) ifTrue: 1
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> assignmentInOtherSequence [
	| t |
	true ifTrue: [ t := 1 ]
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> setUp [
	super setUp.
	propertyName := FAVariableDeclarationAnnotator property.
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> testAssignmentInCondition [
	ast := (FAVariableDeclarationAnnotatorTest >> #assignmentInCondition) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> testAssignmentInDifferentSequence [
	ast := (FAVariableDeclarationAnnotatorTest >> #assignmentInOtherSequence) ast copy.
	ast acceptVisitor: visitor.

]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> testMethodWithTwoBlockWithSameVariable [
	ast := (FAVariableDeclarationAnnotatorTest >> #aMethodWithTwoBlockWithSameVariable) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> testVisitArgumentNodeInABlock [ 
	ast := (FAVariableDeclarationAnnotatorTest >> #aMethodWithABlockWithAnArg) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> testVisitArgumentNodeToDiscardInABlock [
	ast := (FAVariableDeclarationAnnotatorTest >> #aMethodWithABlockWithAnArgToDiscard) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> testVisitGlobalNode [
	ast := (FAVariableDeclarationAnnotatorTest >> #aMethodWithAnAssignedGlobalVar) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> testVisitInstanceVariableNode [
	ast := (FAVariableDeclarationAnnotatorTest >> #aMethodWithAnIV) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> testVisitTemporaryNode [
	ast := (FAVariableDeclarationAnnotatorTest >> #aMethodWithATemp) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
FAVariableDeclarationAnnotatorTest >> testVisitTemporaryNodeInBlock [
	ast := (FAVariableDeclarationAnnotatorTest >> #aMethodWithATempInABlock) ast copy.
	ast acceptVisitor: visitor.
]
