Class {
	#name : #ANPluginTranslationTests,
	#superclass : #ANSlangToCGeneratedTests,
	#category : #'Angler-Slang-Tests-generated-tests-base'
}

{ #category : #'generating machine code' }
ANPluginTranslationTests >> generateSlang: aSelector [ 
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
