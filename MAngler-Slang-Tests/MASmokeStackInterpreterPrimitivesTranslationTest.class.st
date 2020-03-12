Class {
	#name : #MASmokeStackInterpreterPrimitivesTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MASmokeStackInterpreterPrimitivesTranslationTest >> setUp [
	super setUp.
	testedClass := StackInterpreterPrimitives
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAccessModifierOfMethodHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #accessModifierOfMethodHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAccessModifierOfMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #accessModifierOfMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testActivateFailingPrimitiveMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #activateFailingPrimitiveMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testActivateNewClosureoutermethodnumArgsmayContextSwitchStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #activateNewClosure:outer:method:numArgs:mayContextSwitch:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testActivateNewFullClosuremethodnumArgsmayContextSwitchStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #activateNewFullClosure:method:numArgs:mayContextSwitch:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testActivateNewMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #activateNewMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAddFirstLinktoListStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #addFirstLink:toList:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAddNewMethodToNSCacheStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #addNewMethodToNSCache:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'plugin support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAddToExternalPrimitiveTableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #addToExternalPrimitiveTable:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAllAccessibleObjectsOkayStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allAccessibleObjectsOkay.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive ffi abi' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAllocateLowcodeCalloutStateStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allocateLowcodeCalloutState.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAllocateMemoryminimumimageFileheaderSizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #allocateMemory:minimum:imageFile:headerSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAlternateHeaderHasPrimitiveFlagStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #alternateHeaderHasPrimitiveFlag:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAsUnsignedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #asUnsigned:.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAssertClassOfisStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #assertClassOf:is:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAssertValidStackLimitsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #assertValidStackLimits:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBaseFrameReturnStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #baseFrameReturn.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBereaveAllMarriedContextsForSnapshotFlushingExternalPrimitivesIfStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #bereaveAllMarriedContextsForSnapshotFlushingExternalPrimitivesIf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBinaryAtInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #binaryAtInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBinaryCompInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #binaryCompInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBinaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #binaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBinaryNewInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #binaryNewInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBinarySmiArithmeticInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #binarySmiArithmeticInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBinarySmiBitInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #binarySmiBitInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBinarySmiCompInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #binarySmiCompInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatFalseSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatFalseSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatFalseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatFalse.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatFalseVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatFalseV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatSistaV1:.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatTrueSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatTrueSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatTrueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatTrue.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatTrueVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatTrueV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatV4:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimAddStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimAdd.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimAtEndStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimAtEnd.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimAtPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimAtPut.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimAt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimBitAndStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimBitAnd.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimBitOrStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimBitOr.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimBitShiftStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimBitShift.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimClassStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimClass.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimDivStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimDiv.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimDivideStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimDivide.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimDo.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimEqualSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimEqualSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimEqualVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimEqualV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimGreaterOrEqualSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimGreaterOrEqualSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimGreaterOrEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimGreaterOrEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimGreaterOrEqualVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimGreaterOrEqualV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimGreaterThanSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimGreaterThanSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimGreaterThanStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimGreaterThan.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimGreaterThanVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimGreaterThanV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimIdenticalSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimIdenticalSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimIdenticalStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimIdentical.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimIdenticalVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimIdenticalV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimLessOrEqualSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimLessOrEqualSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimLessOrEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimLessOrEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimLessOrEqualVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimLessOrEqualV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimLessThanSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimLessThanSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimLessThanStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimLessThan.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimLessThanVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimLessThanV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimMakePointStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimMakePoint.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimModStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimMod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimMultiplyStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimMultiply.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNewStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNew.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNewWithArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNewWithArg.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNextPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNextPut.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNext.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNotEqualSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNotEqualSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNotEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNotEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNotEqualVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNotEqualV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNotIdenticalSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNotIdenticalSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNotIdenticalStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNotIdentical.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNotIdenticalVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNotIdenticalV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimPointXStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimPointX.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimPointYStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimPointY.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimSpecialSelectorStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimSpecialSelector24.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimSubtractStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimSubtract.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimValue.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimValueWithArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimValueWithArg.
	self prettyPrintIllicium: illiAST
]

