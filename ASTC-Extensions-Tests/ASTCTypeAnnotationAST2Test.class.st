"
An ASTCTypeAnnotationAST2Test is a test class for testing the behavior of ASTCTypeAnnotationAST2
"
Class {
	#name : #ASTCTypeAnnotationAST2Test,
	#superclass : #TestCase,
	#instVars : [
		'inferer',
		'visitor',
		'propertyName',
		'b'
	],
	#category : #'ASTC-Extensions-Tests-RBAnnotations'
}

{ #category : #test }
ASTCTypeAnnotationAST2Test >> assertTypeOf: aNode is: aClass [
	^self assert: (aNode propertyAt: propertyName) asArray equals: {aClass} .
]

{ #category : #running }
ASTCTypeAnnotationAST2Test >> setUp [
	super setUp.
	visitor:=ASTCTypeAnnotationAST2 new.		
	propertyName := ASTCTypeAnnotationAST2 property.
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testGetTypeForAGlobalNodeClassVariable [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithAClassVariable for: ASTCTypeAnnotationAST2TestMethods class.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isGlobal])
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: SmallInteger.
			].].
	self assert: counter equals:1.

]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testGetTypeForAGlobalNodeGlobal [
	| ast counter|
	ast := visitor inferMethodSelector: #aMethodWithAGlobalVariable for: ASTCTypeAnnotationAST2TestMethods.
	counter:=0.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isGlobal])
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: ASTCExpression .
			].].
		
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testGetTypeForAGlobalNodeSharedPoolVariable [
	"waiting for a better understanding of SharedPool variables"

	self flag: #toImplement.
	self assert: false equals: true.
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testGetTypeForAMethodNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #factorialR for: RandomTestClass.
	ast nodesDo: [ :aNode | 
		aNode isMethod
			ifTrue: [ 
				counter := counter +1.
				self assertTypeOf: aNode is: SmallInteger.
			].].
	self assert: counter equals:1.

]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testGetTypeForASelfNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithSelf for: ASTCTypeAnnotationAST2TestMethods.
	ast nodesDo: [ :aNode | 
		aNode isSelf
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: ASTCTypeAnnotationAST2TestMethods.
			].].
	self assert: counter equals:1.

]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testGetTypeForATemporaryNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithATemporaryVariable for: ASTCTypeAnnotationAST2TestMethods.
	ast nodesDo: [ :aNode | 
		aNode isTemp
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: SmallInteger.
				].].
	self assert: counter equals:2.
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testGetTypeForArgumentNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #factorialR: for: RandomTestClass usingBlock:[ RandomTestClass new factorialR: 3 ].
	ast nodesDo: [ :aNode |
		aNode isArgument
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: SmallInteger.
			].].
	self assert: counter equals: 4.
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testGetTypeForInstanceVariableNode [
	| ast counter |
	counter:=0.
	ast := visitor inferMethodSelector: #aMethodWithAnInstanceVariable for: ASTCTypeAnnotationAST2TestMethods .
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[ aNode isInstance ])
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: SmallInteger.
			].].
	self assert: counter equals: 1.

]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testGetTypeForMessageNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodThatReturnAMessageThatReturnsAnInt for: ASTCTypeAnnotationAST2TestMethods .
	ast nodesDo: [ :aNode | 
		aNode isMessage
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: SmallInteger.
			].].
	self assert: counter equals: 1.

]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitArgumentNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #factorialR: for: RandomTestClass usingBlock:[ RandomTestClass new factorialR: 3 ].
	ast nodesDo: [ :aNode | 
		aNode isArgument
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			]. ].
	self assert: counter equals:4.
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitGlobalNodeClassVariable [
	| ast counter |
	self assert: true equals:false. "tests the wrong thing"
	self flag:#todo.

	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithAClassVariable for: ASTCTypeAnnotationAST2TestMethods.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isGlobal])
			ifTrue: [ 
				counter := counter + 1.
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
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			].].
	self assert: counter equals:1.
	
]

{ #category : #test }
ASTCTypeAnnotationAST2Test >> testVisitGlobalNodeSharedPoolVariable [
	| ast counter |
	self flag:#todo."waiting to have a better understanding"
	self assert:false.
	
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
				counter := counter + 1.
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
				counter := counter + 1.
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
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName) 
			].].
	self assert: counter equals:2.
	
]
