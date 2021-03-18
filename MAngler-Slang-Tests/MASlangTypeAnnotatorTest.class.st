"
I test the ASTCSlangTypeAnnotator class
"
Class {
	#name : #MASlangTypeAnnotatorTest,
	#superclass : #FATypeAnnotatorTest,
	#category : #'MAngler-Slang-Tests-AnalysisTests'
}

{ #category : #testing }
MASlangTypeAnnotatorTest class >> isAbstract [
	^ false
]

{ #category : #test }
MASlangTypeAnnotatorTest >> aMethodWithCCodeInSmalltalk [
	^ self cCode: ' 1 ' inSmalltalk: [ 1 ]
]

{ #category : #test }
MASlangTypeAnnotatorTest >> aMethodWithCaseOf [
	1 caseOf: { [ 1 ] -> [ 1 even ] }
]

{ #category : #test }
MASlangTypeAnnotatorTest >> aMethodWithCaseOfOtherwise [
	1 caseOf: 
		{ [ 1 ] -> [ 1 even ] }
		otherwise: 1
]

{ #category : #test }
MASlangTypeAnnotatorTest >> assertHasType: aNode [
	self assert: (aNode hasProperty: propertyName).

]

{ #category : #test }
MASlangTypeAnnotatorTest >> inferMethodSelector: aSelector from: aClass [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.
	visitor inferer addMethod: (aMethodAST asTranslationMethodOfClass: TMethod).
	visitor inferer inferTypesForImplicitlyTypedVariablesAndMethods.
	 
	aMethodAST acceptVisitor: visitor.
	^ aMethodAST
]

{ #category : #running }
MASlangTypeAnnotatorTest >> setUp [
	visitor := MASlangTypeAnnotator new 
		inferer: CCodeGenerator new;
		yourself.
	super setUp
]

{ #category : #test }
MASlangTypeAnnotatorTest >> testVisitCaseOf [
	"cases in caseOf: do not have TNodes equivalent"
	| ast caseMessage caseArray case |
	ast := self
		inferMethodSelector: #aMethodWithCaseOf
		from: self class.
	caseMessage := ast body statements first.
	self assert: (caseMessage hasProperty: propertyName).
	self assert: (caseMessage receiver hasProperty: propertyName).
	
	caseArray := caseMessage arguments first.
	self deny: (caseArray hasProperty: propertyName).
	
	case := caseArray statements first.
	self deny: (case hasProperty: propertyName).
	self assertHasType: case receiver.
	self assertHasType: case arguments first
]

{ #category : #test }
MASlangTypeAnnotatorTest >> testVisitCaseOfOtherwise [
	"cases in caseOf:otherwise: do not have TNodes equivalent"
	| ast caseMessage caseArray case otherwiseNode |
	ast := self
		inferMethodSelector: #aMethodWithCaseOfOtherwise
		from: self class.
	caseMessage := ast body statements first.
	self assert: (caseMessage hasProperty: propertyName).
	self assert: (caseMessage receiver hasProperty: propertyName).
	
	caseArray := caseMessage arguments first.
	self deny: (caseArray hasProperty: propertyName).
	
	case := caseArray statements first.
	self deny: (case hasProperty: propertyName).
	self assertHasType: case receiver.
	self assertHasType: case arguments first.
	
	otherwiseNode := caseMessage arguments second.
	self assert: (otherwiseNode hasProperty: propertyName)
]

{ #category : #test }
MASlangTypeAnnotatorTest >> testVisitSelfNode [

	| ast counter |
	" Override because slang adds an explicit return self "
	counter := 0.
	ast := self
		       inferMethodSelector: #aMethodWithSelf
		       from: FATypeAnnotatorTest.
	ast nodesDo: [ :aNode | 
		aNode isSelfVariable ifTrue: [ 
			counter := counter + 1.
			self assert: (aNode hasProperty: propertyName) ] ].
	self assert: counter equals: 2
]
