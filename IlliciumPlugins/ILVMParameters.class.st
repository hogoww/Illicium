Class {
	#name : #ILVMParameters,
	#superclass : #Object,
	#traits : 'ASTCVirtualMachineAPI',
	#classTraits : 'ASTCVirtualMachineAPI classTrait',
	#instVars : [
		'#parameters type: AnObsoleteASTCVMParameters'
	],
	#category : #IlliciumPlugins
}

{ #category : #adding }
ILVMParameters >> addParameterNamedValue [
	<primitiveToBe>
	<var:#key type:#String >
	<var:#value type:#Smallintger>
	| key value |
	key := interpreterProxy pop.
	value := interpreterProxy pop.
]
