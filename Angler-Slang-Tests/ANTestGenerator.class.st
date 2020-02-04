Class {
	#name : #ANTestGenerator,
	#superclass : #ANPluginTestGenerator,
	#category : #'Angler-Slang-Tests-generators'
}

{ #category : #generating }
ANTestGenerator class >> testBaseClass [
	^ ANSlangToCGeneratedTests
]

{ #category : #generating }
ANTestGenerator class >> translatorClass [
	^ ANSlangTranslator
]

{ #category : #'test-generation' }
ANTestGenerator >> generateSetUpFor: aClass forTestedClass: aTestedClass forTranslator: aTranslatorClass [ 
	| method testedClass testedClassName translator |	
	testedClassName := aTestedClass name.	
	method := 'setUp' asMethodWithBody: [	
		super setUp.	
		testedClass := testedClassName.	
		translator addClass: testedClassName.	
		translator addMethod: StackInterpreter >> #cr.	
		translator addClass: SpurMemoryManager.	
	].	

	aClass compile: method asString classified: #running.
]

{ #category : #'test-generation' }
ANTestGenerator >> generateVMMakerPluginsTests [
	<script>	
	| generator |	
	self removeTests.	
	generator:= self new.	
	^ {Spur64BitMemoryManager} do:[:aVMClass| generator generateTestForClass: aVMClass ]
]

{ #category : #'test-generation' }
ANTestGenerator >> methodToTest: aClass [
	^ (aClass allSelectorsBelow: VMClass)	
		collect:[ :aSelector | aClass lookupSelector: aSelector ]	
		thenSelect: [ :aCompiledMethod |(aCompiledMethod hasPragmaNamed: #doNotGenerate) not ]
]
