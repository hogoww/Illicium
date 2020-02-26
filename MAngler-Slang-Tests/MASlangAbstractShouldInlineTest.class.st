Class {
	#name : #MASlangAbstractShouldInlineTest,
	#superclass : #TestCase,
	#instVars : [
		'inliner',
		'program'
	],
	#category : #'MAngler-Slang-Tests-AnalysisTests'
}

{ #category : #testing }
MASlangAbstractShouldInlineTest class >> isAbstract [
	^ true
]

{ #category : #support }
MASlangAbstractShouldInlineTest >> aMethodNotInTheProgram [
	1
]

{ #category : #support }
MASlangAbstractShouldInlineTest >> aMethodWithAMessageWithAReceiverBlock [
	[ ] value
]

{ #category : #support }
MASlangAbstractShouldInlineTest >> aMethodWithAMessageWithAnArgumentBlock [
	1 allObjectsDo: [ 2 ]
]

{ #category : #support }
MASlangAbstractShouldInlineTest >> aMethodWithAnUnknownMessage [
	self aMethodNotInTheProgram
]

{ #category : #support }
MASlangAbstractShouldInlineTest >> aMethodWithSuperCall [
	super allObjectsDo: 1
]

{ #category : #running }
MASlangAbstractShouldInlineTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
	program := FAProgram new.
	program addMethod: (SpurMemoryManager >> #allObjectsDo:) ast.
	inliner := self class inlinerClass new
		translator: MASlangClassTranslator new;
		program: program;
		yourself.
		
]

{ #category : #tests }
MASlangAbstractShouldInlineTest >> testShouldInlineMethodWithArgumentBlock [
	| method |
	method := (MASlangAbstractShouldInlineTest >> #aMethodWithAMessageWithAnArgumentBlock) ast.
	program addMethod: method.
	^ inliner shouldInline: method statements first
]

{ #category : #tests }
MASlangAbstractShouldInlineTest >> testShouldInlineSuper [
	| method |
	method := (MASlangAbstractShouldInlineTest >> #aMethodWithSuperCall) ast.
	program addMethod: method.
	^ inliner shouldInline: method statements first
]

{ #category : #tests }
MASlangAbstractShouldInlineTest >> testShouldNotInlineUnknownMethods [
	| method |
	method := (MASlangAbstractShouldInlineTest >> #aMethodWithAnUnknownMessage) ast.
	program addMethod: method.
	^ inliner shouldInline: method statements first
]
