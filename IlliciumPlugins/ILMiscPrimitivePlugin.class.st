Class {
	#name : #ILMiscPrimitivePlugin,
	#superclass : #Object,
	#traits : 'ASTCVirtualMachineAPI',
	#classTraits : 'ASTCVirtualMachineAPI classTrait',
	#classVars : [
		'PrimErrBadArgument'
	],
	#category : #IlliciumPlugins
}

{ #category : #'as yet unclassified' }
ILMiscPrimitivePlugin >> primitiveCompareString [
	"ByteString (class) compare: string1 with: string2 collated: order"
	<export: true>
	| len1 len2 order string1 string2 orderOop string1Oop string2Oop |
	
	<primitiveToBe>
	
	<var: 'order' type: #'unsigned char *'>
	<var: 'string1' type: #'unsigned char *'>
	<var: 'string2' type: #'unsigned char *'>
	orderOop := interpreterProxy stackValue: 0.
	string2Oop := interpreterProxy stackValue: 1.
	string1Oop := interpreterProxy stackValue: 2.
	((interpreterProxy isBytes: orderOop)
	and: [(interpreterProxy isBytes: string2Oop)
	and: [interpreterProxy isBytes: string1Oop]]) ifFalse:
		[^interpreterProxy primitiveFailFor: PrimErrBadArgument].
	order := interpreterProxy firstIndexableField: orderOop.
	(interpreterProxy sizeOfSTArrayFromCPrimitive: order) < 256 ifTrue:
		[^interpreterProxy primitiveFailFor: PrimErrBadArgument].
	string1 := interpreterProxy firstIndexableField: string1Oop.
	string2 := interpreterProxy firstIndexableField: string2Oop.
	len1 := interpreterProxy sizeOfSTArrayFromCPrimitive: string1.
	len2 := interpreterProxy sizeOfSTArrayFromCPrimitive: string2.
	0 to: (len1 min: len2) - 1 do: 
		[ :i | | c1 c2 |
		c1 := order at: (string1 at: i).
		c2 := order at: (string2 at: i).
		"c1 = c2"true  ifFalse:
			[^interpreterProxy methodReturnInteger: (c1 < c2 ifTrue: [1] ifFalse: [3])]].
	interpreterProxy methodReturnInteger:
		(len1 = len2 ifTrue: [2] ifFalse: [len1 < len2 ifTrue: [1] ifFalse: [3]])
]
