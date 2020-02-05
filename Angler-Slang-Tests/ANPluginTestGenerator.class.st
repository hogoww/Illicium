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
	#name : #ANPluginTestGenerator,
	#superclass : #Object,
	#category : #'Angler-Slang-Tests-generators'
}

{ #category : #removing }
ANPluginTestGenerator class >> cleanUp [
	<script>
	self removeResources.
	self removeTests.
]

{ #category : #generating }
ANPluginTestGenerator class >> generateVMMakerInterpreterPrimitiveTests [
	<script>
	StackInterpreterPrimitivesTranslationTests ifNotNil:[:c| c removeFromSystem ] .
	^ ANPluginTestGenerator new generateTestForClass: StackInterpreterPrimitives
]

{ #category : #generating }
ANPluginTestGenerator class >> generateVMMakerPluginsTests [
	<script>
	| generator |
	self cleanUp.
	generator:= self new.
	^ {BrokenPlugin. FilePlugin} do:[:aPluginClass| generator generateTestForClass: aPluginClass ]
]

{ #category : #removing }
ANPluginTestGenerator class >> removeResources [
	<script>
	^ self resourceBaseClass allSubclassesDo: [ :c | c removeFromSystem ]
]

{ #category : #removing }
ANPluginTestGenerator class >> removeTests [
	<script>
	^ self testBaseClass allSubclassesDo:[ :c| c removeFromSystem ]
]

{ #category : #configuring }
ANPluginTestGenerator class >> resourceBaseClass [
	^ ANSlangPluginTestResource
]

{ #category : #configuring }
ANPluginTestGenerator class >> testBaseClass [
	^ ANPluginTranslationTests 
]

{ #category : #configuring }
ANPluginTestGenerator class >> translatorClass [
	^ ANSlangPluginTranslator
]

{ #category : #'test-generation' }
ANPluginTestGenerator >> createTestClassFor: aClass [
	^ self class testBaseClass subclass: 'AN' , aClass name , 'TranslationTest'
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'Angler-Slang-Tests'
]

{ #category : #'test-generation' }
ANPluginTestGenerator >> formatSelector: aSelector [
	^ aSelector onlyLetters capitalized
]

{ #category : #'ressource-generation' }
ANPluginTestGenerator >> generateAccessorsTo: aResourceClass For: aTestedClass [ 
	| method ressourceClassName |
	ressourceClassName := aResourceClass name.
	method := #translator asMethodWithBody: [
		^ ressourceClassName current translator
	].
	aTestedClass compile: method asString classified: #accessing.
	
]

{ #category : #'ressource-generation' }
ANPluginTestGenerator >> generateResourceAccessorsFor: aRessourceClass [
	| translator method |
	method := #translator asMethodWithBody: [
		^ translator
	].
	aRessourceClass compile: method asString classified: #accessing.
	
	method := #translator: asMethodWithBody: [:aTranslator|
		translator := aTranslator
	].
	aRessourceClass compile: method asString classified: #accessing.
]

{ #category : #'ressource-generation' }
ANPluginTestGenerator >> generateResourceClassFor: aClass [
	^ self class resourceBaseClass subclass: 'AN' , aClass name , 'Ressource'
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'Angler-Slang-Tests'
]

{ #category : #'ressource-generation' }
ANPluginTestGenerator >> generateSetUpFor: aClass forResource: aRessourceClass [
	| testedClassName method |
	testedClassName := aClass name.
	method := 'setUp' asMethodWithBody: [
		super setUp.
		self translator: (self newTranslatorWith: testedClassName)
	].
	aRessourceClass compile: method asString classified: #running.
]

{ #category : #'test-generation' }
ANPluginTestGenerator >> generateSetUpFor: aClass forTestedClass: aTestedClass forTranslator: aTranslatorClass [
	| method testedClass testedClassName |
	testedClassName := aTestedClass name.
	method := 'setUp' asMethodWithBody: [
		super setUp.
		testedClass := testedClassName.
	].
	aClass compile: method asString classified: #running.
]

{ #category : #'test-generation' }
ANPluginTestGenerator >> generateTestForClass: aClass [
	| testClass methodToTest resourceClass |
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
			self generateTestMethodFor: aMethod selector inTestClass: testClass initialProtocol: protocol ].
	
	"ressource part"	
	resourceClass := self generateResourceClassFor: aClass.
	self generateSetUpFor: aClass forResource: resourceClass.
	self generateResourceAccessorsFor: resourceClass.
	self generateAccessorsTo: resourceClass For: testClass 
]

{ #category : #'test-generation' }
ANPluginTestGenerator >> generateTestMethodFor: aSelector inTestClass: aTestClass initialProtocol: aString [ 

	| methodSource |
	methodSource :=	 'test', aSelector onlyLetters capitalized , 'StringComparison' asMethodWithBody:[
		| illiString slangString illiAST |
		"Generate Slang first. Slang fails faster"
		slangString := self generateSlang: #aSelector.
		illiAST := self generateIllicium: #aSelector.
		illiString := self prettyPrintIllicium: illiAST.
		self assert: illiString equals: slangString.
	].

	aTestClass compile: methodSource asString classified: aString , #'equaliy-test'.
]

{ #category : #'test-generation' }
ANPluginTestGenerator >> methodToTest: aClass [
	^ aClass methodDict
		select: [ :compiledMethod | 
			(compiledMethod selector includesSubstring: 'primitive')
				and: [ compiledMethod argumentNames isEmpty ] ].
]
