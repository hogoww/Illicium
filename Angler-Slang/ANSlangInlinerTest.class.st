Class {
	#name : #ANSlangInlinerTest,
	#superclass : #TestCase,
	#instVars : [
		'program',
		'inliner',
		'methodToInline'
	],
	#category : #'Angler-Slang'
}

{ #category : #tests }
ANSlangInlinerTest >> methodWithSingleReturnStatement [
	^ 1 even
]

{ #category : #tests }
ANSlangInlinerTest >> methodWithSingleReturnStatementToInline [
	self methodWithSingleReturnStatement
]

{ #category : #tests }
ANSlangInlinerTest >> methodWithSingleStatement [
	1 even
]

{ #category : #tests }
ANSlangInlinerTest >> methodWithSingleStatementToInline [
	self methodWithSingleStatement
]

{ #category : #running }
ANSlangInlinerTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
	program := ANProgram new.
	inliner := ANSlangInliner new.
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineSingleStatement [
	| resultingMethod inlinedStatement |
	program addMethod: self class >> #methodWithSingleStatement. 
	methodToInline := (self class >> #methodWithSingleStatementToInline) ast.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	inlinedStatement := resultingMethod statements first.
	self assert: methodToInline statement size equals: 1.
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver value equals: 1.
	self assert: inlinedStatement selector equals: #even.
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineSingleStatementThatReturns [
	| resultingMethod inlinedStatement |
	program addMethod: self class >> #methodWithSingleReturnStatement. 
	methodToInline := (self class >> #methodWithSingleReturnStatementToInline) ast.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	inlinedStatement := resultingMethod statements first.
	self assert: methodToInline statement size equals: 1.
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver value equals: 1.
	self assert: inlinedStatement selector equals: #even.
	
]
