"
I test the ASTCSlangTypeAnnotator class
"
Class {
	#name : #ANSlangTypeAnnotatorTest,
	#superclass : #ASTCTypeAnnotatorTest,
	#category : #'Angler-Slang-Tests'
}

{ #category : #testing }
ANSlangTypeAnnotatorTest class >> isAbstract [
	^ false
]

{ #category : #test }
ANSlangTypeAnnotatorTest >> aMethodWithCCodeInSmalltalk [
	^ self cCode: ' 1 ' inSmalltalk: [ 1 ]
]

{ #category : #test }
ANSlangTypeAnnotatorTest >> aMethodWithCaseOf [
	1 caseOf: { [ 1 ] -> [ 1 even ] }
]

{ #category : #test }
ANSlangTypeAnnotatorTest >> aMethodWithCaseOfOtherwise [
	1 caseOf: 
		{ [ 1 ] -> [ 1 even ] }
		otherwise: 1
]

{ #category : #test }
ANSlangTypeAnnotatorTest >> assertHasType: aNode [
	self assert: (aNode hasProperty: propertyName).

]

{ #category : #test }
ANSlangTypeAnnotatorTest >> inferMethodSelector: aSelector from: aClass [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.
	visitor inferer addMethod: (aMethodAST asTranslationMethodOfClass: TMethod).
	visitor inferer inferTypesForImplicitlyTypedVariablesAndMethods.
	 
	aMethodAST acceptVisitor: visitor.
	^ aMethodAST
]

{ #category : #running }
ANSlangTypeAnnotatorTest >> setUp [
	visitor := ANSlangTypeAnnotator new 
		inferer: CCodeGenerator new;
		yourself.
	super setUp
]

{ #category : #test }
ANSlangTypeAnnotatorTest >> testVisitCCodeInSmalltalk [
	| ast message |
	" Slang ignores inSmalltalk: part, so we have to as well"
	ast := self
		inferMethodSelector: #aMethodWithCCodeInSmalltalk
		from: self class.
	message := ast body statements first value.
	self assert: (message arguments first hasProperty: propertyName).
	self deny: (message arguments second hasProperty: propertyName).
]

{ #category : #test }
ANSlangTypeAnnotatorTest >> testVisitCaseOf [
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
ANSlangTypeAnnotatorTest >> testVisitCaseOfOtherwise [
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
ANSlangTypeAnnotatorTest >> testVisitSelfNode [
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
