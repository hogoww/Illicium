Class {
	#name : #IlliciumVMTestGenerator,
	#superclass : #IlliciumPluginTestGenerator,
	#category : #'Illicium-Plugins-Tests-generators'
}

{ #category : #removing }
IlliciumVMTestGenerator class >> generateVMMakerPluginsTests [
	<script>
	| generator |
	self removeTests.
	generator:= self new.
	^ {Spur64BitMemoryManager} do:[:aVMClass| generator generateTestForClass: aVMClass ]
]

{ #category : #removing }
IlliciumVMTestGenerator class >> testBaseClass [
	^ ILVMSlangToCGeneratedTests
]

{ #category : #removing }
IlliciumVMTestGenerator class >> translatorClass [
	^ ASTCSlangTranslator
]

{ #category : #filter }
IlliciumVMTestGenerator >> methodToTest: aClass [
	^ (aClass allSelectorsBelow: VMClass)
		collect:[ :aSelector | aClass lookupSelector: aSelector ]
		thenSelect: [ :aCompiledMethod |(aCompiledMethod hasPragmaNamed: #doNotGenerate) not ]
]
