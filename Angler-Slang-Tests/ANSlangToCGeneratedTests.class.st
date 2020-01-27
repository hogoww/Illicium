"
I am a copy of class ILSlangToCGeneratedTests. This comment is copied from there, and might not be entirely accurate

This class contains tests
"
Class {
	#name : #ANSlangToCGeneratedTests,
	#superclass : #ParametrizedTestCase,
	#instVars : [
		'translator',
		'testedClass'
	],
	#category : #'Angler-Slang-Tests'
}

{ #category : #'as yet unclassified' }
ANSlangToCGeneratedTests class >> ressource [
	^ { ANFullVMCCodeGeneratorRessource }
]

{ #category : #'generating machine code' }
ANSlangToCGeneratedTests >> codeGenerator [
	^ ANFullVMCCodeGeneratorRessource current codeGenerator
]

{ #category : #generating }
ANSlangToCGeneratedTests >> generateIllicium: aSelector [ 
	
	^ translator translateMethod: aSelector fromClass: testedClass
]

{ #category : #'generating machine code' }
ANSlangToCGeneratedTests >> generateSlang: aSelector [ 
	| codeGenerator |
	codeGenerator := self codeGenerator.
	^ codeGenerator cCodeForMethod: aSelector.
	
	
]

{ #category : #generating }
ANSlangToCGeneratedTests >> prettyPrintIllicium: anAST [

	^ anAST definitions first prettyPrintUsing: ANSlangTranslator prettyPrinterClass new.
]

{ #category : #generating }
ANSlangToCGeneratedTests >> setUp [
	super setUp.
  translator := ANSlangTranslator new
]

{ #category : #accessing }
ANSlangToCGeneratedTests >> testMethod: aSelector [
	| cu |
	cu := translator translateMethod: aSelector fromClass: testedClass.
	^ cu
]

{ #category : #accessing }
ANSlangToCGeneratedTests >> testedClass [
	^ testedClass
]

{ #category : #accessing }
ANSlangToCGeneratedTests >> testedClass: aClass [
	testedClass := aClass
]

{ #category : #accessing }
ANSlangToCGeneratedTests >> translator [
	^ translator
]

{ #category : #accessing }
ANSlangToCGeneratedTests >> translator: anObject [
	translator := anObject
]
