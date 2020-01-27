"
I am an abstract test class for RB Types annotators classes.
I define basic tests for them.
"
Class {
	#name : #ASTCTypeAnnotatorTest,
	#superclass : #ASTCVisitorTest,
	#category : #'Angler-RBVisitors=Tests-Typing'
}

{ #category : #testing }
ASTCTypeAnnotatorTest class >> isAbstract [
	^ true
]

{ #category : #test }
ASTCTypeAnnotatorTest >> aMethodWithACascade [
	1 + 2 ; - 3 
]

{ #category : #test }
ASTCTypeAnnotatorTest >> inferMethodSelector: aSelector from: aClass [
	^ self subclassResponsibility
]

{ #category : #running }
ASTCTypeAnnotatorTest >> setUp [
	"visitor must be set before sending super setUp in subclasses."
	super setUp.
	propertyName := visitor class property
]

{ #category : #test }
ASTCTypeAnnotatorTest >> testVisitArgumentNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAnArgument: from: PINodeTypeVisitorTest.
	ast nodesDo: [ :aNode | 
		aNode isArgument
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			] ].
	self assert: counter equals: 2.
]

{ #category : #test }
ASTCTypeAnnotatorTest >> testVisitAssignmentNode [
	| counter ast |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAnAssignement from: PINodeTypeVisitorTest.
	ast nodesDo: [ :aNode | 
		aNode isAssignment
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			] ].
	self assert: counter equals: 1.
]

{ #category : #test }
ASTCTypeAnnotatorTest >> testVisitBlockNode [
	| counter ast |
	counter := 0.
	ast := self inferMethodSelector: #aBlockWithIntegerAsLastStatement from: PINodeTypeVisitorTest.
	ast nodesDo: [ :aNode | 
		aNode isBlock
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			] ].
	self assert: counter equals: 1.
]

{ #category : #test }
ASTCTypeAnnotatorTest >> testVisitCascadeNodeGlobal [
	| ast counterValueNode counterMessageNode |
	counterValueNode := 0.
	counterMessageNode := 0.
	
	ast := self inferMethodSelector: #aMethodWithACascade from: ASTCTypeAnnotatorTest.
	
	ast nodesDo: [ :aNode | 
		aNode isLiteralNode
			ifTrue: [ 
				counterValueNode := counterValueNode + 1.
				self assert: (aNode hasProperty: propertyName).
			].
		aNode isMessage 
			ifTrue:[
				counterMessageNode := counterMessageNode + 1.
				self assert: (aNode hasProperty: propertyName).
				]].
		
	self assert: counterValueNode equals: 4. "We visit the receiver twice, and both of them must be typed"
	self assert: counterMessageNode equals: 2.
	
]

{ #category : #test }
ASTCTypeAnnotatorTest >> testVisitGlobalNodeClassVariable [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAClassVariable from: PINodeTypeVisitorTest.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[ aNode isSelf not and: [ aNode isGlobal]])
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName) 
			] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotatorTest >> testVisitGlobalNodeGlobal [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAGlobalVariable from: PINodeTypeVisitorTest.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[ aNode isSelf not and: [ aNode isGlobal]])
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			] ].
	self assert: counter equals: 1
	
]

{ #category : #test }
ASTCTypeAnnotatorTest >> testVisitGlobalNodeSharedPoolVariable [
	| ast counter |
	<expectedFailure>
	self flag:#todo."waiting to have a better understanding"
	self assert:false.
	
]

{ #category : #test }
ASTCTypeAnnotatorTest >> testVisitInstanceVariableNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAnInstanceVariable from: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			(aNode isVariable and: [ aNode isSelf not and: [ aNode isInstance ]])" isSelf not => issue #5458 on the Pharo repository"
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) 
				] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotatorTest >> testVisitLiteralNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithALiteralNode from: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			(aNode isLiteralNode and: [ aNode isValue ])
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) 
				] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotatorTest >> testVisitMessageNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodThatReturnAMessageThatReturnsAnInt from: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			aNode isMessage
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) 
				] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotatorTest >> testVisitMethodNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodThatReturnsAnInteger from: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			aNode isMethod
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) 
				] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotatorTest >> testVisitSelfNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithSelf from: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			aNode isSelf
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) 
				] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotatorTest >> testVisitTemporaryNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithATemporaryVariable from: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			(aNode isSelf not and: [ aNode isTemp])
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) 
				] ].
	self assert: counter equals: 2
]
