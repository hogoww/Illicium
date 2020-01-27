"
I test the PhineasTypeAnnotator class
"
Class {
	#name : #ASTCPhineasTypeAnnotatorTest,
	#superclass : #ASTCTypeAnnotatorTest,
	#category : #'Angler-RBVisitors=Tests-Typing'
}

{ #category : #testing }
ASTCPhineasTypeAnnotatorTest class >> isAbstract [
	^ false
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> inferMethodSelector: aSelector from: aClass [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.
	visitor inferer infer: aMethodAST.
	aMethodAST acceptVisitor: visitor.
	^ aMethodAST
]

{ #category : #test }
ASTCPhineasTypeAnnotatorTest >> inferMethodSelector: aSelector from: aClass usingBlock: aBlock [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.
	visitor inferer infer: aBlock.
	aMethodAST acceptVisitor: visitor.
	^ aMethodAST
]

{ #category : #running }
ASTCPhineasTypeAnnotatorTest >> setUp [
	visitor := ASTCPhineasTypeAnnotator new 
		inferer: PhineasInferer new;
		yourself.
	super setUp
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
