Class {
	#name : #ILSlangToCGeneratedTests,
	#superclass : #ParametrizedTestCase,
	#instVars : [
		'translator',
		'testedClass'
	],
	#category : #'Illicium-Plugins-Tests'
}

{ #category : #generating }
ILSlangToCGeneratedTests >> generateIllicium: aSelector [ 
	
	^ translator prettyPrintCodeForMethod: aSelector fromClass: testedClass
]

{ #category : #'generating machine code' }
ILSlangToCGeneratedTests >> generateSlang: aSelector [ 
	| method translation codeGenerator result |
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

{ #category : #accessing }
ILSlangToCGeneratedTests >> testMethod: aSelector [
	| cu |
	cu := translator translateMethod: aSelector fromClass: testedClass.
	^ cu
]

{ #category : #accessing }
ILSlangToCGeneratedTests >> testedClass [
	^ testedClass
]

{ #category : #accessing }
ILSlangToCGeneratedTests >> testedClass: aClass [
	testedClass := aClass
]

{ #category : #accessing }
ILSlangToCGeneratedTests >> translator [
	^ translator
]

{ #category : #accessing }
ILSlangToCGeneratedTests >> translator: anObject [
	translator := anObject
]
