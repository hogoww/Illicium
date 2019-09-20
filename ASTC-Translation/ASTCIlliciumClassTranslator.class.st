Class {
	#name : #ASTCIlliciumClassTranslator,
	#superclass : #ASTCClassTranslator,
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #accessing }
ASTCIlliciumClassTranslator >> getPrimitiveToTranslate: aClass [
self halt.
	^ (aClass methods
		select: [ :aMethod | 
			| anAST |
			anAST := aMethod ast.
			anAST arguments isEmpty
				and: [ anAST pragmas
						noneSatisfy: [ :aPragma | aPragma selector = #doNotGenerate ] ] ])
		collect: #ast
]

{ #category : #typing }
ASTCIlliciumClassTranslator >> methodsToType [
	^ inferer types methodTypes
]

{ #category : #translation }
ASTCIlliciumClassTranslator >> preTranslationCheck: aClass [
	(aClass traitComposition
		includesTrait: ASTCVirtualMachineAPI)
		ifFalse: [ self error: 'can only translate plugins for now. They need to use the ASTCVirtualMachineAPI trait.' ].
]

{ #category : #accessing }
ASTCIlliciumClassTranslator >> preTypeChecking: aClass [
	inferer inferAST: (aClass >> #initializePlugin) ast
]
