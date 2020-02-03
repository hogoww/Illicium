"
Ressource for VM Slang tests.
The CCodeGenerator is only created once, and needs to be reseted manually if needed.
"
Class {
	#name : #ANFullVMCCodeGeneratorRessource,
	#superclass : #TestResource,
	#instVars : [
		'codeGenerator'
	],
	#category : #'Angler-Slang-Tests-generators'
}

{ #category : #initialization }
ANFullVMCCodeGeneratorRessource class >> resetInstance [
	<script>
	self reset
]

{ #category : #'generating machine code' }
ANFullVMCCodeGeneratorRessource >> codeGenerator [
	^ codeGenerator
]

{ #category : #accessing }
ANFullVMCCodeGeneratorRessource >> codeGenerator: anObject [
	codeGenerator := anObject
]

{ #category : #'generating machine code' }
ANFullVMCCodeGeneratorRessource >> newCodeGenerator [
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
ANFullVMCCodeGeneratorRessource >> setUp [
	super setUp.
	codeGenerator := self newCodeGenerator
]
