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

{ #category : #generation }
IlliciumVMTestGenerator >> generateTestForClass: aClass [
	| testClass primitivesMethod |
	primitivesMethod := (aClass allSelectorsBelow: VMClass)
		collect:[ :aSelector | aClass lookupSelector: aSelector ]
		thenSelect: [ :aCompiledMethod |(aCompiledMethod hasPragmaNamed: #doNotGenerate) not ].
		
	primitivesMethod ifEmpty: [ ^self ].
	
	testClass := self createTestClassFor: aClass.
	
	self
		generateSetUpFor: testClass
		forTestedClass: aClass
		forTranslator: #ASTCSlangTranslator.
	
	primitivesMethod
		do: [ :aMethod |
			self generateTestMethodFor: aMethod selector inTestClass: testClass.
			self generateSmokeTestMethodFor: aMethod selector inTestClass: testClass ]
]
