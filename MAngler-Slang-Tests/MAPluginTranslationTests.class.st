Class {
	#name : #MAPluginTranslationTests,
	#superclass : #MASlangToCGeneratedTests,
	#category : #'MAngler-Slang-Tests-GeneratedTestsBase'
}

{ #category : #'generating machine code' }
MAPluginTranslationTests >> generateSlang: aSelector [ 
	| method translation codeGenerator |
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
	
	^ String streamContents: [ :stream |
		translation emitCCodeOn: stream generator: codeGenerator.
	].
]
