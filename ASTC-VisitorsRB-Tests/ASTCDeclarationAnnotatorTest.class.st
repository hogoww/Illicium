"
An ASTCShouldItBeDeclaredTest is a test class for testing the behavior of ASTCShouldItBeDeclared
"
Class {
	#name : #ASTCDeclarationAnnotatorTest,
	#superclass : #ASTCVisitorTest,
	#instVars : [
		'iv',
		'ast'
	],
	#category : #'ASTC-VisitorsRB-Tests'
}

{ #category : #testing }
ASTCDeclarationAnnotatorTest class >> isAbstract [
	^ true
]

{ #category : #basic }
ASTCDeclarationAnnotatorTest >> aMethodWithATemp [
	| aTemp |
	aTemp := 3
]

{ #category : #basic }
ASTCDeclarationAnnotatorTest >> aMethodWithAnAssignedGlobalVar [
	"should probably pick something that won't break the system on a random execution :D"
	Smalltalk := 1
	
]

{ #category : #basic }
ASTCDeclarationAnnotatorTest >> aMethodWithAnIV [
	iv := 1
]

{ #category : #basic }
ASTCDeclarationAnnotatorTest >> assignmentInCondition [
	| t |
	(t := true) ifTrue: 1
]

{ #category : #basic }
ASTCDeclarationAnnotatorTest >> assignmentInOtherSequence [
	| t |
	true ifTrue: [ t := 1 ]
]

{ #category : #basic }
ASTCDeclarationAnnotatorTest >> setUp [
	super setUp.
	propertyName := ASTCVariableDeclarationAnnotator property.
]

{ #category : #basic }
ASTCDeclarationAnnotatorTest >> testAssignmentInCondition [
	ast := (ASTCDeclarationAnnotatorTest >> #assignmentInCondition) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
ASTCDeclarationAnnotatorTest >> testAssignmentInDifferentSequence [
	ast := (ASTCDeclarationAnnotatorTest >> #assignmentInOtherSequence) ast copy.
	ast acceptVisitor: visitor.

]

{ #category : #basic }
ASTCDeclarationAnnotatorTest >> testVisitGlobalNode [
	ast := (ASTCDeclarationAnnotatorTest >> #aMethodWithAnAssignedGlobalVar) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
ASTCDeclarationAnnotatorTest >> testVisitInstanceVariableNode [
	ast := (ASTCDeclarationAnnotatorTest >> #aMethodWithAnIV) ast copy.
	ast acceptVisitor: visitor.
]

{ #category : #basic }
ASTCDeclarationAnnotatorTest >> testVisitTemporaryNode [
	ast := (ASTCDeclarationAnnotatorTest >> #aMethodWithATemp) ast copy.
	ast acceptVisitor: visitor.
]
