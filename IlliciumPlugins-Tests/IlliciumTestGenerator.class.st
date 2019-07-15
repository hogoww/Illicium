"
IlliciumTestGenerator new
	generateTestForClass: BrokenPlugin
	withExpectedValue: [ :method | | codeGenerator translation |
		translation := method asTranslationMethodOfClass: TMethod.
		codeGenerator := CCodeGeneratorGlobalStructure new.
		codeGenerator generateDeadCode: true.
		codeGenerator addMethod: translation.
		codeGenerator inferTypesForImplicitlyTypedVariablesAndMethods.
		codeGenerator doInlining: true.

		String streamContents: [ :stream |
			translation emitCCodeOn: stream generator: codeGenerator.
    ].
 ]
"
Class {
	#name : #IlliciumTestGenerator,
	#superclass : #Object,
	#category : #'IlliciumPlugins-Tests'
}

{ #category : #'as yet unclassified' }
IlliciumTestGenerator >> createTestClassFor: aClass [
	
	^ IlliciumToSlangTestCase subclass: #IlGenerationTestFor, aClass name
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'IlliciumPlugins-Tests'
]

{ #category : #'as yet unclassified' }
IlliciumTestGenerator >> generateTestForClass: aClass withExpectedValue: aBlock [

	| testClass |
	[testClass := self createTestClassFor: aClass.
	aClass methodsDo: [ :each | 
			self
				generateTestMethodFor: each
				inTestClass: testClass
				usingExpectedBlock: aBlock ]
	]	on: Warning
		do: #resume
]

{ #category : #generation }
IlliciumTestGenerator >> generateTestMethodFor: aMethod inTestClass: aClass usingExpectedBlock: aBlockClosure [ 

	| methodSource |
	methodSource := 'test{selector}
	| code |
	code := self generate: #{selector} from: {class}.
	self assert: code equals: {expected}' format: { 
	'selector' -> aMethod selector.
	'class' -> aMethod methodClass name.
	'expected' -> (aBlockClosure value: aMethod) printString } asDictionary.
	
	aClass compile: methodSource classified: #tests.
]