{ #category : #'plugin primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCallExternalPrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #callExternalPrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCallMappedInlinedPrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #callMappedInlinedPrimitive.
	self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCallPrimitiveBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #callPrimitiveBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCannotAssigntowithIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #cannotAssign:to:withIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCapturePendingFinalizationSignalsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #capturePendingFinalizationSignals.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCheckAssumedCompactClassesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkAssumedCompactClasses.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCheckCogCompiledCodeCompactionCalledForStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #checkCogCompiledCodeCompactionCalledFor.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCheckForAndFollowForwardedPrimitiveStateStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #checkForAndFollowForwardedPrimitiveState.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCheckForLongRunningPrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkForLongRunningPrimitive.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCheckForStackOverflowStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkForStackOverflow.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCheckLogIntegrityStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkLogIntegrity.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCloneOSErrorObjnumSlotsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #cloneOSErrorObj:numSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testClosureInnumArgsinstructionPointercopiedValuesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #closureIn:numArgs:instructionPointer:copiedValues:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testClosureInnumArgsinstructionPointernumCopiedValuesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #closureIn:numArgs:instructionPointer:numCopiedValues:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCodeGeneratorToComputeAccessorDepthStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #codeGeneratorToComputeAccessorDepth.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonAtPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonAtPut:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonAt:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonCallerReturnStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonCallerReturn.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonReturnStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonReturn.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonSendDynamicSuperStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonSendDynamicSuper.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonSendImplicitReceiverStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonSendImplicitReceiver.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonSendOrdinaryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonSendOrdinary.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonSendOuterStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonSendOuter:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonVariableatcacheIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonVariable:at:cacheIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonVariableatputcacheIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonVariable:at:put:cacheIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testComputeStackZoneSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #computeStackZoneSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testContextInstructionPointerframeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #contextInstructionPointer:frame:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testConvertFloatsToPlatformOrderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #convertFloatsToPlatformOrder.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testDefaultNativeStackFrameSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #defaultNativeStackFrameSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testDirectedSuperclassSendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #directedSuperclassSend.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testDoubleExtendedDoAnythingBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #doubleExtendedDoAnythingBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testDumpImageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #dumpImage:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testDuplicateTopBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #duplicateTopBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testElementsPerPrintOopLineStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #elementsPerPrintOopLine.
	self prettyPrintIllicium: illiAST
]

{ #category : #'newspeak bytecode support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEnclosingObjectAtwithObjectwithMixinStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #enclosingObjectAt:withObject:withMixin:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEncodeFrameFieldHasContextisBlocknumArgsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #encodeFrameFieldHasContext:isBlock:numArgs:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEnsureContextHasBytecodePCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ensureContextHasBytecodePC:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEnsureContextIsExecutionSafeAfterAssignToStackPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #ensureContextIsExecutionSafeAfterAssignToStackPointer:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEnsureFrameIsMarriedSPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ensureFrameIsMarried:SP:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEnsureReceiverUnforwardedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ensureReceiverUnforwarded.
	self prettyPrintIllicium: illiAST
]

{ #category : #'callback support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEnterSmalltalkExecutiveFromCallbackStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #enterSmalltalkExecutiveFromCallback.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEstablishFrameForContextToReturnToStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #establishFrameForContextToReturnTo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExecuteNewMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #executeNewMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'translation support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExpandCasesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #expandCases.
	self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtABytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extABytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtBBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extBBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtJumpIfFalseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extJumpIfFalse.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtJumpIfTrueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extJumpIfTrue.
	self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtNopBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extNopBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushCharacterBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushCharacterBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushClosureBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushClosureBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushFullClosureBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushFullClosureBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushIntegerBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushIntegerBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushLiteralBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushLiteralBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushLiteralVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushLiteralVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushPseudoVariableOrOuterBytecodeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #extPushPseudoVariableOrOuterBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushPseudoVariableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushPseudoVariable.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushReceiverVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushReceiverVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtReturnTopFromBlockStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extReturnTopFromBlock.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtSendAbsentDynamicSuperBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extSendAbsentDynamicSuperBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtSendAbsentImplicitBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extSendAbsentImplicitBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtSendAbsentOuterBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extSendAbsentOuterBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtSendAbsentSelfBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extSendAbsentSelfBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtSendBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extSendBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtSendSuperBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extSendSuperBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtStoreAndPopLiteralVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #extStoreAndPopLiteralVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtStoreAndPopReceiverVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #extStoreAndPopReceiverVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtStoreLiteralVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extStoreLiteralVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtStoreReceiverVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extStoreReceiverVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtUnconditionalJumpStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extUnconditionalJump.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtendedPushBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extendedPushBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtendedStoreAndPopBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extendedStoreAndPopBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtendedStoreBytecodePopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extendedStoreBytecodePop:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtendedStoreBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extendedStoreBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExternalSetStackPageAndPointersForSuspendedContextOfProcessStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #externalSetStackPageAndPointersForSuspendedContextOfProcess:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExternalWriteBackHeadFramePointersStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #externalWriteBackHeadFramePointers.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExternalizeFPandSPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #externalizeFPandSP.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExternalizeIPandSPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #externalizeIPandSP.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter shell' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFetchByteStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fetchByte.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter shell' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFetchNextBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fetchNextBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFieldsInFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fieldsInFrame:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'newspeak bytecode support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFindApplicationOfTargetMixinstartingAtBehaviorStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #findApplicationOfTargetMixin:startingAtBehavior:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFindClassForSelectorlookupClassdoStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #findClassForSelector:lookupClass:do:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'handler search' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFindMethodWithPrimitiveFromFPUpToContextStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #findMethodWithPrimitive:FromFP:UpToContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFindSPOrNilOfonstartingFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #findSPOrNilOf:on:startingFrom:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFindSelectorAndClassForMethodlookupClassdoStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #findSelectorAndClassForMethod:lookupClass:do:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFindUnwindThroughContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #findUnwindThroughContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #finalization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFireEphemeronStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fireEphemeron:.
	self prettyPrintIllicium: illiAST
]

