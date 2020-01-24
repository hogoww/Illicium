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
	#name : #IlliciumPluginTestGenerator,
	#superclass : #Object,
	#category : #'Illicium-Plugins-Tests-generators'
}

{ #category : #removing }
IlliciumPluginTestGenerator class >> generateVMMakerInterpreterPrimitiveTests [
	<script>
	StackInterpreterPrimitivesTranslationTests ifNotNil:[:c| c removeFromSystem ] .
	^ IlliciumPluginTestGenerator new generateTestForClass: StackInterpreterPrimitives
]

{ #category : #removing }
IlliciumPluginTestGenerator class >> generateVMMakerPluginsTests [
	<script>
	| generator |
	self removeTests.
	generator:= self new.
	^ {BrokenPlugin. FilePlugin} do:[:aPluginClass| generator generateTestForClass: aPluginClass ]
]

{ #category : #removing }
IlliciumPluginTestGenerator class >> removeTests [
	<script>
	^ self testBaseClass allSubclassesDo:[ :c| c removeFromSystem ]
]

{ #category : #removing }
IlliciumPluginTestGenerator class >> testBaseClass [
	^ ILPluginSlangToCGeneratedTests
]

{ #category : #removing }
IlliciumPluginTestGenerator class >> translatorClass [
	^ ASTCSlangPluginTranslator
]

{ #category : #generation }
IlliciumPluginTestGenerator >> createTestClassFor: aClass [
	^ self class testBaseClass subclass: aClass name , 'TranslationTest'
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'Illicium-Plugins-Tests'
]

{ #category : #generation }
IlliciumPluginTestGenerator >> formatSelector: aSelector [
	^ aSelector onlyLetters capitalized
]

{ #category : #generation }
IlliciumPluginTestGenerator >> generateSetUpFor: aClass forTestedClass: aTestedClass forTranslator: aTranslatorClass [
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
IlliciumPluginTestGenerator >> generateSmokeTestMethodFor: aSelector inTestClass: aTestClass initialProtocol: aString [ 

	| methodSource |
	methodSource :=	 'test', (self formatSelector: aSelector) , 'Smoke' asMethodWithBody:[
		self testMethod: #aSelector.
	].
	
	aTestClass compile: methodSource asString classified: aString , #'smoke-test'.
]

{ #category : #generation }
IlliciumPluginTestGenerator >> generateTestForClass: aClass [
	| testClass methodToTest |
	methodToTest := self methodToTest: aClass.
		
	methodToTest ifEmpty: [ ^self ].
	
	testClass := self createTestClassFor: aClass.
	
	self
		generateSetUpFor: testClass
		forTestedClass: aClass
		forTranslator: self class translatorClass name.
	
	methodToTest
		do: [ :aMethod | | protocol |
			protocol := aMethod protocol ifNotEmpty: [ aMethod protocol , '-' ].
			self generateTestMethodFor: aMethod selector inTestClass: testClass initialProtocol: protocol.
			self generateSmokeTestMethodFor: aMethod selector inTestClass: testClass initialProtocol: protocol ]
]

{ #category : #generation }
IlliciumPluginTestGenerator >> generateTestMethodFor: aSelector inTestClass: aTestClass initialProtocol: aString [ 

	| methodSource |
	methodSource :=	 'test', aSelector onlyLetters capitalized , 'StringComparison' asMethodWithBody:[
		| illiString slangString illiAST |
		illiAST := self generateIllicium: #aSelector.
		illiString := self prettyPrintIllicium: illiAST.
		slangString := self generateSlang: #aSelector.
		self assert: illiString equals: slangString.
	].

	aTestClass compile: methodSource asString classified: aString , #'equaliy-test'.
]

{ #category : #generation }
IlliciumPluginTestGenerator >> methodToTest: aClass [
	^ aClass methodDict
		select: [ :compiledMethod | 
			(compiledMethod selector includesSubstring: 'primitive')
				and: [ compiledMethod argumentNames isEmpty ] ].
]
