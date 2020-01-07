"
I am a copy of class TTypeAnnotatorVisitorTest. This comment is copied from there, and might not be entirely accurate

An ASTCTypeAnnotationAST2Test is a test class for testing the behavior of ASTCTypeAnnotationAST2
"
Class {
	#name : #ASTCPhineasTypeAnnotatorTest,
	#superclass : #ASTCVisitorTest,
	#category : #'ASTC-VisitorsRB-Tests-Typing'
}

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> inferMethodSelector: aSelector for: aClass [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.

	visitor inferer inferAST: aMethodAST.
	
	aMethodAST acceptVisitor: visitor.
	
	^aMethodAST
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> inferMethodSelector: aSelector for: aClass usingBlock: aBlock [
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
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAnArgument:  for: PINodeTypeVisitorTest usingBlock:[ PINodeTypeVisitorTest new aMethodWithAnArgument:  3 ].
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
	| counter ast |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAnAssignement for: PINodeTypeVisitorTest.
	ast nodesDo: [ :aNode | 
		aNode isAssignment
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			]. ].
	self assert: counter equals:1.
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitGlobalNodeClassVariable [
	| ast counter |
	"failing because it's getting undefined Object as well as Smallinteger as a possible type. This is normal, because the class variable initialization isn't set in the call graph of the variable
	Maybe use typedSlots would be more explicit"
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithAClassVariable
		for: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			(aNode isVariable and: [ aNode isGlobal ])
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitGlobalNodeGlobal [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAGlobalVariable for: PINodeTypeVisitorTest.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isGlobal])
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			].].
	self assert: counter equals:1.
	
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
	| ast counter |
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithAnInstanceVariable
		for: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			(aNode isVariable and: [ aNode isInstance ])
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitLiteralNode [
	| ast counter |
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithALiteralNode
		for: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			(aNode isLiteralNode and: [ aNode isValue ])
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitMessageNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodThatReturnAMessageThatReturnsAnInt for: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			aNode isMessage
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitMethodNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodThatReturnsAnInteger for: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			aNode isMethod
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitSelfNode [
	| ast counter |
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithSelf
		for: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			aNode isSelf
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> testVisitTemporaryNode [
	| ast counter |
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithATemporaryVariable
		for: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			aNode isTemp
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 2
]
