Class {
	#name : #ILVMParameters,
	#superclass : #Object,
	#traits : 'ASTCVirtualMachineAPI',
	#classTraits : 'ASTCVirtualMachineAPI classTrait',
	#instVars : [
		'#parameters type: (Array withItemsType: Association)'
	],
	#category : #IlliciumPlugins
}

{ #category : #adding }
ILVMParameters >> addParameterNamedValue [
	<primitiveToBe>
	<var:#key type:#String >
	<var:#value type:#Smallintger>
	| key value |
	key := interpreterProxy pop asString.
	value := interpreterProxy pop asInteger.
	(parameters exists: key) ifTrue: [ ^ self primitiveFailed ].
	parameters at: key put: value.
]
