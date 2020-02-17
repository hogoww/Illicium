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
	#name : #MAPluginTestGenerator,
	#superclass : #Object,
	#category : #'MAngler-Slang-Tests-generators'
}

{ #category : #removing }
MAPluginTestGenerator class >> cleanUp [
	<script>
	self removeResources.
	self removeTests.
]

{ #category : #generating }
MAPluginTestGenerator class >> generateVMMakerInterpreterPrimitiveTests [
	<script>
	StackInterpreterPrimitivesTranslationTests ifNotNil:[:c| c removeFromSystem ] .
	^ MAPluginTestGenerator new generateTestForClass: StackInterpreterPrimitives
]

{ #category : #generating }
MAPluginTestGenerator class >> generateVMMakerPluginsTests [
	<script>
	| generator |
	self cleanUp.
	generator:= self new.
	^ {BrokenPlugin. FilePlugin} do:[:aPluginClass| generator generateTestForClass: aPluginClass ]
]

{ #category : #removing }
MAPluginTestGenerator class >> removeResources [
	<script>
	^ self resourceBaseClass allSubclassesDo: [ :c | c removeFromSystem ]
]

{ #category : #removing }
MAPluginTestGenerator class >> removeTests [
	<script>
	^ self testBaseClass allSubclassesDo:[ :c| c removeFromSystem ]
]

{ #category : #configuring }
MAPluginTestGenerator class >> resourceBaseClass [
	^ MASlangPluginTestResource
]

{ #category : #configuring }
MAPluginTestGenerator class >> testBaseClass [
	^ MAPluginTranslationTests 
]

{ #category : #configuring }
MAPluginTestGenerator class >> translatorClass [
	^ MASlangPluginTranslator
]

{ #category : #formating }
MAPluginTestGenerator >> formatSelector: aSelector [
	^ aSelector onlyLetters capitalized
]

{ #category : #'ressource-generation' }
MAPluginTestGenerator >> generateAccessorsTo: aResourceClass For: aTestedClass [ 
	| method ressourceClassName |
	ressourceClassName := aResourceClass name.
	method := #translator asMethodWithBody: [
		^ ressourceClassName current translator
	].
	aTestedClass compile: method asString classified: #accessing.
	
]

{ #category : #'ressource-generation' }
MAPluginTestGenerator >> generateResourceAccessorsFor: aRessourceClass [
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
MAPluginTestGenerator >> generateResourceClassFor: aClass [
	| ressourceClass |
	ressourceClass := self class resourceBaseClass subclass: 'AN' , aClass name , 'Ressource'
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'Angler-Slang-Tests'.
	ressourceClass tagWith: 'generated-ressource'.
	^ ressourceClass
]

{ #category : #'ressource-generation' }
MAPluginTestGenerator >> generateSetUpFor: aClass forResource: aRessourceClass [
	| testedClassName method |
	testedClassName := aClass name.
	method := 'setUp' asMethodWithBody: [
		super setUp.
		self translator: (self newTranslatorWith: testedClassName)
	].
	aRessourceClass compile: method asString classified: #running.
]

{ #category : #'test-generation' }
MAPluginTestGenerator >> generateSetUpFor: aClass forTestedClass: aTestedClass forTranslator: aTranslatorClass [
	| method testedClass testedClassName |
	testedClassName := aTestedClass name.
	method := 'setUp' asMethodWithBody: [
		super setUp.
		testedClass := testedClassName.
	].
	aClass compile: method asString classified: #running.
]

{ #category : #'test-generation' }
MAPluginTestGenerator >> generateTestClassFor: aClass [
	| testClass |
	testClass := self class testBaseClass subclass: 'AN' , aClass name , 'TranslationTest'
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'Angler-Slang-Tests'.
	testClass tagWith: 'generated-tests'.
	^ testClass
]

{ #category : #'test-generation' }
MAPluginTestGenerator >> generateTestForClass: aClass [
	| testClass methodToTest resourceClass |
	methodToTest := self methodToTest: aClass.
		
	methodToTest ifEmpty: [ ^self ].
	
	testClass := self generateTestClassFor: aClass.
	
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
MAPluginTestGenerator >> generateTestMethodFor: aSelector inTestClass: aTestClass initialProtocol: aString [ 

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

{ #category : #picking }
MAPluginTestGenerator >> methodToTest: aClass [
	^ aClass methodDict
		select: [ :compiledMethod | 
			(compiledMethod selector includesSubstring: 'primitive')
				and: [ compiledMethod argumentNames isEmpty ] ].
]
