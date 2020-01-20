"
I am a copy of class ILSlangToCGeneratedTests. This comment is copied from there, and might not be entirely accurate

This class contains tests
"
Class {
	#name : #ILVMSlangToCGeneratedTests,
	#superclass : #ParametrizedTestCase,
	#instVars : [
		'translator',
		'testedClass'
	],
	#category : #'Illicium-Plugins-Tests'
}

{ #category : #'as yet unclassified' }
ILVMSlangToCGeneratedTests class >> ressource [
	^ { FullVMCCodeGeneratorRessource }
]

{ #category : #'generating machine code' }
ILVMSlangToCGeneratedTests >> codeGenerator [
	^ FullVMCCodeGeneratorRessource current codeGenerator
]

{ #category : #generating }
ILVMSlangToCGeneratedTests >> generateIllicium: aSelector [ 
	
	^ translator  translateMethod: aSelector fromClass: testedClass
]

{ #category : #'generating machine code' }
ILVMSlangToCGeneratedTests >> generateSlang: aSelector [ 
	| codeGenerator |
	codeGenerator := self codeGenerator.
	^ codeGenerator cCodeForMethod: aSelector.
	
	
]

{ #category : #generating }
ILVMSlangToCGeneratedTests >> prettyPrintIllicium: anAST [

	^ anAST definitions first prettyPrintUsing: ASTCSlangTranslator prettyPrinterClass new.
]

{ #category : #accessing }
ILVMSlangToCGeneratedTests >> testMethod: aSelector [
	| cu |
	cu := translator translateMethod: aSelector fromClass: testedClass.
	^ cu
]

{ #category : #accessing }
ILVMSlangToCGeneratedTests >> testedClass [
	^ testedClass
]

{ #category : #accessing }
ILVMSlangToCGeneratedTests >> testedClass: aClass [
	testedClass := aClass
]

{ #category : #accessing }
ILVMSlangToCGeneratedTests >> translator [
	^ translator
]

{ #category : #accessing }
ILVMSlangToCGeneratedTests >> translator: anObject [
	translator := anObject
]
