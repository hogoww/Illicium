"
I am a copy of class TTypeAnnotatorVisitorTest. This comment is copied from there, and might not be entirely accurate

An ASTCTypeAnnotationAST2Test is a test class for testing the behavior of ASTCTypeAnnotationAST2
"
Class {
	#name : #ASTCPhineasTypeAnnotatorTest,
	#superclass : #ASTCTypeAnnotatorTest,
	#category : #'ASTC-VisitorsRB-Tests-Typing'
}

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> inferMethodSelector: aSelector from: aClass [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.

	visitor inferer inferAST: aMethodAST.
	
	aMethodAST acceptVisitor: visitor.
	
	^aMethodAST
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> inferMethodSelector: aSelector from: aClass usingBlock: aBlock [
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
ASTCPhineasTypeAnnotatorTest >> setUp [
	super setUp.
	visitor := ASTCPhineasTypeAnnotator new 
		inferer: PhineasInferer new;
		yourself.
	propertyName := visitor class property
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitArgumentNode [
	" override of the test, because we need to use a block for phineas's inference of methods with arguments."
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAnArgument: from: PINodeTypeVisitorTest usingBlock:[ PINodeTypeVisitorTest new aMethodWithAnArgument:  3 ].
	ast nodesDo: [ :aNode | 
		aNode isArgument
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			]. ].
	self assert: counter equals:2.
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitAssignmentNode [
	self abstractTestVisitAssignmentNode
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitGlobalNodeClassVariable [
	self abstractTestVisitGlobalNodeClassVariable
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitGlobalNodeGlobal [
	self abstractTestVisitGlobalNodeGlobal
	
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitGlobalNodeSharedPoolVariable [
	| ast counter |
	<expectedFailure>
	self flag:#todo."waiting to have a better understanding"
	self assert:false.
	
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitInstanceVariableNode [
	self abstractTestVisitInstanceVariableNode
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitLiteralNode [
	self abstractTestVisitLiteralNode
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitMessageNode [
	self abstractTestVisitMessageNode
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitMethodNode [
	self abstractTestVisitMethodNode
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitSelfNode [
	self abstractTestVisitSelfNode
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitTemporaryNode [
	self abstractTestVisitTemporaryNode
]
