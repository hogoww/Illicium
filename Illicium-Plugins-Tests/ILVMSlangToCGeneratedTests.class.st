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

{ #category : #generating }
ILVMSlangToCGeneratedTests >> generateIllicium: aSelector [ 
	
	^ translator  translateMethod: aSelector fromClass: testedClass
]

{ #category : #'generating machine code' }
ILVMSlangToCGeneratedTests >> generateSlang: aSelector [ 
	| method translation codeGenerator result |
	"Might be able to use cCodeForMethod: instead"
	method := testedClass >> aSelector.
	translation := method asTranslationMethodOfClass: TMethod.
	codeGenerator := VMPluginCodeGenerator new.
	codeGenerator addMethod: translation.
	"needed for some inlinings, i think. (see FilePluginTranslationTest>>testEqualsSlangOutputForPrimitiveFileWrite)"
"	codeGenerator vmClass: CoInterpreter.
	codeGenerator retainMethods: #().
	CoInterpreter initializePrimitiveTable.
	
	codeGenerator generateDeadCode: false.
	codeGenerator doInlining: true.
	"
	codeGenerator  inferTypesForImplicitlyTypedVariablesAndMethods.
		
	result := String streamContents: [ :stream |
		translation emitCCodeOn: stream generator: codeGenerator.
	].
	^ result
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
