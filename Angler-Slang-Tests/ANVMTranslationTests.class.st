Class {
	#name : #ANVMTranslationTests,
	#superclass : #ANSlangToCGeneratedTests,
	#category : #'Angler-Slang-Tests-generated-tests-base'
}

{ #category : #'generating machine code' }
ANVMTranslationTests >> codeGenerator [
	^ ANFullVMCCodeGeneratorRessource current codeGenerator
]

{ #category : #'generating machine code' }
ANVMTranslationTests >> generateSlang: aSelector [
	^ self codeGenerator cCodeForMethod: aSelector
	
	
]
