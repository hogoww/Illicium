Class {
	#name : #ASTCTypeAnnotatorTest,
	#superclass : #ASTCVisitorTest,
	#category : #'ASTC-VisitorsRB-Tests-Typing'
}

{ #category : #test }
ASTCTypeAnnotatorTest >> abstractTestVisitArgumentNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAnArgument: from: PINodeTypeVisitorTest.
	ast nodesDo: [ :aNode | 
		aNode isArgument
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			]. ].
	self assert: counter equals:2.
]

{ #category : #test }
ASTCTypeAnnotatorTest >> abstractTestVisitAssignmentNode [
	| counter ast |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAnAssignement from: PINodeTypeVisitorTest.
	ast nodesDo: [ :aNode | 
		aNode isAssignment
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			]. ].
	self assert: counter equals:1.
]

{ #category : #test }
ASTCTypeAnnotatorTest >> abstractTestVisitGlobalNodeClassVariable [
	| ast counter |
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithAClassVariable
		from: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			(aNode isVariable and: [ aNode isGlobal ])
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotatorTest >> abstractTestVisitGlobalNodeGlobal [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodWithAGlobalVariable from: PINodeTypeVisitorTest.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isGlobal])
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			].].
	self assert: counter equals:1.
	
]

{ #category : #test }
ASTCTypeAnnotatorTest >> abstractTestVisitGlobalNodeSharedPoolVariable [
	| ast counter |
	<expectedFailure>
	self flag:#todo."waiting to have a better understanding"
	self assert:false.
	
]

{ #category : #test }
ASTCTypeAnnotatorTest >> abstractTestVisitInstanceVariableNode [
	| ast counter |
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithAnInstanceVariable
		from: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			(aNode isVariable and: [ aNode isInstance ])
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotatorTest >> abstractTestVisitLiteralNode [
	| ast counter |
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithALiteralNode
		from: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			(aNode isLiteralNode and: [ aNode isValue ])
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotatorTest >> abstractTestVisitMessageNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodThatReturnAMessageThatReturnsAnInt from: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			aNode isMessage
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotatorTest >> abstractTestVisitMethodNode [
	| ast counter |
	counter := 0.
	ast := self inferMethodSelector: #aMethodThatReturnsAnInteger from: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			aNode isMethod
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotatorTest >> abstractTestVisitSelfNode [
	| ast counter |
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithSelf
		from: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			aNode isSelf
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotatorTest >> abstractTestVisitTemporaryNode [
	| ast counter |
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithATemporaryVariable
		from: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			aNode isTemp
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 2
]

{ #category : #test }
ASTCTypeAnnotatorTest >> inferMethodSelector: aSelector from: aClass [
	^ self subclassResponsibility
]
