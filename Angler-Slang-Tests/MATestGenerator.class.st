Class {
	#name : #MATestGenerator,
	#superclass : #MAPluginTestGenerator,
	#category : #'Angler-Slang-Tests-generators'
}

{ #category : #generating }
MATestGenerator class >> generateVMTests [
	<script>	
	| generator |
	self cleanUp.	
	generator:= self new.	
	^ {Spur64BitMemoryManager} do:[:aVMClass| generator generateTestForClass: aVMClass ]
]

{ #category : #generating }
MATestGenerator class >> resourceBaseClass [
	^ MASlangVMTestResource
]

{ #category : #generating }
MATestGenerator class >> testBaseClass [
	^ MAVMTranslationTests
]

{ #category : #generating }
MATestGenerator class >> translatorClass [
	^ MASlangTranslator
]

{ #category : #picking }
MATestGenerator >> methodToTest: aClass [
	| methods |
	methods := (aClass allSelectorsBelow: VMClass)	
		collect:[ :aSelector | aClass lookupSelector: aSelector ]	
		thenSelect: [ :aCompiledMethod |
			(aCompiledMethod hasPragmaNamed: #doNotGenerate) not
				and: [ (MAFullVMCCodeGeneratorRessource current codeGenerator
					methodNamed: aCompiledMethod selector) notNil ] ].
		
	MAFullVMCCodeGeneratorRessource reset.
	^ methods
]
