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

{ #category : #generation }
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

{ #category : #filter }
ANTestGenerator >> methodToTest: aClass [
	^ (aClass allSelectorsBelow: VMClass)
		collect:[ :aSelector | aClass lookupSelector: aSelector ]
		thenSelect: [ :aCompiledMethod |(aCompiledMethod hasPragmaNamed: #doNotGenerate) not ]
]
