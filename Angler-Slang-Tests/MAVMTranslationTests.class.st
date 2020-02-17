Class {
	#name : #MAVMTranslationTests,
	#superclass : #MASlangToCGeneratedTests,
	#category : #'Angler-Slang-Tests-generated-tests-base'
}

{ #category : #'generating machine code' }
MAVMTranslationTests >> codeGenerator [
	^ MAFullVMCCodeGeneratorRessource current codeGenerator
]

{ #category : #'generating machine code' }
MAVMTranslationTests >> generateSlang: aSelector [
	^ self codeGenerator cCodeForMethod: aSelector
	
	
]
