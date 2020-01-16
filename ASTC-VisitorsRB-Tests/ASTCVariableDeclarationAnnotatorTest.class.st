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
	#category : #'ASTC-VisitorsRB-Tests'
}

{ #category : #testing }
ASTCVariableDeclarationAnnotatorTest class >> isAbstract [
	^ true
]

{ #category : #basic }
ASTCVariableDeclarationAnnotatorTest >> aMethodWithATemp [
	| aTemp |
	aTemp := 3
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
