Class {
	#name : #ANTestGenerator,
	#superclass : #ANPluginTestGenerator,
	#category : #'Angler-Slang-Tests-generators'
}

{ #category : #generating }
ANTestGenerator class >> generateVMTests [
	<script>	
	| generator |
	self cleanUp.	
	generator:= self new.	
	^ {Spur64BitMemoryManager} do:[:aVMClass| generator generateTestForClass: aVMClass ]
]

{ #category : #generating }
ANTestGenerator class >> resourceBaseClass [
	^ ANSlangVMTestResource
]

{ #category : #generating }
ANTestGenerator class >> testBaseClass [
	^ ANVMTranslationTests
]

{ #category : #generating }
ANTestGenerator class >> translatorClass [
	^ ANSlangTranslator
]

{ #category : #'test-generation' }
ANTestGenerator >> methodToTest: aClass [
	| methods |
	methods := (aClass allSelectorsBelow: VMClass)	
		collect:[ :aSelector | aClass lookupSelector: aSelector ]	
		thenSelect: [ :aCompiledMethod |
			(aCompiledMethod hasPragmaNamed: #doNotGenerate) not
				and: [ (ANFullVMCCodeGeneratorRessource current codeGenerator
					methodNamed: aCompiledMethod selector) notNil ] ].
		
	ANFullVMCCodeGeneratorRessource reset.
	^ methods
]