{ #category : #finalization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFireFinalizationStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fireFinalization:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFirstByteIndexOfMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #firstByteIndexOfMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFirstBytecodeOfAlternateHeadermethodStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #firstBytecodeOfAlternateHeader:method:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFloatExponentBitsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #floatExponentBits.
	self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushAtCacheStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushAtCache.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushBecommedClassesInMethodCacheStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushBecommedClassesInMethodCache.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushBecommedClassesInMethodZoneStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushBecommedClassesInMethodZone.
	self prettyPrintIllicium: illiAST
]

{ #category : #'plugin primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushExternalPrimitiveTableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushExternalPrimitiveTable.
	self prettyPrintIllicium: illiAST
]

{ #category : #'plugin primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushExternalPrimitivesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushExternalPrimitives.
	self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushMethodCacheForMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushMethodCacheForMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushMethodCacheFromtoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushMethodCacheFrom:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushMethodCacheStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushMethodCache.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowForwardedFieldsInCurrentMethodStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #followForwardedFieldsInCurrentMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowForwardedMethodsInMethodCacheStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #followForwardedMethodsInMethodCache.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowForwardedMethodsInMethodZoneStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followForwardedMethodsInMethodZone.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowForwardingPointersInProfileStateStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #followForwardingPointersInProfileState.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowForwardingPointersInSchedulerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #followForwardingPointersInScheduler.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowForwardingPointersInSpecialObjectsArrayStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #followForwardingPointersInSpecialObjectsArray.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowLiteralofMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followLiteral:ofMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowSemaphoreInatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followSemaphoreIn:at:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameCallerContextputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameCallerContext:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameCallerFPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameCallerFP:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameCallerSPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameCallerSP:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameCallerSavedIPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameCallerSavedIP:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameCallerStackPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameCallerStackPointer:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameHasNativeFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameHasNativeFrame:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameIsMarkedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameIsMarked:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameLastArgumentOffsetStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameLastArgumentOffset.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFramePointerOfNativeArgumentinStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #framePointerOfNativeArgument:in:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFramePointerOfNativeLocalinStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #framePointerOfNativeLocal:in:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameReceiverLocationStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameReceiverLocation:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameStackedReceiverOffsetNumArgsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameStackedReceiverOffsetNumArgs:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameStackedReceivernumArgsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameStackedReceiver:numArgs:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFreeUnmarkedMachineCodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeUnmarkedMachineCode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFullClosureInnumArgsnumCopiedValuescompiledBlockStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #fullClosureIn:numArgs:numCopiedValues:compiledBlock:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'plugin primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFunctionForPrimitiveCalloutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #functionForPrimitiveCallout.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetCodeCompactionCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getCodeCompactionCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetCodeCompactionMSecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getCodeCompactionMSecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetCogCodeSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getCogCodeSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetCogMethodCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getCogMethodCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetCogVMFeatureFlagsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getCogVMFeatureFlags.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetCogVMFlagsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getCogVMFlags.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetGCModeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getGCMode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetImageHeaderFlagsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getImageHeaderFlags.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetLongFromFileswapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getLongFromFile:swap:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetShortFromFileswapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getShortFromFile:swap:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testHandleSpecialSelectorSendFaultForStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #handleSpecialSelectorSendFaultFor:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testHighestPriorityProcessStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #highestPriorityProcess.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIfAppropriateCompileToNativeCodeselectorStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #ifAppropriateCompileToNativeCode:selector:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIfBackwardsCheckForEventsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ifBackwardsCheckForEvents:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIfSoAssertValidIPAssignofContextwithStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #ifSoAssertValidIPAssign:ofContext:with:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIframeInstructionPointerForIndexmethodStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #iframeInstructionPointerForIndex:method:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIframeIsBlockActivationStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #iframeIsBlockActivation:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testImageFormatCompatibilityVersionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #imageFormatCompatibilityVersion.
	self prettyPrintIllicium: illiAST
]

{ #category : #'simulation support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitExtensionsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initExtensions.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitPrimCallStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initPrimCall.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitStackPageGCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initStackPageGC.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitStackPagesAndInterpretStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initStackPagesAndInterpret.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitStackPagesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initStackPages.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitialCleanupStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initialCleanup.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitialIPForHeadermethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initialIPForHeader:method:.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitializeExtraClassInstVarIndicesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeExtraClassInstVarIndices.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitializeInterpreterStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeInterpreter:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitializePageTraceToInvalidStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializePageTraceToInvalid:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInlineLookupInMethodCacheSelclassTagStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #inlineLookupInMethodCacheSel:classTag:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInlineLookupInNSMethodCacheSelclassTagmethodlookupRuleStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #inlineLookupInNSMethodCacheSel:classTag:method:lookupRule:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInstVarofContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #instVar:ofContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInstVarofContextputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #instVar:ofContext:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInstallinAtCacheatstringStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #install:inAtCache:at:string:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalAboutToReturnthroughStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalAboutToReturn:through:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalActivateNewMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalActivateNewMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalCannotReturnStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalCannotReturn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalExecuteNewMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalExecuteNewMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalFindNewMethodDynamicSuperStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalFindNewMethodDynamicSuper.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalFindNewMethodImplicitReceiverStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #internalFindNewMethodImplicitReceiver.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalFindNewMethodOrdinaryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalFindNewMethodOrdinary.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalFindNewMethodOuterStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalFindNewMethodOuter:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalMustBeBooleanStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalMustBeBoolean.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPopStackFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPopStackFloat64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPopStackIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPopStackInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPopStackNativeSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPopStackNativeSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPopStackPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPopStackPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPopStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPopStack.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPop:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPopthenPushStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPop:thenPush:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPushFloat32:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPushInt32:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPushPointer:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushShadowCallStackFloatStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #internalPushShadowCallStackFloat64:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushShadowCallStackIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPushShadowCallStackInt64:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushShadowCallStackPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #internalPushShadowCallStackPointer:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushShadowCallStackSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPushShadowCallStackSpace:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushShadowCallStackStructuresizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #internalPushShadowCallStackStructure:size:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPush:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalQuickPrimitiveResponseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalQuickPrimitiveResponse.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalStackTopPutIntegerObjectOfStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #internalStackTopPutIntegerObjectOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalStackTopPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalStackTopPut:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalStackTopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalStackTop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalStackValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalStackValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalStackValueputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalStackValue:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalizeIPandSPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalizeIPandSP.
	self prettyPrintIllicium: illiAST
]

