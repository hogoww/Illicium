Class {
	#name : #ANTestGenerator,
	#superclass : #ANPluginTestGenerator,
	#category : #'Angler-Slang-Tests-generators'
}

{ #category : #removing }
ANTestGenerator class >> generateVMMakerPluginsTests [
	<script>
	| generator |
	self removeTests.
	generator:= self new.
	^ {Spur64BitMemoryManager} do:[:aVMClass| generator generateTestForClass: aVMClass ]
]

{ #category : #removing }
ANTestGenerator class >> testBaseClass [
	^ ANSlangToCGeneratedTests
]

{ #category : #removing }
ANTestGenerator class >> translatorClass [
	^ ANSlangTranslator
]

{ #category : #filter }
ANTestGenerator >> methodToTest: aClass [
	^ (aClass allSelectorsBelow: VMClass)
		collect:[ :aSelector | aClass lookupSelector: aSelector ]
		thenSelect: [ :aCompiledMethod |(aCompiledMethod hasPragmaNamed: #doNotGenerate) not ]
]
