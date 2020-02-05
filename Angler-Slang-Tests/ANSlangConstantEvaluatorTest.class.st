Class {
	#name : #ANSlangConstantEvaluatorTest,
	#superclass : #TestCase,
	#instVars : [
		'value',
		'evaluated',
		'program'
	],
	#category : #'Angler-Slang-Tests'
}

{ #category : #asserting }
ANSlangConstantEvaluatorTest >> assertEvaluatedAs: aValue [
	
	self assert: evaluated.
	self assert: aValue equals: value
]

{ #category : #tests }
ANSlangConstantEvaluatorTest >> doc [

	'
isConstantNode: aNode valueInto: aBlock
	"Answer if aNode evaluates to a constant, and if so, evaluate aBlock with the value of that constant."

	aNode isConstant ifTrue:
		[(aNode isDefine
		  and: [(vmClass ifNil: [VMBasicConstants]) defineAtCompileTime: aNode name]) ifTrue:
			[^false].
		 aBlock value: aNode value.
		 ^true].
	(aNode isVariable
	 and: [aNode name = #nil]) ifTrue:
		[aBlock value: nil.
		 ^true].
	aNode isSend ifTrue:
		[(self anyMethodNamed: aNode selector)
			ifNil:
				[(VMBasicConstants valueOfBasicSelector: aNode selector) ifNotNil:
					[:value|
					 aBlock value: value.
					 ^true].
				 aNode constantNumbericValueOrNil ifNotNil:
					[:value|
					 aBlock value: value.
					 ^true]]
			ifNotNil:
				[:m|
				(m statements size = 1
				 and: [m statements last isReturn]) ifTrue:
					[^self isConstantNode: m statements last expression valueInto: aBlock]]].
	^false'
]

{ #category : #helpers }
ANSlangConstantEvaluatorTest >> evaluateNode: aNode [

	value := ANSlangConstantEvaluator new
		program: program;
		evaluate: aNode
		ifNonValueDo: [ ^ self ].
	evaluated := true.
]

{ #category : #tests }
ANSlangConstantEvaluatorTest >> foo [

	^ 3*8
]

{ #category : #tests }
ANSlangConstantEvaluatorTest >> setUp [

	super setUp.
	evaluated := false.
	
	program := ANProgram new.
	program addMethod: (self class >> #foo) ast.
]

{ #category : #tests }
ANSlangConstantEvaluatorTest >> testEvaluateDivision [

	| node |
	node := RBMessageNode
		receiver: (RBLiteralValueNode value: 7)
		selector: #//
		arguments: { RBLiteralValueNode value: 2 }.
	self evaluateNode: node.
	
	self assertEvaluatedAs: 3
]

{ #category : #tests }
ANSlangConstantEvaluatorTest >> testEvaluateFalseNodeIsFalse [

	| node |
	node := RBLiteralValueNode value: false.
	self evaluateNode: node.
	
	self assertEvaluatedAs: false
]

{ #category : #tests }
ANSlangConstantEvaluatorTest >> testEvaluateKnownMethodWithConstantAsLastArgument [

	| node |
	node := RBMessageNode
		receiver: (RBLiteralValueNode value: nil)
		selector: #foo.

	self evaluateNode: node.
	self assert: value equals: 24
]

{ #category : #tests }
ANSlangConstantEvaluatorTest >> testEvaluateMultiplication [

	| node |
	node := RBMessageNode
		receiver: (RBLiteralValueNode value: 7)
		selector: #*
		arguments: { RBLiteralValueNode value: 2 }.
	self evaluateNode: node.
	
	self assertEvaluatedAs: 14
]

{ #category : #tests }
ANSlangConstantEvaluatorTest >> testEvaluateNilNodeIsNil [

	| node |
	node := RBLiteralValueNode value: nil.
	self evaluateNode: node.
	
	self assertEvaluatedAs: nil
]

{ #category : #tests }
ANSlangConstantEvaluatorTest >> testEvaluateSubstraction [

	| node |
	node := RBMessageNode
		receiver: (RBLiteralValueNode value: 2)
		selector: #-
		arguments: { RBLiteralValueNode value: 7 }.
	self evaluateNode: node.
	
	self assertEvaluatedAs: -5
]

{ #category : #tests }
ANSlangConstantEvaluatorTest >> testEvaluateSum [

	| node |
	node := RBMessageNode
		receiver: (RBLiteralValueNode value: 2)
		selector: #+
		arguments: { RBLiteralValueNode value: 7 }.
	self evaluateNode: node.
	
	self assertEvaluatedAs: 9
]

{ #category : #tests }
ANSlangConstantEvaluatorTest >> testEvaluateTrueNodeIsTrue [

	| node |
	node := RBLiteralValueNode value: true.
	self evaluateNode: node.
	
	self assertEvaluatedAs: true
]

{ #category : #tests }
ANSlangConstantEvaluatorTest >> testEvaluateVMConstants [

	VMBasicConstants mostBasicConstantNames
		select: [ :constant | (VMBasicConstants classPool at: constant ifAbsent: []) notNil ]
		thenDo: [ :constantName | | node selector |
			selector := VMBasicConstants mostBasicConstantSelectors
				at: (VMBasicConstants mostBasicConstantNames indexOf: constantName).
			node := RBMessageNode
				receiver: (RBLiteralValueNode value: 7)
				selector: selector.
			self evaluateNode: node.
			self assertEvaluatedAs: (VMBasicConstants valueOfBasicSelector: selector) ]
]
