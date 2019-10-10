Extension { #name : #MiscPrimitivePlugin }

{ #category : #'*ASTC-Translation-Tests' }
MiscPrimitivePlugin >> primitiveCompareStringFirstHalf [
	"ByteString (class) compare: string1 with: string2 collated: order"
	<export: true>
	| len1 len2 order string1 string2 orderOop string1Oop string2Oop |

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
]
