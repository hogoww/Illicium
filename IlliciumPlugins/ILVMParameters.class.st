Class {
	#name : #ILVMParameters,
	#superclass : #Object,
	#traits : 'ASTCVirtualMachineAPI',
	#classTraits : 'ASTCVirtualMachineAPI classTrait',
	#instVars : [
		'#parameters type: (Array of: (Association keyType: String valueType: SmallInteger))'
	],
	#category : #IlliciumPlugins
}

{ #category : #adding }
ILVMParameters >> addParameterNamedValue [
	<primitiveToBe>
	<var:#key type:#String >
	<var:#value type:#SmallInteger>
	| key value |
	key := (interpreterProxy popAndGet) asString.
	value := (interpreterProxy popAndGet) asInteger.
	(parameters do: [:anElement| key = anElement key ifTrue: [ ^ self primitiveFailed ] ]).
	parameters at: key put: value.
]
