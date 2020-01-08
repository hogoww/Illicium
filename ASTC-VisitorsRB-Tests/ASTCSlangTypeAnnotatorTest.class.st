"
I am a copy of class ASTCPhineasTypeAnnotatorTest. This comment is copied from there, and might not be entirely accurate

I test the PhineasTypeAnnotator class
"
Class {
	#name : #ASTCSlangTypeAnnotatorTest,
	#superclass : #ASTCTypeAnnotatorTest,
	#category : #'ASTC-VisitorsRB-Tests-Typing'
}

{ #category : #testing }
ASTCSlangTypeAnnotatorTest class >> isAbstract [
	^ false
]

{ #category : #test }
ASTCSlangTypeAnnotatorTest >> inferMethodSelector: aSelector from: aClass [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.
	visitor inferer addMethod: (aMethodAST asTranslationMethodOfClass: TMethod).
	visitor inferer inferTypesForImplicitlyTypedVariablesAndMethods.
	 
	aMethodAST acceptVisitor: visitor.
	^ aMethodAST
]

{ #category : #running }
ASTCSlangTypeAnnotatorTest >> setUp [
	visitor := ASTCSlangTypeAnnotator new 
		inferer: CCodeGenerator new;
		yourself.
	super setUp
]

{ #category : #test }
ASTCSlangTypeAnnotatorTest >> testVisitSelfNode [
	| ast counter |
	" Override because slang adds an explicit return self "
	counter := 0.
	ast := self
		inferMethodSelector: #aMethodWithSelf
		from: PINodeTypeVisitorTest.
	ast
		nodesDo: [ :aNode | 
			aNode isSelf
				ifTrue: [ counter := counter + 1.
					self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 2
]
