Class {
	#name : #ASTCIlliciumClassTranslator,
	#superclass : #ASTCClassTranslator,
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #translation }
ASTCIlliciumClassTranslator >> isStatefulCode [
	^ false
]

{ #category : #translation }
ASTCIlliciumClassTranslator >> preTranslationConstraintCheck: aClass [
	(aClass traitComposition
		includesTrait: ASTCVirtualMachineAPI)
		ifFalse: [ self error: 'can only translate plugins for now. They need to use the ASTCVirtualMachineAPI trait.' ].
]

{ #category : #'translation-api' }
ASTCIlliciumClassTranslator >> prepareForTranslationFromSelector: aSelector fromClass: aClass [
	| methodsASTs methodsToTranslate |
	self preTranslationConstraintCheck: aClass.
	self preTypeInference: aClass.
	self callgraphTypeStartingFrom: {(aClass >> aSelector) ast}.
	methodsToTranslate := self methodsToTranslateASTs: aClass.
	methodsASTs := self annotateMethodsASTWithTypes: methodsToTranslate.
	^ methodsASTs
]

{ #category : #typing }
ASTCIlliciumClassTranslator >> typeAnnotatorClass [
	^ ASTCPhineasTypeAnnotator
]