{ #category : #'I/O primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIoBeDisplaywidthheightdepthStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ioBeDisplay:width:height:depth:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsCogStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isCog.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsDirectAlienStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isDirectAlien:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsEmptyListStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isEmptyList:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsExternalPrimitiveCallStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isExternalPrimitiveCall:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsFiniteStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isFinite:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsIndirectAlienStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isIndirectAlien:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsInstanceOfClassArrayStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isInstanceOfClassArray:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsInstanceOfClassBlockClosureStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isInstanceOfClassBlockClosure:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsInstanceOfClassByteStringStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isInstanceOfClassByteString:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsMachineCodeFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isMachineCodeFrame:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsNullExternalPrimitiveCallStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isNullExternalPrimitiveCall:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsOptimizedMethodHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isOptimizedMethodHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsOptimizedMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isOptimizedMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsPointerAlienStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isPointerAlien:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsPrivateMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isPrivateMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsProtectedMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isProtectedMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsPublicMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isPublicMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsSignedIntegerinRangeForBitsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isSignedInteger:inRangeForBits:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsStillMarriedContextDuringGCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isStillMarriedContextDuringGC:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsStillMarriedContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isStillMarriedContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsVanillaBlockClosureStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isVanillaBlockClosure:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsmethodAssignmentToContextWithMachineCodePCStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #is:methodAssignmentToContextWithMachineCodePC:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testJumpBinaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #jumpBinaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testJumpStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #jump:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testJumpTrinaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #jumpTrinaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testJumpUnaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #jumpUnaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testJumplfFalseByStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #jumplfFalseBy:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testJumplfTrueByStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #jumplfTrueBy:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testJustActivateNewMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #justActivateNewMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLiteralCountOfAlternateHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #literalCountOfAlternateHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLiteralCountOfOriginalHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #literalCountOfOriginalHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLiteralStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #literal:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLiteralofMethodputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #literal:ofMethod:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLongJumpIfFalseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #longJumpIfFalse.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLongJumpIfTrueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #longJumpIfTrue.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLongPushTemporaryVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #longPushTemporaryVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLongStoreAndPopTemporaryVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #longStoreAndPopTemporaryVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLongStoreTemporaryVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #longStoreTemporaryVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLongUnconditionalJumpStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #longUnconditionalJump.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupBreakForStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupBreakFor:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupDynamicSuperSendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupDynamicSuperSend.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupImplicitReceiverSendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupImplicitReceiverSend.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupLexicalfromruleStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupLexical:from:rule:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupMNUInClassStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupMNUInClass:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupMNUStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupMNU.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupMethodForInDictionaryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupMethodFor:InDictionary:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupMethodInDictionaryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupMethodInDictionary:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupOrdinarySendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupOrdinarySend.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupOuterSendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupOuterSend:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupProtectedstartingAtruleStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupProtected:startingAt:rule:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive dispatch generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodeBinaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodeBinaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive ffi abi' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodeCalloutStatecallFunctionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodeCalloutState:callFunction:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive ffi abi' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodeDoCalloutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodeDoCallout:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive dispatch generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodeNullaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodeNullaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveAddStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveAdd32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveAllocaStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveAlloca32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveAndStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveAnd64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveArithmeticRightShiftStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveArithmeticRightShift64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveBeginCallStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveBeginCall.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveBooleanToOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveBoolean64ToOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveByteSizeOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveByteSizeOf.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCallArgumentFloatStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveCallArgumentFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCallArgumentIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveCallArgumentInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCallArgumentPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveCallArgumentPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCallArgumentSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveCallArgumentSpace.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCallArgumentStructureStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveCallArgumentStructure.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCallInstructionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveCallInstruction.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCallPhysicalStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveCallPhysical.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCheckSessionIdentifierStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveCheckSessionIdentifier.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCompareAndSwapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveCompareAndSwap32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveDivStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveDiv32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveDuplicateFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveDuplicateFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveDuplicateIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveDuplicateInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveDuplicatePointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveDuplicatePointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveEffectiveAddressStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveEffectiveAddress32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveEndCallNoCleanupStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveEndCallNoCleanup.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveEndCallStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveEndCall.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFirstFieldPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFirstFieldPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFirstIndexableFieldPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveFirstIndexableFieldPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatAddStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32Add.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatDivStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32Div.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Equal.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatGreatEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64GreatEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatGreatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Great.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatLessEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32LessEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatLessStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Less.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatMulStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32Mul.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatNegStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Neg.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatNotEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64NotEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatSqrtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Sqrt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatSubStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32Sub.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatToFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64ToFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatToIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64ToInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatToOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32ToOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatToUIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64ToUInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFreeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFree.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveInstantiateIndexableOopStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveInstantiateIndexableOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveInstantiateOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInstantiateOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64Equal.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntGreatEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64GreatEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntGreatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt32Great.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntLessEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt32LessEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntLessStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64Less.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntNotEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64NotEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntToFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64ToFloat64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntToOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt32ToOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntToPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64ToPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIsBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveIsBytes.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIsFloatObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveIsFloatObject.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIsIndexableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveIsIndexable.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIsIntegerObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveIsIntegerObject.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIsPointersStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveIsPointers.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIsWordsOrBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveIsWordsOrBytes.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIsWordsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveIsWords.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLeftShiftStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLeftShift64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadArgumentAddressStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadArgumentAddress.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadArgumentFloatStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadArgumentFloat64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadArgumentIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadArgumentInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadArgumentPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadArgumentPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadArgumentUIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadArgumentUInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadFloatFromMemoryStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadFloat32FromMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadIntFromMemoryStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadInt32FromMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadLocalAddressStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalAddress.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadLocalFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalFloat64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadLocalIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalInt8.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadLocalPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadLocalUIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalUInt64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadObjectAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadObjectAt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadObjectFieldStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadObjectField.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadPointerFromMemoryStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadPointerFromMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadUIntFromMemoryStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadUInt32FromMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLocalFrameSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLocalFrameSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLockRegistersStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLockRegisters.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLockVMStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLockVM.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveMallocStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveMalloc32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveMemcpyFixedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveMemcpyFixed.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveMemcpyStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveMemcpy32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveMoveFloatToPhysicalStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveMoveFloat32ToPhysical.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveMoveIntToPhysicalStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveMoveInt64ToPhysical.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveMovePointerToPhysicalStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveMovePointerToPhysical.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveMulStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveMul64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveNegStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveNeg32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveNotStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveNot32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOopEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopNotEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOopNotEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopSmallIntegerToIntStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveOopSmallIntegerToInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopToBooleanStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToBoolean64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopToFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopToIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopToPointerReinterpretStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveOopToPointerReinterpret.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopToPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopToUIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToUInt64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOrStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOr64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePerformCalloutIndirectStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePerformCalloutIndirect.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePerformCalloutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePerformCallout.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePinStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePin.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePlaftormCodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePlaftormCode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePointerAddConstantOffsetStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePointerAddConstantOffset.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePointerAddOffsetStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePointerAddOffset64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePointerEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePointerEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePointerNotEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePointerNotEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePointerToIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePointerToInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePointerToOopReinterprerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePointerToOopReinterprer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePointerToOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePointerToOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePopFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePopFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePopIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePopInt64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePopMultipleNativeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePopMultipleNative.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePopPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePopPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushCalloutResultFloatStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushCalloutResultFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushCalloutResultIntStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushCalloutResultInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushCalloutResultPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushCalloutResultPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushConstantUIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePushConstantUInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushNullPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePushNullPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushOneFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePushOneFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushOneStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePushOne64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushPhysicalFloatStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushPhysicalFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushPhysicalIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePushPhysicalInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushPhysicalPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushPhysicalPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushSessionIdentifierStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushSessionIdentifier.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushZeroFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePushZeroFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushZeroStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePushZero32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveRemStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveRem32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveRightShiftStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveRightShift32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveSignExtendFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveSignExtend64From32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveSmallIntToOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveSmallInt32ToOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStoreFloatToMemoryStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveStoreFloat32ToMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStoreIntToMemoryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreInt8ToMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStoreLocalFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreLocalFloat64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStoreLocalIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreLocalInt16.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStoreLocalPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreLocalPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStoreObjectFieldAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreObjectFieldAt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStoreObjectFieldStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreObjectField.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStorePointerToMemoryStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveStorePointerToMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveSubStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveSub32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveTruncateToStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveTruncate64To8.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUdivStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUdiv32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUintGreatEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUint64GreatEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUintGreatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUint32Great.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUintLessEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUint64LessEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUintLessStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUint32Less.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUintToFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUint32ToFloat64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUintToOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUint32ToOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUmulStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUmul32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUnlockRegistersStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUnlockRegisters.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUnlockVMStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUnlockVM.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUnpinStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUnpin.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUremStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUrem64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveXorStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveXor64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveZeroExtendFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveZeroExtend64From16.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodeStoreLocalIntWorkaroundinspStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodeStoreLocalInt64Workaround:in:sp:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive dispatch generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodeTrinaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodeTrinaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive dispatch generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodeUnaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodeUnaryInlinePrimitive4:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodememcpyStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcode_mem:cp:y:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMapMachineCodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mapMachineCode:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMapProfileStateStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mapProfileState.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMapTraceLogsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mapTraceLogs.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMapVMRegistersStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mapVMRegisters.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMappedBackjumpAlwaysInterruptStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mappedBackjumpAlwaysInterrupt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMappedDirectCallStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mappedDirectCall.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMappedEnsureEnoughWordsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mappedEnsureEnoughWords.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMappedImmcheckDataAtPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mappedImmcheckDataAtPut:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMappedImmcheckMaybeContextStoreCheckPointerAtPutStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #mappedImmcheckMaybeContextStoreCheckPointerAtPut.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMappedImmcheckStoreCheckPointerAtPutStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #mappedImmcheckStoreCheckPointerAtPut.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkAndTraceAndMaybeFreeStackPagesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #markAndTraceAndMaybeFreeStackPages:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkAndTraceInterpreterOopsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndTraceInterpreterOops:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkAndTraceMachineCodeOfMarkedMethodsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #markAndTraceMachineCodeOfMarkedMethods.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkAndTraceOrFreeMachineCodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndTraceOrFreeMachineCode:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkAndTracePrimTraceLogStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndTracePrimTraceLog.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkAndTraceTraceLogStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndTraceTraceLog.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkContextAsDeadStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markContextAsDead:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markFrame:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarryFrameSPcopyTempsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #marryFrame:SP:copyTemps:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeFailForLastObjectOverwriteStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maybeFailForLastObjectOverwrite.
	self prettyPrintIllicium: illiAST
]

