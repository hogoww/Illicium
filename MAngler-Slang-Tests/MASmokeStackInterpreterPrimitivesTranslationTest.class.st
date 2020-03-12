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
	| illiAST illiString |
	illiAST := self generateIllicium: #accessModifierOfMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAccessModifierOfMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #accessModifierOfMethod:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testActivateFailingPrimitiveMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #activateFailingPrimitiveMethod.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testActivateNewClosureoutermethodnumArgsmayContextSwitchStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #activateNewClosure:outer:method:numArgs:mayContextSwitch:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testActivateNewFullClosuremethodnumArgsmayContextSwitchStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #activateNewFullClosure:method:numArgs:mayContextSwitch:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testActivateNewMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #activateNewMethod.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAddFirstLinktoListStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #addFirstLink:toList:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAddNewMethodToNSCacheStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #addNewMethodToNSCache:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'plugin support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAddToExternalPrimitiveTableStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #addToExternalPrimitiveTable:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAllAccessibleObjectsOkayStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allAccessibleObjectsOkay.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive ffi abi' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAllocateLowcodeCalloutStateStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allocateLowcodeCalloutState.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAllocateMemoryminimumimageFileheaderSizeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #allocateMemory:minimum:imageFile:headerSize:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAlternateHeaderHasPrimitiveFlagStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #alternateHeaderHasPrimitiveFlag:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAsUnsignedStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #asUnsigned:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAssertClassOfisStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #assertClassOf:is:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testAssertValidStackLimitsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #assertValidStackLimits:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBaseFrameReturnStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #baseFrameReturn.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBereaveAllMarriedContextsForSnapshotFlushingExternalPrimitivesIfStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #bereaveAllMarriedContextsForSnapshotFlushingExternalPrimitivesIf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBinaryAtInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #binaryAtInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBinaryCompInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #binaryCompInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBinaryInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #binaryInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBinaryNewInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #binaryNewInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBinarySmiArithmeticInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #binarySmiArithmeticInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBinarySmiBitInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #binarySmiBitInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBinarySmiCompInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #binarySmiCompInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatFalseSistaVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #booleanCheatFalseSistaV1.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatFalseStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #booleanCheatFalse.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatFalseVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #booleanCheatFalseV4.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatSistaVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #booleanCheatSistaV1:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #booleanCheat:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatTrueSistaVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #booleanCheatTrueSistaV1.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatTrueStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #booleanCheatTrue.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatTrueVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #booleanCheatTrueV4.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBooleanCheatVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #booleanCheatV4:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimAddStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimAdd.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimAtEndStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimAtEnd.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimAtPutStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimAtPut.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimAtStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimAt.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimBitAndStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimBitAnd.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimBitOrStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimBitOr.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimBitShiftStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimBitShift.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimClassStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimClass.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimDivStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimDiv.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimDivideStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimDivide.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimDo.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimEqualSistaVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimEqualSistaV1.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimEqualVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimEqualV4.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimGreaterOrEqualSistaVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimGreaterOrEqualSistaV1.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimGreaterOrEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimGreaterOrEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimGreaterOrEqualVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimGreaterOrEqualV4.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimGreaterThanSistaVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimGreaterThanSistaV1.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimGreaterThanStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimGreaterThan.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimGreaterThanVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimGreaterThanV4.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimIdenticalSistaVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimIdenticalSistaV1.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimIdenticalStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimIdentical.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimIdenticalVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimIdenticalV4.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimLessOrEqualSistaVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimLessOrEqualSistaV1.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimLessOrEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimLessOrEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimLessOrEqualVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimLessOrEqualV4.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimLessThanSistaVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimLessThanSistaV1.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimLessThanStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimLessThan.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimLessThanVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimLessThanV4.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimMakePointStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimMakePoint.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimModStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimMod.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimMultiplyStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimMultiply.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNewStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimNew.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNewWithArgStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimNewWithArg.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNextPutStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimNextPut.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNextStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimNext.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNotEqualSistaVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimNotEqualSistaV1.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNotEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimNotEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNotEqualVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimNotEqualV4.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNotIdenticalSistaVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimNotIdenticalSistaV1.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNotIdenticalStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimNotIdentical.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimNotIdenticalVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimNotIdenticalV4.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimPointXStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimPointX.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimPointYStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimPointY.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimSize.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimSpecialSelectorStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimSpecialSelector24.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimSubtractStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimSubtract.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimValueStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimValue.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testBytecodePrimValueWithArgStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytecodePrimValueWithArg.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'plugin primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCallExternalPrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #callExternalPrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCallMappedInlinedPrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #callMappedInlinedPrimitive.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCallPrimitiveBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #callPrimitiveBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCannotAssigntowithIndexStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #cannotAssign:to:withIndex:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCapturePendingFinalizationSignalsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #capturePendingFinalizationSignals.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCheckAssumedCompactClassesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #checkAssumedCompactClasses.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCheckCogCompiledCodeCompactionCalledForStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #checkCogCompiledCodeCompactionCalledFor.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCheckForAndFollowForwardedPrimitiveStateStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #checkForAndFollowForwardedPrimitiveState.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCheckForLongRunningPrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #checkForLongRunningPrimitive.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCheckForStackOverflowStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #checkForStackOverflow.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCheckLogIntegrityStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #checkLogIntegrity.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCloneOSErrorObjnumSlotsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #cloneOSErrorObj:numSlots:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testClosureInnumArgsinstructionPointercopiedValuesStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #closureIn:numArgs:instructionPointer:copiedValues:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testClosureInnumArgsinstructionPointernumCopiedValuesStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #closureIn:numArgs:instructionPointer:numCopiedValues:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCodeGeneratorToComputeAccessorDepthStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #codeGeneratorToComputeAccessorDepth.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonAtPutStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #commonAtPut:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonAtStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #commonAt:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonCallerReturnStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #commonCallerReturn.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonReturnStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #commonReturn.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonSendDynamicSuperStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #commonSendDynamicSuper.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonSendImplicitReceiverStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #commonSendImplicitReceiver.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonSendOrdinaryStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #commonSendOrdinary.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonSendOuterStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #commonSendOuter:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonVariableatcacheIndexStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #commonVariable:at:cacheIndex:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testCommonVariableatputcacheIndexStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #commonVariable:at:put:cacheIndex:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testComputeStackZoneSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #computeStackZoneSize.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testContextInstructionPointerframeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #contextInstructionPointer:frame:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testConvertFloatsToPlatformOrderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #convertFloatsToPlatformOrder.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testDefaultNativeStackFrameSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #defaultNativeStackFrameSize.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testDirectedSuperclassSendStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #directedSuperclassSend.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testDoubleExtendedDoAnythingBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #doubleExtendedDoAnythingBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testDumpImageStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #dumpImage:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testDuplicateTopBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #duplicateTopBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testElementsPerPrintOopLineStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #elementsPerPrintOopLine.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'newspeak bytecode support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEnclosingObjectAtwithObjectwithMixinStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #enclosingObjectAt:withObject:withMixin:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEncodeFrameFieldHasContextisBlocknumArgsStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #encodeFrameFieldHasContext:isBlock:numArgs:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEnsureContextHasBytecodePCStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #ensureContextHasBytecodePC:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEnsureContextIsExecutionSafeAfterAssignToStackPointerStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #ensureContextIsExecutionSafeAfterAssignToStackPointer:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEnsureFrameIsMarriedSPStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #ensureFrameIsMarried:SP:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEnsureReceiverUnforwardedStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #ensureReceiverUnforwarded.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'callback support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEnterSmalltalkExecutiveFromCallbackStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #enterSmalltalkExecutiveFromCallback.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testEstablishFrameForContextToReturnToStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #establishFrameForContextToReturnTo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExecuteNewMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #executeNewMethod.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'translation support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExpandCasesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #expandCases.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtABytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extABytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtBBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extBBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtJumpIfFalseStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extJumpIfFalse.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtJumpIfTrueStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extJumpIfTrue.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtNopBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extNopBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushCharacterBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extPushCharacterBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushClosureBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extPushClosureBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushFullClosureBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extPushFullClosureBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushIntegerBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extPushIntegerBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushLiteralBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extPushLiteralBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushLiteralVariableBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extPushLiteralVariableBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushPseudoVariableOrOuterBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #extPushPseudoVariableOrOuterBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushPseudoVariableStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extPushPseudoVariable.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtPushReceiverVariableBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extPushReceiverVariableBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtReturnTopFromBlockStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extReturnTopFromBlock.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtSendAbsentDynamicSuperBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extSendAbsentDynamicSuperBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtSendAbsentImplicitBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extSendAbsentImplicitBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtSendAbsentOuterBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extSendAbsentOuterBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtSendAbsentSelfBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extSendAbsentSelfBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtSendBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extSendBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtSendSuperBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extSendSuperBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtStoreAndPopLiteralVariableBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #extStoreAndPopLiteralVariableBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtStoreAndPopReceiverVariableBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #extStoreAndPopReceiverVariableBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtStoreLiteralVariableBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extStoreLiteralVariableBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtStoreReceiverVariableBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extStoreReceiverVariableBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtUnconditionalJumpStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extUnconditionalJump.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtendedPushBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extendedPushBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtendedStoreAndPopBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extendedStoreAndPopBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtendedStoreBytecodePopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extendedStoreBytecodePop:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExtendedStoreBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #extendedStoreBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExternalSetStackPageAndPointersForSuspendedContextOfProcessStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #externalSetStackPageAndPointersForSuspendedContextOfProcess:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExternalWriteBackHeadFramePointersStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #externalWriteBackHeadFramePointers.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExternalizeFPandSPStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #externalizeFPandSP.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testExternalizeIPandSPStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #externalizeIPandSP.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter shell' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFetchByteStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #fetchByte.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter shell' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFetchNextBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #fetchNextBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFieldsInFrameStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #fieldsInFrame:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'newspeak bytecode support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFindApplicationOfTargetMixinstartingAtBehaviorStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #findApplicationOfTargetMixin:startingAtBehavior:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFindClassForSelectorlookupClassdoStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #findClassForSelector:lookupClass:do:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'handler search' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFindMethodWithPrimitiveFromFPUpToContextStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #findMethodWithPrimitive:FromFP:UpToContext:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFindSPOrNilOfonstartingFromStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #findSPOrNilOf:on:startingFrom:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFindSelectorAndClassForMethodlookupClassdoStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #findSelectorAndClassForMethod:lookupClass:do:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFindUnwindThroughContextStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #findUnwindThroughContext:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #finalization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFireEphemeronStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #fireEphemeron:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #finalization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFireFinalizationStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #fireFinalization:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFirstByteIndexOfMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #firstByteIndexOfMethod:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFirstBytecodeOfAlternateHeadermethodStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #firstBytecodeOfAlternateHeader:method:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFloatExponentBitsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #floatExponentBits.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushAtCacheStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #flushAtCache.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushBecommedClassesInMethodCacheStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #flushBecommedClassesInMethodCache.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushBecommedClassesInMethodZoneStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #flushBecommedClassesInMethodZone.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'plugin primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushExternalPrimitiveTableStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #flushExternalPrimitiveTable.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'plugin primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushExternalPrimitivesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #flushExternalPrimitives.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushMethodCacheForMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #flushMethodCacheForMethod:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushMethodCacheFromtoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #flushMethodCacheFrom:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFlushMethodCacheStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #flushMethodCache.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowForwardedFieldsInCurrentMethodStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #followForwardedFieldsInCurrentMethod.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowForwardedMethodsInMethodCacheStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #followForwardedMethodsInMethodCache.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowForwardedMethodsInMethodZoneStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #followForwardedMethodsInMethodZone.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowForwardingPointersInProfileStateStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #followForwardingPointersInProfileState.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowForwardingPointersInSchedulerStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #followForwardingPointersInScheduler.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowForwardingPointersInSpecialObjectsArrayStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #followForwardingPointersInSpecialObjectsArray.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowLiteralofMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #followLiteral:ofMethod:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFollowSemaphoreInatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #followSemaphoreIn:at:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameCallerContextputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #frameCallerContext:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameCallerFPStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #frameCallerFP:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameCallerSPStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #frameCallerSP:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameCallerSavedIPStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #frameCallerSavedIP:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameCallerStackPointerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #frameCallerStackPointer:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameHasNativeFrameStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #frameHasNativeFrame:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameIsMarkedStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #frameIsMarked:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameLastArgumentOffsetStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #frameLastArgumentOffset.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFramePointerOfNativeArgumentinStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #framePointerOfNativeArgument:in:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFramePointerOfNativeLocalinStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #framePointerOfNativeLocal:in:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameReceiverLocationStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #frameReceiverLocation:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameStackedReceiverOffsetNumArgsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #frameStackedReceiverOffsetNumArgs:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameStackedReceivernumArgsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #frameStackedReceiver:numArgs:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFreeUnmarkedMachineCodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #freeUnmarkedMachineCode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFullClosureInnumArgsnumCopiedValuescompiledBlockStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #fullClosureIn:numArgs:numCopiedValues:compiledBlock:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'plugin primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFunctionForPrimitiveCalloutStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #functionForPrimitiveCallout.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetCodeCompactionCountStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #getCodeCompactionCount.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetCodeCompactionMSecsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #getCodeCompactionMSecs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetCogCodeSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #getCogCodeSize.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetCogMethodCountStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #getCogMethodCount.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetCogVMFeatureFlagsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #getCogVMFeatureFlags.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetCogVMFlagsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #getCogVMFlags.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetGCModeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #getGCMode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetImageHeaderFlagsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #getImageHeaderFlags.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetLongFromFileswapStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #getLongFromFile:swap:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testGetShortFromFileswapStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #getShortFromFile:swap:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testHandleSpecialSelectorSendFaultForStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #handleSpecialSelectorSendFaultFor:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testHighestPriorityProcessStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #highestPriorityProcess.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIfAppropriateCompileToNativeCodeselectorStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #ifAppropriateCompileToNativeCode:selector:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIfBackwardsCheckForEventsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #ifBackwardsCheckForEvents:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIfSoAssertValidIPAssignofContextwithStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #ifSoAssertValidIPAssign:ofContext:with:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIframeInstructionPointerForIndexmethodStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #iframeInstructionPointerForIndex:method:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIframeIsBlockActivationStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #iframeIsBlockActivation:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testImageFormatCompatibilityVersionStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #imageFormatCompatibilityVersion.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'simulation support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitExtensionsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initExtensions.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitPrimCallStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initPrimCall.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitStackPageGCStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initStackPageGC.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitStackPagesAndInterpretStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initStackPagesAndInterpret.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitStackPagesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initStackPages.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitialCleanupStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initialCleanup.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitialIPForHeadermethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initialIPForHeader:method:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitializeExtraClassInstVarIndicesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initializeExtraClassInstVarIndices.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitializeInterpreterStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initializeInterpreter:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInitializePageTraceToInvalidStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initializePageTraceToInvalid:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInlineLookupInMethodCacheSelclassTagStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #inlineLookupInMethodCacheSel:classTag:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInlineLookupInNSMethodCacheSelclassTagmethodlookupRuleStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #inlineLookupInNSMethodCacheSel:classTag:method:lookupRule:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInstVarofContextStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #instVar:ofContext:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInstVarofContextputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #instVar:ofContext:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInstallinAtCacheatstringStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #install:inAtCache:at:string:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalAboutToReturnthroughStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalAboutToReturn:through:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalActivateNewMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalActivateNewMethod.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalCannotReturnStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalCannotReturn:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalExecuteNewMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalExecuteNewMethod.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalFindNewMethodDynamicSuperStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalFindNewMethodDynamicSuper.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalFindNewMethodImplicitReceiverStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #internalFindNewMethodImplicitReceiver.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalFindNewMethodOrdinaryStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalFindNewMethodOrdinary.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalFindNewMethodOuterStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalFindNewMethodOuter:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalMustBeBooleanStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalMustBeBoolean.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPopStackFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalPopStackFloat64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPopStackIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalPopStackInt32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPopStackNativeSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalPopStackNativeSize:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPopStackPointerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalPopStackPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPopStackStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalPopStack.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalPop:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPopthenPushStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalPop:thenPush:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalPushFloat32:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalPushInt32:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushPointerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalPushPointer:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushShadowCallStackFloatStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #internalPushShadowCallStackFloat64:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushShadowCallStackIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalPushShadowCallStackInt64:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushShadowCallStackPointerStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #internalPushShadowCallStackPointer:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushShadowCallStackSpaceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalPushShadowCallStackSpace:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushShadowCallStackStructuresizeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #internalPushShadowCallStackStructure:size:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalPushStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalPush:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalQuickPrimitiveResponseStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalQuickPrimitiveResponse.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalStackTopPutIntegerObjectOfStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #internalStackTopPutIntegerObjectOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalStackTopPutStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalStackTopPut:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalStackTopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalStackTop.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalStackValueStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalStackValue:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalStackValueputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalStackValue:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testInternalizeIPandSPStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #internalizeIPandSP.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'I/O primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIoBeDisplaywidthheightdepthStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #ioBeDisplay:width:height:depth:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsCogStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isCog.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsDirectAlienStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isDirectAlien:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsEmptyListStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isEmptyList:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsExternalPrimitiveCallStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isExternalPrimitiveCall:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsFiniteStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isFinite:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsIndirectAlienStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isIndirectAlien:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsInstanceOfClassArrayStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isInstanceOfClassArray:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsInstanceOfClassBlockClosureStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isInstanceOfClassBlockClosure:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsInstanceOfClassByteStringStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isInstanceOfClassByteString:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsMachineCodeFrameStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isMachineCodeFrame:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsNullExternalPrimitiveCallStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isNullExternalPrimitiveCall:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsOptimizedMethodHeaderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isOptimizedMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsOptimizedMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isOptimizedMethod:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsPointerAlienStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isPointerAlien:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsPrivateMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isPrivateMethod:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsProtectedMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isProtectedMethod:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsPublicMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isPublicMethod:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsSignedIntegerinRangeForBitsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isSignedInteger:inRangeForBits:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsStillMarriedContextDuringGCStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isStillMarriedContextDuringGC:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsStillMarriedContextStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isStillMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsVanillaBlockClosureStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isVanillaBlockClosure:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testIsmethodAssignmentToContextWithMachineCodePCStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #is:methodAssignmentToContextWithMachineCodePC:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testJumpBinaryInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #jumpBinaryInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testJumpStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #jump:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testJumpTrinaryInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #jumpTrinaryInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testJumpUnaryInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #jumpUnaryInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testJumplfFalseByStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #jumplfFalseBy:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testJumplfTrueByStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #jumplfTrueBy:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testJustActivateNewMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #justActivateNewMethod:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLiteralCountOfAlternateHeaderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #literalCountOfAlternateHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLiteralCountOfOriginalHeaderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #literalCountOfOriginalHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLiteralStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #literal:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLiteralofMethodputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #literal:ofMethod:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLongJumpIfFalseStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #longJumpIfFalse.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLongJumpIfTrueStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #longJumpIfTrue.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLongPushTemporaryVariableBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #longPushTemporaryVariableBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLongStoreAndPopTemporaryVariableBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #longStoreAndPopTemporaryVariableBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLongStoreTemporaryVariableBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #longStoreTemporaryVariableBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLongUnconditionalJumpStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #longUnconditionalJump.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupBreakForStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lookupBreakFor:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupDynamicSuperSendStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lookupDynamicSuperSend.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupImplicitReceiverSendStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lookupImplicitReceiverSend.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupLexicalfromruleStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lookupLexical:from:rule:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupMNUInClassStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lookupMNUInClass:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupMNUStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lookupMNU.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupMethodForInDictionaryStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lookupMethodFor:InDictionary:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupMethodInDictionaryStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lookupMethodInDictionary:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupOrdinarySendStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lookupOrdinarySend.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupOuterSendStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lookupOuterSend:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLookupProtectedstartingAtruleStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lookupProtected:startingAt:rule:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive dispatch generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodeBinaryInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodeBinaryInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive ffi abi' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodeCalloutStatecallFunctionStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodeCalloutState:callFunction:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive ffi abi' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodeDoCalloutStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodeDoCallout:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive dispatch generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodeNullaryInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodeNullaryInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveAddStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveAdd32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveAllocaStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveAlloca32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveAndStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveAnd64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveArithmeticRightShiftStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveArithmeticRightShift64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveBeginCallStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveBeginCall.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveBooleanToOopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveBoolean64ToOop.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveByteSizeOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveByteSizeOf.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCallArgumentFloatStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveCallArgumentFloat32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCallArgumentIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveCallArgumentInt32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCallArgumentPointerStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveCallArgumentPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCallArgumentSpaceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveCallArgumentSpace.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCallArgumentStructureStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveCallArgumentStructure.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCallInstructionStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveCallInstruction.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCallPhysicalStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveCallPhysical.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCheckSessionIdentifierStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveCheckSessionIdentifier.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveCompareAndSwapStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveCompareAndSwap32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveDivStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveDiv32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveDuplicateFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveDuplicateFloat32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveDuplicateIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveDuplicateInt32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveDuplicatePointerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveDuplicatePointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveEffectiveAddressStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveEffectiveAddress32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveEndCallNoCleanupStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveEndCallNoCleanup.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveEndCallStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveEndCall.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFirstFieldPointerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFirstFieldPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFirstIndexableFieldPointerStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveFirstIndexableFieldPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatAddStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32Add.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatDivStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32Div.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Equal.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatGreatEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64GreatEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatGreatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Great.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatLessEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32LessEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatLessStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Less.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatMulStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32Mul.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatNegStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Neg.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatNotEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64NotEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatSqrtStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Sqrt.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatSubStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32Sub.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatToFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64ToFloat32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatToIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64ToInt32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatToOopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32ToOop.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFloatToUIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64ToUInt32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveFreeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveFree.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveInstantiateIndexableOopStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveInstantiateIndexableOop.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveInstantiateOopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveInstantiateOop.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64Equal.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntGreatEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64GreatEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntGreatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveInt32Great.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntLessEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveInt32LessEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntLessStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64Less.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntNotEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64NotEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntToFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64ToFloat64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntToOopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveInt32ToOop.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIntToPointerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64ToPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIsBytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveIsBytes.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIsFloatObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveIsFloatObject.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIsIndexableStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveIsIndexable.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIsIntegerObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveIsIntegerObject.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIsPointersStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveIsPointers.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIsWordsOrBytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveIsWordsOrBytes.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveIsWordsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveIsWords.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLeftShiftStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveLeftShift64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadArgumentAddressStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadArgumentAddress.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadArgumentFloatStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadArgumentFloat64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadArgumentIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadArgumentInt32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadArgumentPointerStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadArgumentPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadArgumentUIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadArgumentUInt32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadFloatFromMemoryStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadFloat32FromMemory.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadIntFromMemoryStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadInt32FromMemory.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadLocalAddressStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalAddress.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadLocalFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalFloat64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadLocalIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalInt8.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadLocalPointerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadLocalUIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalUInt64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadObjectAtStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadObjectAt.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadObjectFieldStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadObjectField.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadPointerFromMemoryStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadPointerFromMemory.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLoadUIntFromMemoryStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadUInt32FromMemory.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLocalFrameSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveLocalFrameSize.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLockRegistersStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveLockRegisters.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveLockVMStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveLockVM.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveMallocStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveMalloc32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveMemcpyFixedStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveMemcpyFixed.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveMemcpyStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveMemcpy32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveMoveFloatToPhysicalStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveMoveFloat32ToPhysical.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveMoveIntToPhysicalStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveMoveInt64ToPhysical.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveMovePointerToPhysicalStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveMovePointerToPhysical.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveMulStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveMul64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveNegStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveNeg32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveNotStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveNot32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveOopEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopNotEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveOopNotEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopSmallIntegerToIntStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveOopSmallIntegerToInt32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopToBooleanStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToBoolean64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopToFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToFloat32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopToIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToInt32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopToPointerReinterpretStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveOopToPointerReinterpret.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopToPointerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOopToUIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToUInt64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveOrStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveOr64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePerformCalloutIndirectStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitivePerformCalloutIndirect.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePerformCalloutStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePerformCallout.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePinStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePin.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePlaftormCodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePlaftormCode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePointerAddConstantOffsetStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitivePointerAddConstantOffset.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePointerAddOffsetStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePointerAddOffset64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePointerEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePointerEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePointerNotEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePointerNotEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePointerToIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePointerToInt32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePointerToOopReinterprerStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitivePointerToOopReinterprer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePointerToOopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePointerToOop.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePopFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePopFloat32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePopIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePopInt64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePopMultipleNativeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePopMultipleNative.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePopPointerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePopPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushCalloutResultFloatStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushCalloutResultFloat32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushCalloutResultIntStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushCalloutResultInt32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushCalloutResultPointerStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushCalloutResultPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushConstantUIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePushConstantUInt32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushNullPointerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePushNullPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushOneFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePushOneFloat32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushOneStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePushOne64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushPhysicalFloatStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushPhysicalFloat32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushPhysicalIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePushPhysicalInt32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushPhysicalPointerStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushPhysicalPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushSessionIdentifierStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushSessionIdentifier.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushZeroFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePushZeroFloat32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitivePushZeroStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitivePushZero32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveRemStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveRem32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveRightShiftStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveRightShift32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveSignExtendFromStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveSignExtend64From32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveSmallIntToOopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveSmallInt32ToOop.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStoreFloatToMemoryStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveStoreFloat32ToMemory.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStoreIntToMemoryStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreInt8ToMemory.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStoreLocalFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreLocalFloat64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStoreLocalIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreLocalInt16.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStoreLocalPointerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreLocalPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStoreObjectFieldAtStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreObjectFieldAt.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStoreObjectFieldStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreObjectField.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveStorePointerToMemoryStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodePrimitiveStorePointerToMemory.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveSubStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveSub32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveTruncateToStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveTruncate64To8.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUdivStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveUdiv32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUintGreatEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveUint64GreatEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUintGreatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveUint32Great.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUintLessEqualStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveUint64LessEqual.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUintLessStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveUint32Less.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUintToFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveUint32ToFloat64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUintToOopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveUint32ToOop.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUmulStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveUmul32.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUnlockRegistersStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveUnlockRegisters.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUnlockVMStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveUnlockVM.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUnpinStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveUnpin.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveUremStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveUrem64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveXorStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveXor64.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodePrimitiveZeroExtendFromStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodePrimitiveZeroExtend64From16.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodeStoreLocalIntWorkaroundinspStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #lowcodeStoreLocalInt64Workaround:in:sp:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive dispatch generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodeTrinaryInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodeTrinaryInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive dispatch generated code' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodeUnaryInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcodeUnaryInlinePrimitive4:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testLowcodememcpyStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowcode_mem:cp:y:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMapMachineCodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #mapMachineCode:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMapProfileStateStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #mapProfileState.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMapTraceLogsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #mapTraceLogs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMapVMRegistersStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #mapVMRegisters.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMappedBackjumpAlwaysInterruptStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #mappedBackjumpAlwaysInterrupt.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMappedDirectCallStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #mappedDirectCall.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMappedEnsureEnoughWordsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #mappedEnsureEnoughWords.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMappedImmcheckDataAtPutStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #mappedImmcheckDataAtPut:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMappedImmcheckMaybeContextStoreCheckPointerAtPutStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #mappedImmcheckMaybeContextStoreCheckPointerAtPut.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMappedImmcheckStoreCheckPointerAtPutStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #mappedImmcheckStoreCheckPointerAtPut.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkAndTraceAndMaybeFreeStackPagesStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #markAndTraceAndMaybeFreeStackPages:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkAndTraceInterpreterOopsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markAndTraceInterpreterOops:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkAndTraceMachineCodeOfMarkedMethodsStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #markAndTraceMachineCodeOfMarkedMethods.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkAndTraceOrFreeMachineCodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markAndTraceOrFreeMachineCode:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkAndTracePrimTraceLogStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markAndTracePrimTraceLog.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkAndTraceTraceLogStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markAndTraceTraceLog.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkContextAsDeadStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markContextAsDead:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkFrameStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markFrame:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarryFrameSPcopyTempsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #marryFrame:SP:copyTemps:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeFailForLastObjectOverwriteStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #maybeFailForLastObjectOverwrite.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'cog jit support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeFixClonedCompiledMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #maybeFixClonedCompiledMethod:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeFlagMethodAsInterpretedStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #maybeFlagMethodAsInterpreted:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeInlinePositiveBitIntegerForStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #maybeInlinePositive32BitIntegerFor:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeInlinePositiveBitValueOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #maybeInlinePositive32BitValueOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeRetryPrimitiveOnFailureStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #maybeRetryPrimitiveOnFailure.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeReturnToMachineCodeFrameStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #maybeReturnToMachineCodeFrame.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMaybeTraceStackOverflowStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #maybeTraceStackOverflow.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMethodHeaderHasPrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #methodHeaderHasPrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMframeCogMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #mframeCogMethod:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMicrosecondsToMillisecondsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #microsecondsToMilliseconds:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMnuBreakpointreceiverStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #mnuBreakpoint:receiver:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNacFetchStackPointerOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nacFetchStackPointerOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativeFramePointerInStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nativeFramePointerIn:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativeFramePointerInputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nativeFramePointerIn:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativeFrameSignalObjectInStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nativeFrameSignalObjectIn:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativeFrameSignalObjectInputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nativeFrameSignalObjectIn:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativePreviousStackPointerInStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nativePreviousStackPointerIn:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativePreviousStackPointerInputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nativePreviousStackPointerIn:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativeStackPointerInStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nativeStackPointerIn:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativeStackPointerInputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nativeStackPointerIn:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNativeStackSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nativeStackSize.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNoAssertHeaderOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #noAssertHeaderOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNoFixupSuperclassOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #noFixupSuperclassOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNoInlineSignedBitIntegerGutsForStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #noInlineSigned32BitIntegerGutsFor:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNoInlineSignedBitValueGutsOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #noInlineSigned32BitValueGutsOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNormalSendStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #normalSend.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testNullaryInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nullaryInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testOkayFieldsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #okayFields:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testOkayInterpreterObjectsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #okayInterpreterObjects.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPathTousingfollowWeakStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pathTo:using:followWeak:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPopAndPushIntegerIfOKStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pop2AndPushIntegerIfOK:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPopFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #popFloat.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPopPosBitIntegerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #popPos32BitInteger.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPopStackBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #popStackBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPopthenPushBoolStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pop:thenPushBool:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPopthenPushFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pop:thenPushFloat:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPopthenPushIntegerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pop:thenPushInteger:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPostBecomeActionStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #postBecomeAction:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPostGCActionStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #postGCAction:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPreBecomeActionStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #preBecomeAction.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPreGCActionStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #preGCAction:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveAccessorDepthForExternalPrimitiveMethodStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #primitiveAccessorDepthForExternalPrimitiveMethod:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sound primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveConstantFillSpurStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveConstantFillSpur.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sound primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveConstantFillVStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveConstantFillV3.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatAddtoArgStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveFloatAdd:toArg:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatDividebyArgStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveFloatDivide:byArg:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatEqualtoArgStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveFloatEqual:toArg:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatGreaterOrEqualtoArgStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #primitiveFloatGreaterOrEqual:toArg:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatGreaterthanArgStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveFloatGreater:thanArg:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatLessOrEqualtoArgStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveFloatLessOrEqual:toArg:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatLessthanArgStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveFloatLess:thanArg:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatMultiplybyArgStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveFloatMultiply:byArg:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatSubtractfromArgStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveFloatSubtract:fromArg:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'I/O primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveForceTenureStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveForceTenure.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveIsRootStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveIsRoot.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveIsYoungStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveIsYoung.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveMarkHandlerMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveMarkHandlerMethod.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveMarkUnwindMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveMarkUnwindMethod.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveObjectperformwithArgumentslookedUpInStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #primitiveObject:perform:withArguments:lookedUpIn:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveRootTableAtStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveRootTableAt.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveRootTableStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveRootTable.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetGCBiasToGrowGCLimitStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveSetGCBiasToGrowGCLimit.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetGCBiasToGrowStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveSetGCBiasToGrow.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetIdentityHashStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveSetIdentityHash.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'system control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetVMParameterargStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveSetVMParameter:arg:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatHashStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveSmallFloatHash.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSpurIntegerAtPutStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveSpurIntegerAtPut.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSpurIntegerAtStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveSpurIntegerAt.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSpurStringReplaceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveSpurStringReplace.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'process primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveStartVMProfilingStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveStartVMProfiling.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'process primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveStopVMProfilingStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveStopVMProfiling.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveTestShortenIndexableSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveTestShortenIndexableSize.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveVIntegerAtPutStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveV3IntegerAtPut.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveVIntegerAtStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveV3IntegerAt.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'process primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveVMProfileInfoIntoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveVMProfileInfoInto.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveVStringReplaceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #primitiveV3StringReplace.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintAtCacheStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printAtCache.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #printing }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintDecodeMethodHeaderOopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printDecodeMethodHeaderOop:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintFrameAndCallersSPStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printFrameAndCallers:SP:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintFrameOopindexatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printFrameOop:index:at:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintHeadFrameStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printHeadFrame.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintHexPtrStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printHexPtr:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintHexPtrnpStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printHexPtrnp:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintHexnpnpStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printHexnpnp:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintMethodFieldForPrintContextStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printMethodFieldForPrintContext:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintMethodHeaderOopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printMethodHeaderOop:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintOopShortInnerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printOopShortInner:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintPageHeadFrameStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printPageHeadFrame.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintSendsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printSends.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintStackPageStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printStackPage:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrintUnbalancedStackStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printUnbalancedStack:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushActiveContextBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushActiveContextBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushClosureCopyCopiedValuesBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #pushClosureCopyCopiedValuesBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushClosureNumArgscopiedValuesblockSizeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #pushClosureNumArgs:copiedValues:blockSize:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushConstantFalseBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushConstantFalseBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushConstantMinusOneBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushConstantMinusOneBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushConstantNilBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushConstantNilBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushConstantOneBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushConstantOneBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushConstantTrueBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushConstantTrueBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushConstantTwoBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushConstantTwoBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushConstantZeroBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushConstantZeroBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushEnclosingObjectBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushEnclosingObjectBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushFullClosureNumArgscopiedValuescompiledBlockreceiverIsOnStackignoreContextStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #pushFullClosureNumArgs:copiedValues:compiledBlock:receiverIsOnStack:ignoreContext:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushLiteralConstantBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushLiteralConstantBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushLiteralConstantStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushLiteralConstant:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushLiteralVariableBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushLiteralVariableBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushLiteralVariableCasesBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushLiteralVariable16CasesBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushLiteralVariableStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushLiteralVariable:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushMaybeContextReceiverVariableStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushMaybeContextReceiverVariable:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushMaybeContextreceiverVariableStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushMaybeContext:receiverVariable:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushNewArrayBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushNewArrayBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushReceiverBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushReceiverBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushReceiverVariableBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushReceiverVariableBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushReceiverVariableStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushReceiverVariable:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushRemoteTempLongBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushRemoteTempLongBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushRemoteTempinVectorAtStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushRemoteTemp:inVectorAt:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushTemporaryVariableBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushTemporaryVariableBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPushTemporaryVariableStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pushTemporaryVariable:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testQuaternaryInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #quaternaryInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testQuinaryInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #quinaryInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic integer primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testQuotientStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #quot:ient:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'string primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testRawComparelengthwithlengthaccessBlockStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #rawCompare:length:with:length:accessBlock:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReceiverStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #receiver.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive ffi abi' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReloadLowcodeStateAfterCalloutStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #reloadLowcodeStateAfterCallout.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testRemapCallbackStateStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #remapCallbackState.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testRemoveProcessfromListStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #removeProcess:fromList:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testRespondToSistaTrapStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #respondToSistaTrap.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testRespondToUnknownBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #respondToUnknownBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'callback support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testRestoreCStackStateForCallbackContextStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #restoreCStackStateForCallbackContext:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testRestoreStackLimitStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #restoreStackLimit.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReturnFalseStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #returnFalse.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReturnNilFromBlockStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #returnNilFromBlock.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReturnNilStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #returnNil.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReturnReceiverStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #returnReceiver.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReturnTopFromBlockStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #returnTopFromBlock.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReturnTopFromMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #returnTopFromMethod.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReturnTrueStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #returnTrue.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testReverseBytesInImageStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #reverseBytesInImage.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSafeFindFrameAboveonstartingFromStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #safeFindFrameAbove:on:startingFrom:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSaneMethodClassAssociationInnumLiteralsStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #saneMethodClassAssociationIn:numLiterals:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'callback support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSaveCStackStateForCallbackContextStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #saveCStackStateForCallbackContext:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSchedulerPointerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #schedulerPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSecondExtendedSendBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #secondExtendedSendBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSelectorOfContextStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #selectorOfContext:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSendAbsentImplicitArgsBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #sendAbsentImplicit0ArgsBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSendBreakpointreceiverStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #sendBreakpoint:receiver:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSendLiteralSelectorArgBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #sendLiteralSelector1ArgBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSendLiteralSelectorArgsBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #sendLiteralSelector2ArgsBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetCheckAllocFillerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setCheckAllocFiller:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetCogVMFlagsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setCogVMFlags:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetDesiredCogCodeSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setDesiredCogCodeSize:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetFrameContexttoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setFrameContext:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetFrameHasContextStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setFrameHasContext:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetFrameHasNativeFrameStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setFrameHasNativeFrame:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetFrameHasNotNativeFrameStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setFrameHasNotNativeFrame:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetGCModeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setGCMode:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetHeadFPandSPinPageStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setHeadFP:andSP:inPage:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetImageHeaderFlagsFromStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setImageHeaderFlagsFrom:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetMaxExtSemSizeToStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setMaxExtSemSizeTo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetMethodClassAssociationOftoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setMethodClassAssociationOf:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setMethod:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetMethodmethodHeaderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setMethod:methodHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetStackPageAndLimitStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setStackPageAndLimit:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetStackPointersFromPageStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setStackPointersFromPage:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSetupNativeStackStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setupNativeStack.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShadowCallStackPointerInStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #shadowCallStackPointerIn:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShadowCallStackPointerInputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #shadowCallStackPointerIn:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShadowCallStackSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #shadowCallStackSize.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShortConditionalJumpFalseStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #shortConditionalJumpFalse.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShortConditionalJumpTrueStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #shortConditionalJumpTrue.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShortPrintFramesInCurrentPageStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #shortPrintFramesInCurrentPage.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShortUnconditionalJumpStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #shortUnconditionalJump.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testShuffleArgumentsAndStoreAbsentReceiverStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #shuffleArgumentsAndStoreAbsentReceiver:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSiglongjmpStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #siglong:jmp:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSignExtendStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #signExtend16:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSignalFinalizationStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #signalFinalization:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSingleExtendedSendBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #singleExtendedSendBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSingleExtendedSuperBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #singleExtendedSuperBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSistaInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #sistaInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSistaMappedInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #sistaMappedInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSizeFieldOfAlienStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #sizeFieldOfAlien:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSlowPrimitiveResponseStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #slowPrimitiveResponse.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSpecialSelectorNumArgsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #specialSelectorNumArgs:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStackPointerIndexForFrameWithSPStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #stackPointerIndexForFrame:WithSP:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStackPointerIndexStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #stackPointerIndex.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStackTopPutStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #stackTopPut:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStackValueputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #stackValue:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStartPCOfMethodHeaderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #startPCOfMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreAndPopReceiverVariableBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #storeAndPopReceiverVariableBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreAndPopRemoteTempLongBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #storeAndPopRemoteTempLongBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreAndPopTemporaryVariableBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #storeAndPopTemporaryVariableBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreLiteralVariablewithValueStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #storeLiteralVariable:withValue:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreMaybeContextReceiverVariablewithValueStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #storeMaybeContextReceiverVariable:withValue:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreMaybeContextreceiverVariablewithValueStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #storeMaybeContext:receiverVariable:withValue:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreRemoteTempLongBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #storeRemoteTempLongBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreRemoteTempinVectorAtStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #storeRemoteTemp:inVectorAt:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testStoreStackPointerValueinContextStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #storeStackPointerValue:inContext:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSubscriptwithformatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #subscript:with:format:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSubscriptwithstoringformatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #subscript:with:storing:format:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSuccessfulStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #successful.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testSuperclassSendStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #superclassSend.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testTabStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #tab.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testTemporaryLocationinnumArgsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #temporaryLocation:in:numArgs:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testTemporaryinStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #temporary:in:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testTemporaryinputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #temporary:in:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testTraceProfileStateStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #traceProfileState.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testTrinaryAtPutInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #trinaryAtPutInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testTrinaryInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #trinaryInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnPopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unPop:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnaryClassPrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unaryClassPrimitive.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnaryConvertInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unaryConvertInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnaryHashInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unaryHashInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnaryInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unaryInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnaryNewInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unaryNewInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnaryPossibleRootInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unaryPossibleRootInlinePrimitive.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnarySizeInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unarySizeInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnaryUnforwardInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unaryUnforwardInlinePrimitive:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnconditionnalTrapBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unconditionnalTrapBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter shell' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUndoFetchNextBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #undoFetchNextBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnfollowTempVectoratIndexinStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unfollowTempVector:atIndex:in:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnknownBytecodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unknownBytecode.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnknownInlinePrimitiveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unknownInlinePrimitive.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUnknownShortOrCodeSizeInKsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unknownShortOrCodeSizeInKs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testUpdateObjectsPostByteSwapStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #updateObjectsPostByteSwap.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testValidBCPCinMethodStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #validBCPC:inMethod:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testWithSmallIntegerTagsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #withSmallIntegerTags:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testWithoutSmallIntegerTagsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #withoutSmallIntegerTags:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testWordSwappedStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #wordSwapped:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testWriteBackHeadFramePointersStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #writeBackHeadFramePointers.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testZeroStackPageStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #zeroStackPage.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeStackInterpreterPrimitivesTranslationTest >> translator [
	^ MAStackInterpreterPrimitivesRessource current translator
]
