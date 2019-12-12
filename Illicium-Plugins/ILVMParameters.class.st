Class {
	#name : #ILVMParameters,
	#superclass : #Object,
	#traits : 'ASTCVirtualMachineAPI',
	#classTraits : 'ASTCVirtualMachineAPI classTrait',
	#instVars : [
		'#parameters type: (Array of: SmallInteger)'
	],
	#category : #'Illicium-Plugins-simple'
}

{ #category : #adding }
ILVMParameters >> addParameterNamedValue [
	<primitiveToBe>
	| key value |
	key := (interpreterProxy pop) asString.
	value := (interpreterProxy pop) asInteger.
	(parameters do: [:anElement| anElement even ]).
	parameters at: key put: value.
]
