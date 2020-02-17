"
Ressource for VM Slang tests.
The CCodeGenerator is only created once, and needs to be reseted manually if needed.
"
Class {
	#name : #MAFullVMCCodeGeneratorRessource,
	#superclass : #TestResource,
	#instVars : [
		'codeGenerator'
	],
	#category : #'MAngler-Slang-Tests-generators'
}

{ #category : #initialization }
MAFullVMCCodeGeneratorRessource class >> resetInstance [
	<script>
	self reset
]

{ #category : #'generating machine code' }
MAFullVMCCodeGeneratorRessource >> codeGenerator [
	^ codeGenerator
]

{ #category : #accessing }
MAFullVMCCodeGeneratorRessource >> codeGenerator: anObject [
	codeGenerator := anObject
]

{ #category : #'generating machine code' }
MAFullVMCCodeGeneratorRessource >> newCodeGenerator [
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
MAFullVMCCodeGeneratorRessource >> setUp [
	super setUp.
	codeGenerator := self newCodeGenerator
]
