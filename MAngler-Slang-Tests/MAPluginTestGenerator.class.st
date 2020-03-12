Class {
	#name : #MAPluginTestGenerator,
	#superclass : #MAVMTestGenerator,
	#category : #'MAngler-Slang-Tests-Generators'
}

{ #category : #generating }
MAPluginTestGenerator class >> generateVMMakerInterpreterPrimitiveTests [
	<script>
	MAStackInterpreterPrimitivesTranslationTest ifNotNil:[:c| c removeFromSystem ] .
	^ MAVMTestGenerator new generateTestForClass: StackInterpreterPrimitives
]

{ #category : #generating }
MAPluginTestGenerator class >> generateVMMakerPluginsTests [
	<script>
	| generator |
	self cleanUp.
	generator:= self new.
	^ {BrokenPlugin. FilePlugin} do:[:aPluginClass| generator generateTestForClass: aPluginClass ]
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

{ #category : #picking }
MAPluginTestGenerator >> fillMethodsToTest: aClass [
	^ aClass methodDict
		select: [ :compiledMethod | 
			(compiledMethod selector includesSubstring: 'primitive')
				and: [ compiledMethod argumentNames isEmpty ] ].
]
