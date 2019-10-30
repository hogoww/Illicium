"
An ASTCTypeAnnotationAST2Test is a test class for testing the behavior of ASTCTypeAnnotationAST2
"
Class {
	#name : #ASTCTypeAnnotationASTTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor',
		'propertyName'
	],
	#category : #'ASTC-VisitorsRB-Tests-Typing'
}

{ #category : #test }
ASTCTypeAnnotationASTTest >> assertTypeOf: aNode is: aClass [
	^self assert: (aNode propertyAt: propertyName) asArray equals: {aClass} .
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> inferMethodSelector: aSelector for: aClass [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.

	visitor inferer inferAST: aMethodAST.
	
	aMethodAST acceptVisitor: visitor.
	
	^aMethodAST
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> inferMethodSelector: aSelector for: aClass usingBlock: aBlock [
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
ASTCTypeAnnotationASTTest >> setUp [
	super setUp.
	visitor:=ASTCTypeAnnotationAST new 
		inferer: PhineasInferer new;
		yourself.
	propertyName := ASTCTypeAnnotationAST property.
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitArgumentNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #factorialR: for: RandomTestClass usingBlock:[ RandomTestClass new factorialR: 3 ].
	ast nodesDo: [ :aNode | 
		aNode isArgument
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			]. ].
	self assert: counter equals:4.
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitGlobalNodeClassVariable [
	| ast counter |
	"failing because it's getting undefined Object as well as Smallinteger as a possible type. This is normal, because the class variable initialization isn't set in the call graph of the variable
	Maybe use typedSlots would be more explicit"
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithAClassVariable
		for: PINodeTypeVisitorTestsMethods.
	ast
		nodesDo: [ :aNode | 
			(aNode isVariable and: [ aNode isGlobal ])
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitGlobalNodeGlobal [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAGlobalVariable for: PINodeTypeVisitorTestsMethods.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isGlobal])
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			].].
	self assert: counter equals:1.
	
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitGlobalNodeSharedPoolVariable [
	| ast counter |
	<expectedFailure>
	self flag:#todo."waiting to have a better understanding"
	self assert:false.
	
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitInstanceVariableNode [
	| ast counter |
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithAnInstanceVariable
		for: PINodeTypeVisitorTestsMethods.
	ast
		nodesDo: [ :aNode | 
			(aNode isVariable and: [ aNode isInstance ])
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitLiteralNode [
	| ast counter |
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithALiteralNode
		for: PINodeTypeVisitorTestsMethods.
	ast
		nodesDo: [ :aNode | 
			(aNode isLiteralNode and: [ aNode isValue ])
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitMessageNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #factorialR for: RandomTestClass.
	ast
		nodesDo: [ :aNode | 
			aNode isMessage
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 5
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitMethodNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #factorialR for: RandomTestClass.
	ast
		nodesDo: [ :aNode | 
			aNode isMethod
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitSelfNode [
	| ast counter |
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithSelf
		for: PINodeTypeVisitorTestsMethods.
	ast
		nodesDo: [ :aNode | 
			aNode isSelf
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitTemporaryNode [
	| ast counter |
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithATemporaryVariable
		for: PINodeTypeVisitorTestsMethods.
	ast
		nodesDo: [ :aNode | 
			aNode isTemp
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 2
]
