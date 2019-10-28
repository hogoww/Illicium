Class {
	#name : #ILVMParameters,
	#superclass : #Object,
	#traits : 'ASTCVirtualMachineAPI',
	#classTraits : 'ASTCVirtualMachineAPI classTrait',
	#instVars : [
		'#parameters type: Array'
	],
	#category : #IlliciumPlugins
}

{ #category : #adding }
ILVMParameters >> addParameterNamedValue [
	<primitiveToBe>
	<var:#key type:#String >
	<var:#value type:#SmallInteger>
	| key value |
	key := (interpreterProxy pop:1) asString.
	value := (interpreterProxy pop:2) asInteger.
	(parameters do: [:anElement| key = anElement first ]) ifTrue: [ ^ self primitiveFailed ].
	parameters at: key put: value.
]
