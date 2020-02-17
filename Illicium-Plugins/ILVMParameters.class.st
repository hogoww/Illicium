Class {
	#name : #ILVMParameters,
	#superclass : #Object,
	#traits : 'IlliciumVirtualMachineAPI',
	#classTraits : 'IlliciumVirtualMachineAPI classTrait',
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

{ #category : #initialization }
ILVMParameters >> initializePlugin [
	<doNotGenerate>
 	"moduleName"
	self setInterpreter: IlliciumInterpreterProxy new.
	"initplugin or something"
	^self
]
