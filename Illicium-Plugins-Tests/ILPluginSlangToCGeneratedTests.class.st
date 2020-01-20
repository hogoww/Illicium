Class {
	#name : #ILPluginSlangToCGeneratedTests,
	#superclass : #ParametrizedTestCase,
	#instVars : [
		'translator',
		'testedClass'
	],
	#category : #'Illicium-Plugins-Tests'
}

{ #category : #generating }
ILPluginSlangToCGeneratedTests >> generateIllicium: aSelector [ 
	
	^ translator translateMethod: aSelector fromClass: testedClass
]

{ #category : #'generating machine code' }
ILPluginSlangToCGeneratedTests >> generateSlang: aSelector [ 
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
ILPluginSlangToCGeneratedTests >> prettyPrintIllicium: anAST [

	^ anAST definitions first prettyPrintUsing: translator prettyPrinterClass new.
]

{ #category : #accessing }
ILPluginSlangToCGeneratedTests >> testMethod: aSelector [
	| cu |
	cu := translator translateMethod: aSelector fromClass: testedClass.
	^ cu
]

{ #category : #accessing }
ILPluginSlangToCGeneratedTests >> testedClass [
	^ testedClass
]

{ #category : #accessing }
ILPluginSlangToCGeneratedTests >> testedClass: aClass [
	testedClass := aClass
]

{ #category : #accessing }
ILPluginSlangToCGeneratedTests >> translator [
	^ translator
]

{ #category : #accessing }
ILPluginSlangToCGeneratedTests >> translator: anObject [
	translator := anObject
]
