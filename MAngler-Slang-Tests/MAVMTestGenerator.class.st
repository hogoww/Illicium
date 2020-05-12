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
	#instVars : [
		'methodsToStringCompare',
		'methodsToSmokeTest',
		'classToTest',
		'program'
	],
	#category : #'MAngler-Slang-Tests-Generators'
}

{ #category : #removing }
MAVMTestGenerator class >> cleanUp [
	<script>
	MAFullVMCCodeGeneratorRessource reset.
	MAFullVMAnglerProgramRessource reset.
	self removeResources.
	self removeTests.
]

{ #category : #generating }
MAVMTestGenerator class >> generateVMTests [
	<script>	
	| generator |
	self cleanUp.
	generator:= self new.	
	^ MAFullVMAnglerProgramRessource current program classesToPrepareSelectorsFor
		, MAFullVMAnglerProgramRessource current program structClasses 
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

{ #category : #picking }
MAVMTestGenerator >> fillMethodsToTest [
	| methods |

	"So inefficient it makes my skin crawl but hey..."
	methods := MAFullVMAnglerProgramRessource current program methods select: [ :aMethod | 
		aMethod methodClass = classToTest 
			and: [ (aMethod hasProperty: MASlangRequiredInliningMethodTagger propertyName) not ]].

	"Basically, what we can compare to slang, we do. What we cannot, we only do a smoke test on them"
	methodsToStringCompare := methods select: [ :aCompiledMethod |
			(MASlangTranslator shouldITranslate: aCompiledMethod)
				and:[ (MAFullVMCCodeGeneratorRessource current codeGenerator 
							methodNamed: aCompiledMethod selector) isNotNil ] ].
	
	methodsToSmokeTest := methods select:[:aCompiledMethod| 
		(MASlangTranslator shouldITranslate: aCompiledMethod)
			and:[ (MAFullVMCCodeGeneratorRessource current codeGenerator 
							methodNamed: aCompiledMethod selector) isNil ]  ].
]

{ #category : #formating }
MAVMTestGenerator >> formatSelector: aSelector [
	^ aSelector onlyLetters capitalized
]

{ #category : #'ressource-generation' }
MAVMTestGenerator >> generateAccessorsTo: aResourceClassName for: aTestedClass [ 
	| method |
	method := #translator asMethodWithBody: [
		^ aResourceClassName current translator
	].
	aTestedClass compile: method asString classified: #accessing.
	
]

{ #category : #'ressource-generation' }
MAVMTestGenerator >> generateResourceClass [
	| ressourceClass |
	ressourceClass := self class resourceBaseClass subclass: self ressourceClassName
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'MAngler-Slang-Tests'.
	ressourceClass tagWith: 'generatedResource'.
	^ ressourceClass
]

{ #category : #'test-generation' }
MAVMTestGenerator >> generateSetUpFor: aClass [
	| method testedClass aTestedClassName |
	aTestedClassName := classToTest name .
	method := 'setUp' asMethodWithBody: [
		super setUp.
		testedClass := aTestedClassName.
	].
	aClass compile: method asString classified: #running.
]

{ #category : #'ressource-generation' }
MAVMTestGenerator >> generateSetUpForResource: aRessourceClass [
	| testedClassName method |
	testedClassName := classToTest name.
	method := 'setUp' asMethodWithBody: [
		super setUp.
		self translator: (self newTranslatorWith: testedClassName)
	].
	aRessourceClass compile: method asString classified: #running.
]

{ #category : #'test-generation' }
MAVMTestGenerator >> generateSmokeTestFor: aMethod inTestClass: aTestClass [

	| methodSource methodToTestSelector |
	methodToTestSelector := aMethod selector.
	methodSource :=	 'test', methodToTestSelector onlyLetters capitalized , 'StringComparison' asMethodWithBody:[
		| illiAST |
		"In the case the method is pruned in the CCodeGenerator, we only test that this work all the way through"
		illiAST := self generateIllicium: #methodToTestSelector.
		self prettyPrintIllicium: illiAST.
	].

	aTestClass compile: methodSource asString classified: (aMethod protocol ifNil: #'').
]

{ #category : #'test-generation' }
MAVMTestGenerator >> generateStringEqualityTestFor: aMethod inTestClass: aTestClass [
	| methodSource methodToTestSelector |
	methodToTestSelector := aMethod selector.
	methodSource :=	 'test', methodToTestSelector onlyLetters capitalized , 'StringComparison' asMethodWithBody:[
		| illiString slangString illiAST |
		"Generate Slang first. Slang fails faster"
		slangString := self generateSlang: #methodToTestSelector.
		illiAST := self generateIllicium: #methodToTestSelector.
		illiString := self prettyPrintIllicium: illiAST.
		self assert: illiString equals: slangString.
	].

	aTestClass compile: methodSource asString classified: aMethod protocol.
]

{ #category : #'test-generation' }
MAVMTestGenerator >> generateTestClassFor: aClassName [
	| testClass |
	testClass := self class testBaseClass subclass: 'MA' , aClassName , 'TranslationTest'
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'MAngler-Slang-Tests'.
	testClass tagWith: 'generatedTests'.
	^ testClass
]

{ #category : #'as yet unclassified' }
MAVMTestGenerator >> generateTestClassFor: aTestClassName withMethods: aCollectionOfMethods using: aTestGenerationMethod [
	| testClass |
	testClass := self generateTestClassFor: aTestClassName.
	
	self generateSetUpFor: testClass.
	
	aCollectionOfMethods
		do: [ :aMethod | aTestGenerationMethod valueWithReceiver: self arguments: { aMethod. testClass } ].
		
	self generateAccessorsTo: self ressourceClassName for: testClass.
]

{ #category : #'test-generation' }
MAVMTestGenerator >> generateTestForClass: aClass [
	| resourceClass |
	
	classToTest := aClass.
	self fillMethodsToTest.
	
	methodsToSmokeTest isEmpty | methodsToStringCompare isEmpty ifTrue:[ ^ self "nothing to generate" ].
	
	"ressource part"
	resourceClass := self generateResourceClass.
	self generateSetUpForResource: resourceClass.
	
	methodsToSmokeTest ifNotEmpty: [ 
		self generateTestClassFor: #Smoke , aClass name 
			withMethods: methodsToSmokeTest 
			using: self class >> #generateSmokeTestFor:inTestClass:.
		].
	methodsToStringCompare ifNotEmpty: [ 
		self generateTestClassFor: #StringComp , aClass name 
			withMethods: methodsToStringCompare 
			using: self class >> #generateStringEqualityTestFor:inTestClass:
		].
	
	
	
	

]

{ #category : #'as yet unclassified' }
MAVMTestGenerator >> ressourceClassName [ 
	^ 'MA' , classToTest name , 'Ressource'
]
