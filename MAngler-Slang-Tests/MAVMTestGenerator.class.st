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
	#name : #MAVMTestGenerator,
	#superclass : #Object,
	#category : #'MAngler-Slang-Tests-Generators'
}

{ #category : #removing }
MAVMTestGenerator class >> cleanUp [
	<script>
	self removeResources.
	self removeTests.
]

{ #category : #generating }
MAVMTestGenerator class >> generateVMTests [
	<script>	
	| generator |
	self cleanUp.	
	generator:= self new.	
	^ {
			SpurPlanningCompactor.
			InterpreterStackPages.
			SpurSegmentManager.
			SpurGenerationScavenger.
			StackInterpreterPrimitives.
			Spur64BitMemoryManager
		} 
			do:[:aVMClass| generator generateTestForClass: aVMClass ]
]

{ #category : #removing }
MAVMTestGenerator class >> removeResources [
	<script>
	^ self resourceBaseClass allSubclassesDo: [ :c | c removeFromSystem ]
]

{ #category : #removing }
MAVMTestGenerator class >> removeTests [
	<script>
	^ self testBaseClass allSubclassesDo:[ :c| c removeFromSystem ]
]

{ #category : #generating }
MAVMTestGenerator class >> resourceBaseClass [
	^ MASlangVMTestResource
]

{ #category : #generating }
MAVMTestGenerator class >> testBaseClass [
	^ MAVMTranslationTests
]

{ #category : #generating }
MAVMTestGenerator class >> translatorClass [
	^ MASlangTranslator
]

{ #category : #formating }
MAVMTestGenerator >> formatSelector: aSelector [
	^ aSelector onlyLetters capitalized
]

{ #category : #'ressource-generation' }
MAVMTestGenerator >> generateAccessorsTo: aResourceClass For: aTestedClass [ 
	| method ressourceClassName |
	ressourceClassName := aResourceClass name.
	method := #translator asMethodWithBody: [
		^ ressourceClassName current translator
	].
	aTestedClass compile: method asString classified: #accessing.
	
]

{ #category : #'ressource-generation' }
MAVMTestGenerator >> generateResourceAccessorsFor: aRessourceClass [
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
MAVMTestGenerator >> generateResourceClassFor: aClass [
	| ressourceClass |
	ressourceClass := self class resourceBaseClass subclass: 'MA' , aClass name , 'Ressource'
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'MAngler-Slang-Tests'.
	ressourceClass tagWith: 'generatedResource'.
	^ ressourceClass
]

{ #category : #'ressource-generation' }
MAVMTestGenerator >> generateSetUpFor: aClass forResource: aRessourceClass [
	| testedClassName method |
	testedClassName := aClass name.
	method := 'setUp' asMethodWithBody: [
		super setUp.
		self translator: (self newTranslatorWith: testedClassName)
	].
	aRessourceClass compile: method asString classified: #running.
]

{ #category : #'test-generation' }
MAVMTestGenerator >> generateSetUpFor: aClass forTestedClass: aTestedClass forTranslator: aTranslatorClass [
	| method testedClass testedClassName |
	testedClassName := aTestedClass name.
	method := 'setUp' asMethodWithBody: [
		super setUp.
		testedClass := testedClassName.
	].
	aClass compile: method asString classified: #running.
]

{ #category : #'test-generation' }
MAVMTestGenerator >> generateTestClassFor: aClass [
	| testClass |
	testClass := self class testBaseClass subclass: 'MA' , aClass name , 'TranslationTest'
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'MAngler-Slang-Tests'.
	testClass tagWith: 'generatedTests'.
	^ testClass
]

{ #category : #'test-generation' }
MAVMTestGenerator >> generateTestForClass: aClass [
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
MAVMTestGenerator >> generateTestMethodFor: aSelector inTestClass: aTestClass initialProtocol: aString [ 

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
MAVMTestGenerator >> methodToTest: aClass [
	| methods |
	methods := (aClass allSelectorsBelow: VMClass)	
		collect:[ :aSelector | aClass lookupSelector: aSelector ]	
		thenSelect: [ :aCompiledMethod |
			(MASlangVMClassTranslator shouldITranslate: aCompiledMethod) ].
	MAFullVMCCodeGeneratorRessource reset.
	^ methods
]
