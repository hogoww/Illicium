"
Ressource for VM Slang tests.
The CCodeGenerator is only created once, and needs to be reseted manually if needed.
"
Class {
	#name : #FullVMCCodeGeneratorRessource,
	#superclass : #TestResource,
	#instVars : [
		'codeGenerator'
	],
	#category : #'Illicium-Plugins-Tests-generators'
}

{ #category : #'generating machine code' }
FullVMCCodeGeneratorRessource >> codeGenerator [
	^ codeGenerator
]

{ #category : #accessing }
FullVMCCodeGeneratorRessource >> codeGenerator: anObject [
	codeGenerator := anObject
]

{ #category : #'generating machine code' }
FullVMCCodeGeneratorRessource >> newCodeGenerator [
	^ (VMMaker
		makerFor: StackInterpreter
		and: StackToRegisterMappingCogit
		with: #(COGMTVM false
				ObjectMemory Spur64BitMemoryManager
				MULTIPLEBYTECODESETS true
				bytecodeTableInitializer initializeBytecodeTableForSqueakV3PlusClosuresSistaV1Hybrid)
		to: ''
		platformDir: ''
		including: #()) buildCodeGeneratorForInterpreter 
				inferTypesForImplicitlyTypedVariablesAndMethods;
				prepareMethods;
				doInlining: true;
				yourself
		
]

{ #category : #'generating machine code' }
FullVMCCodeGeneratorRessource >> setUp [
	super setUp.
	codeGenerator := self newCodeGenerator
]
