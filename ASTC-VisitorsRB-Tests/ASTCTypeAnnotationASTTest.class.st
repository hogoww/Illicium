"
An ASTCTypeAnnotationAST2Test is a test class for testing the behavior of ASTCTypeAnnotationAST2
"
Class {
	#name : #ASTCTypeAnnotationASTTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor',
		'propertyName'
	],
	#category : #'ASTC-VisitorsRB-Tests-Typing'
}

{ #category : #test }
ASTCTypeAnnotationASTTest >> assertTypeOf: aNode is: aClass [
	^self assert: (aNode propertyAt: propertyName) asArray equals: {aClass} .
]

{ #category : #running }
ASTCTypeAnnotationASTTest >> setUp [
	super setUp.
	visitor:=ASTCTypeAnnotationAST new 
		inferer: PhineasInferer new.		
	propertyName := ASTCTypeAnnotationAST property.
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testGetTypeForAGlobalNodeClassVariable [
	| ast counter |
	<expectedFailure>"Phineas returns {SmallInteger + Undefined object. Weird}"
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithAClassVariable for: ASTCTypeAnnotationASTTestMethods.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isGlobal])
			ifTrue: [ 
				counter := counter + 1. 

				self assertTypeOf: aNode is: SmallInteger.
			].].
	self assert: counter equals:1.

]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testGetTypeForAGlobalNodeGlobal [
	| ast counter|
	ast := visitor inferMethodSelector: #aMethodWithAGlobalVariable for: ASTCTypeAnnotationASTTestMethods.
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
ASTCTypeAnnotationASTTest >> testGetTypeForAGlobalNodeSharedPoolVariable [
	"waiting for a better understanding of SharedPool variables"
	<expectedFailure>
	self flag: #toImplement.
	self assert: false equals: true.
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testGetTypeForALiteralNode [
	| ast counter |
	counter:=0.
	ast := visitor inferMethodSelector: #aMethodWithALiteralNode for: ASTCTypeAnnotationASTTestMethods .
	ast nodesDo: [ :aNode | 
		(aNode isLiteralNode and:[ aNode isValue ])
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: SmallInteger.
			].].
	self assert: counter equals: 1.

]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testGetTypeForAMessageNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodThatReturnAMessageThatReturnsAnInt for: ASTCTypeAnnotationASTTestMethods .
	ast nodesDo: [ :aNode | 
		aNode isMessage
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: SmallInteger.
			].].
	self assert: counter equals: 1.

]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testGetTypeForAMethodNode [
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
ASTCTypeAnnotationASTTest >> testGetTypeForASelfNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithSelf for: ASTCTypeAnnotationASTTestMethods.
	ast nodesDo: [ :aNode | 
		aNode isSelf
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: ASTCTypeAnnotationASTTestMethods.
			].].
	self assert: counter equals:1.

]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testGetTypeForATemporaryNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithATemporaryVariable for: ASTCTypeAnnotationASTTestMethods.
	ast nodesDo: [ :aNode | 
		aNode isTemp
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: SmallInteger.
				].].
	self assert: counter equals:2.
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testGetTypeForATemporaryNodeInABlock [
	| ast counter |
	counter := 0.
	ast := visitor
		inferMethodSelector: #aMethodWithABlockWithATemporary
		for: ASTCTypeAnnotationASTTestMethods.
	ast
		nodesDo: [ :aNode | 
			aNode isTemp
				ifTrue: [ counter := counter + 1.
					self assertTypeOf: aNode is: SmallInteger ] ].
	self assert: counter equals: 2
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testGetTypeForAnArgumentNode [
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
ASTCTypeAnnotationASTTest >> testGetTypeForAnArgumentNodeInABlock [
	| ast counter |
	counter := 0.
	ast := visitor
		inferMethodSelector: #aMethodWithABlockWithAnArgument
		for: ASTCTypeAnnotationASTTestMethods.
	ast
		nodesDo: [ :aNode | 
			aNode isArgument
				ifTrue: [ counter := counter + 1.
					self assertTypeOf: aNode is: SmallInteger ] ].
	self assert: counter equals: 1
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testGetTypeForAnInstanceVariableNode [
	| ast counter |
	counter:=0.
	ast := visitor inferMethodSelector: #aMethodWithAnInstanceVariable for: ASTCTypeAnnotationASTTestMethods .
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[ aNode isInstance ])
			ifTrue: [ 
				counter := counter + 1.
				self assertTypeOf: aNode is: SmallInteger.
			].].
	self assert: counter equals: 1.

]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testGetTypeOfInstanceVariableOfClass [
	| type |
	visitor
		inferMethodSelector: #aMethodWithAnInstanceVariable
		for: ASTCTypeAnnotationASTTestMethods.
	type := visitor
		getTypeOfInstanceVariable: #iv
		ofClass: ASTCTypeAnnotationASTTestMethods.
	self assert: type asArray equals: {SmallInteger}
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitArgumentNode [
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
ASTCTypeAnnotationASTTest >> testVisitGlobalNodeClassVariable [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithAClassVariable for: ASTCTypeAnnotationASTTestMethods.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isGlobal])
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName) 
			].].
	self assert: counter equals:1.
	
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitGlobalNodeGlobal [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithAGlobalVariable for: ASTCTypeAnnotationASTTestMethods.
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[aNode isGlobal])
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName).
			].].
	self assert: counter equals:1.
	
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitGlobalNodeSharedPoolVariable [
	| ast counter |
	<expectedFailure>
	self flag:#todo."waiting to have a better understanding"
	self assert:false.
	
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitInstanceVariableNode [
	| ast counter |
	counter:=0.
	ast := visitor inferMethodSelector: #aMethodWithAnInstanceVariable for: ASTCTypeAnnotationASTTestMethods .
	ast nodesDo: [ :aNode | 
		(aNode isVariable and:[ aNode isInstance ])
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName). 
			].].
	self assert: counter equals: 1.
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitLiteralNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithALiteralNode for: ASTCTypeAnnotationASTTestMethods.
	ast nodesDo: [ :aNode | 
		(aNode isLiteralNode and:[ aNode isValue ])
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName) 
			].].
	self assert: counter equals: 1.
]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitMessageNode [
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
ASTCTypeAnnotationASTTest >> testVisitMethodNode [
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
ASTCTypeAnnotationASTTest >> testVisitSelfNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithSelf for: ASTCTypeAnnotationASTTestMethods.
	ast nodesDo: [ :aNode | 
		aNode isSelf
			ifTrue: [ 
				counter := counter +1.
				self assert: (aNode hasProperty: propertyName).
			].].
	self assert: counter equals:1.

]

{ #category : #test }
ASTCTypeAnnotationASTTest >> testVisitTemporaryNode [
	| ast counter |
	counter := 0.
	ast := visitor inferMethodSelector: #aMethodWithATemporaryVariable  for: ASTCTypeAnnotationASTTestMethods.
	ast nodesDo: [ :aNode | 
		aNode isTemp
			ifTrue: [ 
				counter := counter + 1.
				self assert: (aNode hasProperty: propertyName) 
			].].
	self assert: counter equals:2.
	
]