{ #category : #'cog jit support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeFixClonedCompiledMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maybeFixClonedCompiledMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeFlagMethodAsInterpretedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maybeFlagMethodAsInterpreted:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeInlinePositiveBitIntegerForStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #maybeInlinePositive32BitIntegerFor:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeInlinePositiveBitValueOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maybeInlinePositive32BitValueOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeRetryPrimitiveOnFailureStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maybeRetryPrimitiveOnFailure.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeReturnToMachineCodeFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maybeReturnToMachineCodeFrame.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeTraceStackOverflowStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maybeTraceStackOverflow.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMethodHeaderHasPrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #methodHeaderHasPrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMframeCogMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mframeCogMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMicrosecondsToMillisecondsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #microsecondsToMilliseconds:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMnuBreakpointreceiverStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mnuBreakpoint:receiver:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNacFetchStackPointerOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nacFetchStackPointerOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativeFramePointerInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativeFramePointerIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativeFramePointerInputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativeFramePointerIn:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativeFrameSignalObjectInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativeFrameSignalObjectIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativeFrameSignalObjectInputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativeFrameSignalObjectIn:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativePreviousStackPointerInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativePreviousStackPointerIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativePreviousStackPointerInputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativePreviousStackPointerIn:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativeStackPointerInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativeStackPointerIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativeStackPointerInputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativeStackPointerIn:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativeStackSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativeStackSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNoAssertHeaderOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #noAssertHeaderOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNoFixupSuperclassOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #noFixupSuperclassOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNoInlineSignedBitIntegerGutsForStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #noInlineSigned32BitIntegerGutsFor:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNoInlineSignedBitValueGutsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #noInlineSigned32BitValueGutsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNormalSendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #normalSend.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNullaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nullaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testOkayFieldsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #okayFields:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testOkayInterpreterObjectsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #okayInterpreterObjects.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPathTousingfollowWeakStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pathTo:using:followWeak:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPopAndPushIntegerIfOKStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pop2AndPushIntegerIfOK:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPopFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #popFloat.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPopPosBitIntegerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #popPos32BitInteger.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPopStackBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #popStackBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPopthenPushBoolStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pop:thenPushBool:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPopthenPushFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pop:thenPushFloat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPopthenPushIntegerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pop:thenPushInteger:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPostBecomeActionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #postBecomeAction:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPostGCActionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #postGCAction:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPreBecomeActionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #preBecomeAction.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPreGCActionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #preGCAction:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveAccessorDepthForExternalPrimitiveMethodStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #primitiveAccessorDepthForExternalPrimitiveMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sound primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveConstantFillSpurStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveConstantFillSpur.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sound primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveConstantFillVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveConstantFillV3.
	self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatAddtoArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatAdd:toArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatDividebyArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatDivide:byArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatEqualtoArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatEqual:toArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatGreaterOrEqualtoArgStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #primitiveFloatGreaterOrEqual:toArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatGreaterthanArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatGreater:thanArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatLessOrEqualtoArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatLessOrEqual:toArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatLessthanArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatLess:thanArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatMultiplybyArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatMultiply:byArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatSubtractfromArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatSubtract:fromArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'I/O primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveForceTenureStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveForceTenure.
	self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveIsRootStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveIsRoot.
	self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveIsYoungStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveIsYoung.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveMarkHandlerMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveMarkHandlerMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveMarkUnwindMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveMarkUnwindMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveObjectperformwithArgumentslookedUpInStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #primitiveObject:perform:withArguments:lookedUpIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveRootTableAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveRootTableAt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveRootTableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveRootTable.
	self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetGCBiasToGrowGCLimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSetGCBiasToGrowGCLimit.
	self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetGCBiasToGrowStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSetGCBiasToGrow.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetIdentityHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSetIdentityHash.
	self prettyPrintIllicium: illiAST
]

