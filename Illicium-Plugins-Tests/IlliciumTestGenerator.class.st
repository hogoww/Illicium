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
	#category : #'Illicium-Plugins-Tests-generators'
}

{ #category : #removing }
IlliciumTestGenerator class >> generateVMMakerInterpreterPrimitiveTests [
	<script>
	^ IlliciumTestGenerator new generateTestForClass: InterpreterPrimitives. 
]

{ #category : #removing }
IlliciumTestGenerator class >> generateVMMakerPluginsTests [
	<script>
	| generator |
	generator:= IlliciumTestGenerator new.
	^ {BrokenPlugin} do:[:aPluginClass| generator generateTestForClass: aPluginClass ]
]

{ #category : #removing }
IlliciumTestGenerator class >> removeTests [
	<script>
	^ ILSlangToCGeneratedTests allSubclassesDo:[ :c| c removeFromSystem ]
]

{ #category : #generation }
IlliciumTestGenerator >> createTestClassFor: aClass [
	^ ILSlangToCGeneratedTests subclass: aClass name , 'TranslationTests'
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'Illicium-Plugins-Tests'
]

{ #category : #generation }
IlliciumTestGenerator >> generateSetUpFor: aClass forTestedClass: aTestedClass forTranslator: aTranslatorClass [
	| translator method testedClass testedClassName |
	testedClassName := aTestedClass name.
	method := 'setUp' asMethodWithBody: [
		super setUp.
		testedClass := testedClassName.
		translator := aTranslatorClass new
	].

	aClass compile: method asString classified: #running.
]

{ #category : #generation }
IlliciumTestGenerator >> generateSmokeTestMethodFor: aSelector inTestClass: aClass [ 

	| methodSource |
	methodSource :=	 'testSmoke', aSelector onlyLetters capitalized asMethodWithBody:[
		self testMethod: #aSelector.
	].
	
	aClass compile: methodSource asString classified: #tests.
]

{ #category : #generation }
IlliciumTestGenerator >> generateTestForClass: aClass [
	| testClass primitivesMethod |
	primitivesMethod := aClass methodDict
		select: [ :compiledMethod | 
			(compiledMethod selector includesSubstring: 'primitive')
				and: [ compiledMethod argumentNames isEmpty ] ].
		
	primitivesMethod ifEmpty: [ ^self ].
	
	testClass := self createTestClassFor: aClass.
	
	self
		generateSetUpFor: testClass
		forTestedClass: aClass
		forTranslator: #ASTCSlangTranslator.
	
	primitivesMethod
		do: [ :aMethod |
			self generateTestMethodFor: aMethod selector inTestClass: testClass.
			self generateSmokeTestMethodFor: aMethod selector inTestClass: testClass ]
]

{ #category : #generation }
IlliciumTestGenerator >> generateTestMethodFor: aSelector inTestClass: aClass [ 

	| methodSource |
	methodSource :=	 'testEqualsSlangOutputFor', aSelector onlyLetters capitalized asMethodWithBody:[
		| illiString slangString |
		illiString := self generateIllicium: #aSelector.
		slangString := self generateSlang: #aSelector.
		self assert: illiString equals: slangString.
	].
	
	aClass compile: methodSource asString classified: #tests.
]
