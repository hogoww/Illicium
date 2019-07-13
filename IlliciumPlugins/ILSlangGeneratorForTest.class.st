Class {
	#name : #ILSlangGeneratorForTest,
	#superclass : #Object,
	#category : #IlliciumPlugins
}

{ #category : #'as yet unclassified' }
ILSlangGeneratorForTest >> generateCodeForSelector: selector inClass: aClass [

	| method translation codeGenerator |
	method := aClass >> selector.

	translation := method asTranslationMethodOfClass: TMethod.
	codeGenerator := CCodeGeneratorGlobalStructure new.
	codeGenerator generateDeadCode: true.
	codeGenerator addMethod: translation.
	codeGenerator inferTypesForImplicitlyTypedVariablesAndMethods.
	codeGenerator doInlining: true.

	^ String streamContents: [ :stream |
		translation emitCCodeOn: stream generator: codeGenerator ].
]
