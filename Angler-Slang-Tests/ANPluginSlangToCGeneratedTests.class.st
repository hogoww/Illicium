Class {
	#name : #ANPluginSlangToCGeneratedTests,
	#superclass : #ParametrizedTestCase,
	#instVars : [
		'translator',
		'testedClass'
	],
	#category : #'Angler-Slang-Tests'
}

{ #category : #generating }
ANPluginSlangToCGeneratedTests >> generateIllicium: aSelector [ 
	
	^ translator translateMethod: aSelector fromClass: testedClass
]

{ #category : #'generating machine code' }
ANPluginSlangToCGeneratedTests >> generateSlang: aSelector [ 
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
ANPluginSlangToCGeneratedTests >> prettyPrintIllicium: anAST [

	^ anAST definitions first prettyPrintUsing: translator prettyPrinterClass new.
]

{ #category : #accessing }
ANPluginSlangToCGeneratedTests >> testMethod: aSelector [
	| cu |
	cu := translator translateMethod: aSelector fromClass: testedClass.
	^ cu
]

{ #category : #accessing }
ANPluginSlangToCGeneratedTests >> testedClass [
	^ testedClass
]

{ #category : #accessing }
ANPluginSlangToCGeneratedTests >> testedClass: aClass [
	testedClass := aClass
]

{ #category : #accessing }
ANPluginSlangToCGeneratedTests >> translator [
	^ translator
]

{ #category : #accessing }
ANPluginSlangToCGeneratedTests >> translator: anObject [
	translator := anObject
]
