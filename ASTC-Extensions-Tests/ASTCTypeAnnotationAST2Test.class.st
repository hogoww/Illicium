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
ASTCTypeAnnotationAST2Test >> inferMethodSelector: aSelector for:aClass [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.

	inferer inferAST: aMethodAST.
	aMethodAST acceptVisitor: visitor.
	
	^aMethodAST
]

{ #category : #running }
ASTCTypeAnnotationAST2Test >> setUp [
	super setUp.
	inferer:=PhineasInferer new.
	visitor:=ASTCTypeAnnotationAST2 new 
		inferer:inferer;
		yourself.
		
	propertyName := ASTCTypeAnnotationAST2 property.
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitArgumentNode [
	self flag:#todo."Needs to know how to pass arguments for a method first..."
	
	self assert: false.
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitMessageNode [
	| ast |
	ast := self inferMethodSelector: #factorialR for: RandomTestClass.
	ast nodesDo: [ :aNode | 
			aNode isMessage
				ifTrue: [ self assert: (aNode hasProperty: propertyName) ]. ].
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitMethodNode [
	| ast |
	ast := self inferMethodSelector: #factorialR for: RandomTestClass.
	ast nodesDo: [ :aNode | 
			aNode isVariable
				ifTrue: [ self assert: (aNode hasProperty: propertyName) ]. ].
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitTemporaryNode [
	| ast |
	ast := self inferMethodSelector: #factorialR for: RandomTestClass.
	self halt.
	ast nodesDo: [ :aNode | 
			aNode isTemp
				ifTrue: [ self crLog. self assert: (aNode hasProperty: propertyName) ]. ].
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitVariableNode [
	| ast |
	ast := self inferMethodSelector: #factorialR for: RandomTestClass.
	ast nodesDo: [ :aNode | 
			aNode isVariable
				ifTrue: [ self assert: (aNode hasProperty: propertyName) ]. ].
]
