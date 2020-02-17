Class {
	#name : #MAVMTranslationTests,
	#superclass : #MASlangToCGeneratedTests,
	#category : #'MAngler-Slang-Tests-generated-tests-base'
}

{ #category : #'generating machine code' }
MAVMTranslationTests >> codeGenerator [
	^ MAFullVMCCodeGeneratorRessource current codeGenerator
]

{ #category : #'generating machine code' }
MAVMTranslationTests >> generateSlang: aSelector [
	^ self codeGenerator cCodeForMethod: aSelector
	
	
]