{ #category : #'system control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetVMParameterargStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSetVMParameter:arg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSmallFloatHash.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSpurIntegerAtPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSpurIntegerAtPut.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSpurIntegerAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSpurIntegerAt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSpurStringReplaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSpurStringReplace.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveStartVMProfilingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveStartVMProfiling.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveStopVMProfilingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveStopVMProfiling.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveTestShortenIndexableSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveTestShortenIndexableSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveVIntegerAtPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveV3IntegerAtPut.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveVIntegerAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveV3IntegerAt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveVMProfileInfoIntoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveVMProfileInfoInto.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveVStringReplaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveV3StringReplace.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintAtCacheStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printAtCache.
	self prettyPrintIllicium: illiAST
]

{ #category : #printing }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintDecodeMethodHeaderOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printDecodeMethodHeaderOop:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintFrameAndCallersSPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printFrameAndCallers:SP:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintFrameOopindexatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printFrameOop:index:at:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintHeadFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printHeadFrame.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintHexPtrStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printHexPtr:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintHexPtrnpStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printHexPtrnp:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintHexnpnpStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printHexnpnp:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintMethodFieldForPrintContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printMethodFieldForPrintContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintMethodHeaderOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printMethodHeaderOop:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintOopShortInnerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printOopShortInner:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintPageHeadFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printPageHeadFrame.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintSendsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printSends.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintStackPageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printStackPage:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintUnbalancedStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printUnbalancedStack:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushActiveContextBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushActiveContextBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushClosureCopyCopiedValuesBytecodeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #pushClosureCopyCopiedValuesBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushClosureNumArgscopiedValuesblockSizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #pushClosureNumArgs:copiedValues:blockSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushConstantFalseBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushConstantFalseBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushConstantMinusOneBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushConstantMinusOneBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushConstantNilBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushConstantNilBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushConstantOneBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushConstantOneBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushConstantTrueBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushConstantTrueBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushConstantTwoBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushConstantTwoBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushConstantZeroBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushConstantZeroBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushEnclosingObjectBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushEnclosingObjectBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushFullClosureNumArgscopiedValuescompiledBlockreceiverIsOnStackignoreContextStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #pushFullClosureNumArgs:copiedValues:compiledBlock:receiverIsOnStack:ignoreContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushLiteralConstantBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushLiteralConstantBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushLiteralConstantStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushLiteralConstant:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushLiteralVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushLiteralVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushLiteralVariableCasesBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushLiteralVariable16CasesBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushLiteralVariableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushLiteralVariable:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushMaybeContextReceiverVariableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushMaybeContextReceiverVariable:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushMaybeContextreceiverVariableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushMaybeContext:receiverVariable:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushNewArrayBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushNewArrayBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushReceiverBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushReceiverBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushReceiverVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushReceiverVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushReceiverVariableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushReceiverVariable:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushRemoteTempLongBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushRemoteTempLongBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushRemoteTempinVectorAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushRemoteTemp:inVectorAt:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushTemporaryVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushTemporaryVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushTemporaryVariableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushTemporaryVariable:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testQuaternaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #quaternaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testQuinaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #quinaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic integer primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testQuotientStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #quot:ient:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'string primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testRawComparelengthwithlengthaccessBlockStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #rawCompare:length:with:length:accessBlock:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReceiverStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #receiver.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive ffi abi' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReloadLowcodeStateAfterCalloutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #reloadLowcodeStateAfterCallout.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testRemapCallbackStateStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #remapCallbackState.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testRemoveProcessfromListStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #removeProcess:fromList:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testRespondToSistaTrapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #respondToSistaTrap.
	self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testRespondToUnknownBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #respondToUnknownBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'callback support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testRestoreCStackStateForCallbackContextStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #restoreCStackStateForCallbackContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testRestoreStackLimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #restoreStackLimit.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReturnFalseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #returnFalse.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReturnNilFromBlockStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #returnNilFromBlock.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReturnNilStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #returnNil.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReturnReceiverStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #returnReceiver.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReturnTopFromBlockStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #returnTopFromBlock.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReturnTopFromMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #returnTopFromMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReturnTrueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #returnTrue.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReverseBytesInImageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #reverseBytesInImage.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSafeFindFrameAboveonstartingFromStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #safeFindFrameAbove:on:startingFrom:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSaneMethodClassAssociationInnumLiteralsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #saneMethodClassAssociationIn:numLiterals:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'callback support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSaveCStackStateForCallbackContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #saveCStackStateForCallbackContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSchedulerPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #schedulerPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSecondExtendedSendBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #secondExtendedSendBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSelectorOfContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #selectorOfContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSendAbsentImplicitArgsBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sendAbsentImplicit0ArgsBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSendBreakpointreceiverStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sendBreakpoint:receiver:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSendLiteralSelectorArgBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sendLiteralSelector1ArgBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSendLiteralSelectorArgsBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sendLiteralSelector2ArgsBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetCheckAllocFillerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setCheckAllocFiller:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetCogVMFlagsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setCogVMFlags:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetDesiredCogCodeSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setDesiredCogCodeSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetFrameContexttoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setFrameContext:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetFrameHasContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setFrameHasContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetFrameHasNativeFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setFrameHasNativeFrame:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetFrameHasNotNativeFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setFrameHasNotNativeFrame:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetGCModeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setGCMode:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetHeadFPandSPinPageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setHeadFP:andSP:inPage:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetImageHeaderFlagsFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setImageHeaderFlagsFrom:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetMaxExtSemSizeToStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setMaxExtSemSizeTo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetMethodClassAssociationOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setMethodClassAssociationOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetMethodmethodHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setMethod:methodHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetStackPageAndLimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setStackPageAndLimit:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetStackPointersFromPageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setStackPointersFromPage:.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetupNativeStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setupNativeStack.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShadowCallStackPointerInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shadowCallStackPointerIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShadowCallStackPointerInputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shadowCallStackPointerIn:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShadowCallStackSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shadowCallStackSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShortConditionalJumpFalseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shortConditionalJumpFalse.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShortConditionalJumpTrueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shortConditionalJumpTrue.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShortPrintFramesInCurrentPageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shortPrintFramesInCurrentPage.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShortUnconditionalJumpStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shortUnconditionalJump.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShuffleArgumentsAndStoreAbsentReceiverStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #shuffleArgumentsAndStoreAbsentReceiver:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSiglongjmpStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #siglong:jmp:.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSignExtendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #signExtend16:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSignalFinalizationStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #signalFinalization:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSingleExtendedSendBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #singleExtendedSendBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSingleExtendedSuperBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #singleExtendedSuperBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSistaInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sistaInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSistaMappedInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sistaMappedInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSizeFieldOfAlienStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sizeFieldOfAlien:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSlowPrimitiveResponseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #slowPrimitiveResponse.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSpecialSelectorNumArgsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #specialSelectorNumArgs:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStackPointerIndexForFrameWithSPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #stackPointerIndexForFrame:WithSP:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStackPointerIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #stackPointerIndex.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStackTopPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #stackTopPut:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStackValueputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #stackValue:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStartPCOfMethodHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #startPCOfMethodHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreAndPopReceiverVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storeAndPopReceiverVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreAndPopRemoteTempLongBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeAndPopRemoteTempLongBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreAndPopTemporaryVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storeAndPopTemporaryVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreLiteralVariablewithValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeLiteralVariable:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreMaybeContextReceiverVariablewithValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storeMaybeContextReceiverVariable:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreMaybeContextreceiverVariablewithValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storeMaybeContext:receiverVariable:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreRemoteTempLongBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeRemoteTempLongBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreRemoteTempinVectorAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeRemoteTemp:inVectorAt:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreStackPointerValueinContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeStackPointerValue:inContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSubscriptwithformatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #subscript:with:format:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSubscriptwithstoringformatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #subscript:with:storing:format:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSuccessfulStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #successful.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSuperclassSendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #superclassSend.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testTabStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #tab.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testTemporaryLocationinnumArgsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #temporaryLocation:in:numArgs:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testTemporaryinStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #temporary:in:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testTemporaryinputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #temporary:in:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testTraceProfileStateStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #traceProfileState.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testTrinaryAtPutInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #trinaryAtPutInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testTrinaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #trinaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnPopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unPop:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnaryClassPrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unaryClassPrimitive.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnaryConvertInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unaryConvertInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnaryHashInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unaryHashInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnaryNewInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unaryNewInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnaryPossibleRootInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unaryPossibleRootInlinePrimitive.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnarySizeInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unarySizeInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnaryUnforwardInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unaryUnforwardInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnconditionnalTrapBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unconditionnalTrapBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter shell' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUndoFetchNextBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #undoFetchNextBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnfollowTempVectoratIndexinStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unfollowTempVector:atIndex:in:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnknownBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unknownBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnknownInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unknownInlinePrimitive.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnknownShortOrCodeSizeInKsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unknownShortOrCodeSizeInKs.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUpdateObjectsPostByteSwapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updateObjectsPostByteSwap.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testValidBCPCinMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #validBCPC:inMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testWithSmallIntegerTagsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #withSmallIntegerTags:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testWithoutSmallIntegerTagsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #withoutSmallIntegerTags:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testWordSwappedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #wordSwapped:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testWriteBackHeadFramePointersStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #writeBackHeadFramePointers.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testZeroStackPageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #zeroStackPage.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeStackInterpreterPrimitivesTranslationTest >> translator [
	^ MAStackInterpreterPrimitivesRessource current translator
]
