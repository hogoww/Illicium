Class {
	#name : #ANVMTranslationTests,
	#superclass : #ANSlangToCGeneratedTests,
	#category : #'Angler-Slang-Tests'
}

{ #category : #'generating machine code' }
ANVMTranslationTests >> codeGenerator [
	^ ANFullVMCCodeGeneratorRessource current codeGenerator
]

{ #category : #'generating machine code' }
ANVMTranslationTests >> generateSlang: aSelector [ 
	| codeGenerator |
	codeGenerator := self codeGenerator.
	^ codeGenerator cCodeForMethod: aSelector.
	
	
]
