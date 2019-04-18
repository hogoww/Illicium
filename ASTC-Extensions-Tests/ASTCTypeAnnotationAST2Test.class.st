"
An ASTCTypeAnnotationAST2Test is a test class for testing the behavior of ASTCTypeAnnotationAST2
"
Class {
	#name : #ASTCTypeAnnotationAST2Test,
	#superclass : #TestCase,
	#instVars : [
		'inferer',
		'visitor',
		'propertyName'
	],
	#category : #'ASTC-Extensions-Tests-RBAnnotations'
}

{ #category : #running }
ASTCTypeAnnotationAST2Test >> setUp [
	super setUp.
	visitor:=ASTCTypeAnnotationAST2 new.		
	propertyName := ASTCTypeAnnotationAST2 property.
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitArgumentNode [
	| ast |
	ast := visitor inferMethodSelector: #factorialR: for: RandomTestClass usingBlock:[ RandomTestClass new factorialR: 3 ].
	ast nodesDo: [ :aNode | 
			aNode isArgument
				ifTrue: [ self assert: (aNode hasProperty: propertyName) ]. ].
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitGlobalNodeClassVariable [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithAClassVariable for: ASTCTypeAnnotationAST2TestMethods.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isGlobal])
			ifTrue: [ 
				counter := counter +1.
				self assert: (aNode hasProperty: propertyName) 
				].].
	self assert: counter equals:1.
	
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitGlobalNodeGlobal [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithAGlobalVariable for: ASTCTypeAnnotationAST2TestMethods.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isGlobal])
			ifTrue: [ 
				counter := counter +1.
				self assert: (aNode hasProperty: propertyName).
				(aNode propertyAt: propertyName) crLog.
				].].
	self assert: counter equals:1.
	
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitGlobalNodeSharedPoolVariable [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithAClassInstanceVariable for: ASTCTypeAnnotationAST2TestMethods class.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isGlobal])
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName) 
				].].
	self assert: counter equals:1.
	
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitInstanceVariableNode [
	| ast counter |
	counter:=0.
	ast := visitor inferMethodSelector: #aMethodWithAnInstanceVariable for: ASTCTypeAnnotationAST2TestMethods .
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[ aNode isInstance ])
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName). 
				].].
	self assert: counter equals: 1.
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitMessageNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #factorialR for: RandomTestClass.
	ast nodesDo: [ :aNode | 
		aNode isMessage
			ifTrue: [ 
				counter := counter +1.
				self assert: (aNode hasProperty: propertyName) 
				].].
	self assert: counter equals: 5.
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitMethodNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #factorialR for: RandomTestClass.
	ast nodesDo: [ :aNode | 
		aNode isMethod
			ifTrue: [ 
				counter := counter +1.
				self assert: (aNode hasProperty: propertyName).
				].].
	self assert: counter equals:1.

]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitSelfNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithSelf for: ASTCTypeAnnotationAST2TestMethods.
	ast nodesDo: [ :aNode | 
		aNode isSelf
			ifTrue: [ 
				counter := counter +1.
				self assert: (aNode hasProperty: propertyName).
				].].
	self assert: counter equals:1.

]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitTemporaryNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithATemporaryVariable  for: ASTCTypeAnnotationAST2TestMethods.
	ast nodesDo: [ :aNode | 
		aNode isTemp
			ifTrue: [ 
				counter := counter +1.
				self assert: (aNode hasProperty: propertyName) 
				].].
	self assert: counter equals:2.
	
]
