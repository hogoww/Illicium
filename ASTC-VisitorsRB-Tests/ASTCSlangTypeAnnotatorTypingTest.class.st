"
I test that types comming from Slang (and CCodeGenerator) are as expected in the RB ast
"
Class {
	#name : #ASTCSlangTypeAnnotatorTypingTest,
	#superclass : #ASTCVisitorTest,
	#instVars : [
		'iv',
		'currentTMethod'
	],
	#classVars : [
		'A'
	],
	#classInstVars : [
		'b'
	],
	#category : #'ASTC-VisitorsRB-Tests-Typing'
}

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest class >> aMethodWithAClassVariable [
	b:=1
]

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest >> aMethodThatReturnAMessageThatReturnsAnInt [
	^1+2
]

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest >> aMethodThatReturnsAnInteger [
	^ 4
]

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest >> aMethodWithABlockWithATemporary [
	^ [ | i | i:=3 ] value.
]

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest >> aMethodWithABlockWithAnArgument [
	<var: #i type: #float>
	^ [:i| ] value:1.
]

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest >> aMethodWithAClassVariable [
	A:=3.
]

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest >> aMethodWithAGlobalVariable [
	PINodeTypeVisitorTest
]

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest >> aMethodWithALiteralNode [
	1.0
]

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest >> aMethodWithATemporaryVariable [
	| t |
	<var: #t type: #float>
	t:=3.

]

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest >> aMethodWithAnArgument: anInt [
	<var: #anInt type: #float>
	^ anInt
]

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest >> aMethodWithAnAssignement [
	| e |
	<var: #e type: #float>
	e := 3 
]

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest >> aMethodWithAnInstanceVariable [
	iv:=3
]

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest >> aMethodWithSelf [
	self
]

{ #category : #running }
ASTCSlangTypeAnnotatorTypingTest >> assertTypeOf: aNode is: expected [
	| cType |
	cType :=	aNode getSlangTypeUsing: visitor inferer in: visitor currentTMethod.
	self assert: cType equals: expected
]

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest >> inferMethodSelector: aSelector from: aClass [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.
	visitor inferer addMethod: (aMethodAST asTranslationMethodOfClass: TMethod).
	visitor inferer inferTypesForImplicitlyTypedVariablesAndMethods.
	 
	aMethodAST acceptVisitor: visitor.
	^ aMethodAST
]

{ #category : #support }
ASTCSlangTypeAnnotatorTypingTest >> setUp [
	visitor := ASTCSlangTypeAnnotator new 
		inferer: CCodeGenerator new;
		yourself.
	super setUp
]

{ #category : #running }
ASTCSlangTypeAnnotatorTypingTest >> testVisitArgumentNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAnArgument: from: self class.
	ast nodesDo: [ :aNode |
		aNode isArgument
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: #float ] ].
	self assert: counter equals: 2.
]

{ #category : #running }
ASTCSlangTypeAnnotatorTypingTest >> testVisitArgumentNodeInABlock [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithABlockWithAnArgument from: self class.
	ast
		nodesDo: [ :aNode | 
			aNode isArgument
				ifTrue: [ counter := counter + 1.
					self assertTypeOf: aNode is: #float ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCSlangTypeAnnotatorTypingTest >> testVisitAssignmentNode [
	| ast counter |
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithAnAssignement 
		from: self class.
	ast
		nodesDo: [ :aNode | 
			aNode isAssignment
				ifTrue: [ counter := counter + 1.
					self assertTypeOf: aNode is: #float ] ].
	self assert: counter equals: 1
]

{ #category : #running }
ASTCSlangTypeAnnotatorTypingTest >> testVisitGlobalNodeClassVariable [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAClassVariable from: self class.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isGlobal])
			ifTrue: [ 
				counter := counter + 1. 
				self assertTypeOf: aNode is: #sqInt ] ].
	self assert: counter equals: 1.

]

{ #category : #running }
ASTCSlangTypeAnnotatorTypingTest >> testVisitGlobalNodeGlobal [
	| ast counter|
	counter :=0 .
	ast := self inferMethodSelector: #aMethodWithAGlobalVariable from: self class.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isGlobal])
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: #sqInt ] ].
	self assert: counter equals: 1
]

{ #category : #running }
ASTCSlangTypeAnnotatorTypingTest >> testVisitGlobalNodeSharedPoolVariable [
	"waiting for a better understanding of SharedPool variables"
	<expectedFailure>
	self flag: #toImplement.
	self assert: false equals: true.
]

{ #category : #running }
ASTCSlangTypeAnnotatorTypingTest >> testVisitInstanceVariableClassSide [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAClassVariable from: self class class.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isInstance])
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: #sqInt ] ].
	self assert: counter equals: 1.

]

{ #category : #running }
ASTCSlangTypeAnnotatorTypingTest >> testVisitInstanceVariableNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAnInstanceVariable from: self class.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[ aNode isInstance ])
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: #sqInt ] ].
	self assert: counter equals: 1.

]

{ #category : #running }
ASTCSlangTypeAnnotatorTypingTest >> testVisitLiteralValueNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithALiteralNode from: self class.
	ast nodesDo: [ :aNode | 
		(aNode isLiteralNode and:[ aNode isValue ])
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: #double ] ].
	self assert: counter equals: 1

]

{ #category : #running }
ASTCSlangTypeAnnotatorTypingTest >> testVisitMessageNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodThatReturnAMessageThatReturnsAnInt from: self class.
	ast nodesDo: [ :aNode | 
			aNode isMessage
				ifTrue: [ counter := counter + 1.
					self assertTypeOf: aNode is: #int ] ].
	self assert: counter equals: 1
]

{ #category : #running }
ASTCSlangTypeAnnotatorTypingTest >> testVisitMethodNode [
	| ast |
	ast := self inferMethodSelector: #aMethodThatReturnsAnInteger from: self class.
	self assertTypeOf: ast is: #sqInt
]

{ #category : #running }
ASTCSlangTypeAnnotatorTypingTest >> testVisitSelfNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithSelf from: self class.
	ast nodesDo: [ :aNode | 
		aNode isSelf
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: #sqInt ] ].
	self assert: counter equals: 2
]

{ #category : #running }
ASTCSlangTypeAnnotatorTypingTest >> testVisitTemporaryNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithATemporaryVariable from: self class.
	ast nodesDo: [ :aNode | 
		(aNode isSelf not and: [ aNode isTemp ])
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: #float ] ].
	self assert: counter equals: 2
]
