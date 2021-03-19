"
I test the PhineasTypeAnnotator class
"
Class {
	#name : #IlliciumPhineasTypeAnnotatorTest,
	#superclass : #FATypeAnnotatorTest,
	#category : #'MAngler-Illicium-Tests-AnalysisTests'
}

{ #category : #testing }
IlliciumPhineasTypeAnnotatorTest class >> isAbstract [
	^ false
]

{ #category : #test }
IlliciumPhineasTypeAnnotatorTest >> inferMethodSelector: aSelector from: aClass [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.
	visitor inferer infer: aMethodAST.
	aMethodAST acceptVisitor: visitor.
	^ aMethodAST
]

{ #category : #test }
IlliciumPhineasTypeAnnotatorTest >> inferMethodSelector: aSelector from: aClass usingBlock: aBlock [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.
	visitor inferer infer: aBlock.
	aMethodAST acceptVisitor: visitor.
	^ aMethodAST
]

{ #category : #running }
IlliciumPhineasTypeAnnotatorTest >> setUp [
	visitor := IlliciumPhineasTypeAnnotator new 
		inferer: PhineasInferer new;
		yourself.
	super setUp
]

{ #category : #test }
IlliciumPhineasTypeAnnotatorTest >> testVisitArgumentNode [

	" override of the test, because we need to use a block for phineas's inference of methods with arguments."

	| ast counter |
	counter := 0.
	ast := self
		       inferMethodSelector: #aMethodWithAnArgument:
		       from: FATypeAnnotatorTest
		       usingBlock: [ 
		       PINodeTypeVisitorTest new aMethodWithAnArgument: 3 ].
	ast nodesDo: [ :aNode | 
		aNode isArgumentVariable ifTrue: [ 
			counter := counter + 1.
			self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 2
]
