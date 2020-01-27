"
An ASTCShouldItBeDeclaredTest is a test class for testing the behavior of ASTCShouldItBeDeclared
"
Class {
	#name : #ASTCVariableDeclarationAnnotatorTest,
	#superclass : #ASTCVisitorTest,
	#instVars : [
		'iv',
		'ast'
	],
	#category : #'Angler-RBVisitors=Tests'
}

{ #category : #testing }
ASTCVariableDeclarationAnnotatorTest class >> isAbstract [
	^ true
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> aMethodWithABlockWithAnArg [
	[:a| ]
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> aMethodWithABlockWithAnArgToDiscard [
	| temp | 
	(self addressOf: temp put: [:v| temp := v])
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> aMethodWithATemp [
	| aTemp |
	aTemp := 3
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> aMethodWithATempInABlock [
	[
		| aTemp |
		aTemp := 3
	]
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> aMethodWithAnAssignedGlobalVar [
	"should probably pick something that won't break the system on a random execution :D"
	Smalltalk := 1
	
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> aMethodWithAnIV [
	iv := 1
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> aMethodWithTwoBlockWithSameVariable [
	[:a| ].
	[:a| ]
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> assignmentInCondition [
	| t |
	(t := true) ifTrue: 1
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> assignmentInOtherSequence [
	| t |
	true ifTrue: [ t := 1 ]
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> setUp [
	super setUp.
	propertyName := ASTCVariableDeclarationAnnotator property.
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> testAssignmentInCondition [
	ast := (ASTCVariableDeclarationAnnotatorTest >> #assignmentInCondition) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> testAssignmentInDifferentSequence [
	ast := (ASTCVariableDeclarationAnnotatorTest >> #assignmentInOtherSequence) ast copy.
	ast acceptVisitor: visitor.

]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> testMethodWithTwoBlockWithSameVariable [
	ast := (ASTCVariableDeclarationAnnotatorTest >> #aMethodWithTwoBlockWithSameVariable) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> testVisitArgumentNodeInABlock [ 
	ast := (ASTCVariableDeclarationAnnotatorTest >> #aMethodWithABlockWithAnArg) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> testVisitArgumentNodeToDiscardInABlock [
	ast := (ASTCVariableDeclarationAnnotatorTest >> #aMethodWithABlockWithAnArgToDiscard) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> testVisitGlobalNode [
	ast := (ASTCVariableDeclarationAnnotatorTest >> #aMethodWithAnAssignedGlobalVar) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> testVisitInstanceVariableNode [
	ast := (ASTCVariableDeclarationAnnotatorTest >> #aMethodWithAnIV) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> testVisitTemporaryNode [
	ast := (ASTCVariableDeclarationAnnotatorTest >> #aMethodWithATemp) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> testVisitTemporaryNodeInBlock [
	ast := (ASTCVariableDeclarationAnnotatorTest >> #aMethodWithATempInABlock) ast copy.
	ast acceptVisitor: visitor.
]
