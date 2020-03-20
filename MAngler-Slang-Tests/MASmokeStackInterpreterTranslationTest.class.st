Class {
	#name : #MASmokeStackInterpreterTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MASmokeStackInterpreterTranslationTest >> setUp [
	super setUp.
	testedClass := StackInterpreter
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testAccessModifierOfMethodHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #accessModifierOfMethodHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testAccessModifierOfMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #accessModifierOfMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testActivateFailingPrimitiveMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #activateFailingPrimitiveMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterTranslationTest >> testActivateNewClosureoutermethodnumArgsmayContextSwitchStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #activateNewClosure:outer:method:numArgs:mayContextSwitch:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterTranslationTest >> testActivateNewFullClosuremethodnumArgsmayContextSwitchStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #activateNewFullClosure:method:numArgs:mayContextSwitch:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testActivateNewMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #activateNewMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterTranslationTest >> testAddFirstLinktoListStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #addFirstLink:toList:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterTranslationTest >> testAddNewMethodToNSCacheStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #addNewMethodToNSCache:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'plugin support' }
MASmokeStackInterpreterTranslationTest >> testAddToExternalPrimitiveTableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #addToExternalPrimitiveTable:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterTranslationTest >> testAllAccessibleObjectsOkayStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allAccessibleObjectsOkay.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive ffi abi' }
MASmokeStackInterpreterTranslationTest >> testAllocateLowcodeCalloutStateStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allocateLowcodeCalloutState.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterTranslationTest >> testAllocateMemoryminimumimageFileheaderSizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #allocateMemory:minimum:imageFile:headerSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testAlternateHeaderHasPrimitiveFlagStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #alternateHeaderHasPrimitiveFlag:.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterTranslationTest >> testAssertClassOfisStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #assertClassOf:is:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterTranslationTest >> testAssertValidStackLimitsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #assertValidStackLimits:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testBaseFrameReturnStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #baseFrameReturn.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testBereaveAllMarriedContextsForSnapshotFlushingExternalPrimitivesIfStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #bereaveAllMarriedContextsForSnapshotFlushingExternalPrimitivesIf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterTranslationTest >> testBinaryAtInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #binaryAtInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterTranslationTest >> testBinaryCompInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #binaryCompInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterTranslationTest >> testBinaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #binaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterTranslationTest >> testBinaryNewInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #binaryNewInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterTranslationTest >> testBinarySmiArithmeticInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #binarySmiArithmeticInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterTranslationTest >> testBinarySmiBitInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #binarySmiBitInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - binary' }
MASmokeStackInterpreterTranslationTest >> testBinarySmiCompInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #binarySmiCompInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterTranslationTest >> testBooleanCheatFalseSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatFalseSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterTranslationTest >> testBooleanCheatFalseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatFalse.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterTranslationTest >> testBooleanCheatFalseVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatFalseV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterTranslationTest >> testBooleanCheatSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatSistaV1:.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterTranslationTest >> testBooleanCheatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterTranslationTest >> testBooleanCheatTrueSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatTrueSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterTranslationTest >> testBooleanCheatTrueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatTrue.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterTranslationTest >> testBooleanCheatTrueVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatTrueV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterTranslationTest >> testBooleanCheatVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanCheatV4:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimAddStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimAdd.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimAtEndStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimAtEnd.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimAtPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimAtPut.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimAt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimBitAndStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimBitAnd.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimBitOrStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimBitOr.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimBitShiftStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimBitShift.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimClassStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimClass.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimDivStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimDiv.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimDivideStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimDivide.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimDo.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimEqualSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimEqualSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimEqualVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimEqualV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimGreaterOrEqualSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimGreaterOrEqualSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimGreaterOrEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimGreaterOrEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimGreaterOrEqualVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimGreaterOrEqualV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimGreaterThanSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimGreaterThanSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimGreaterThanStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimGreaterThan.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimGreaterThanVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimGreaterThanV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimIdenticalSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimIdenticalSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimIdenticalStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimIdentical.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimIdenticalVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimIdenticalV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimLessOrEqualSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimLessOrEqualSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimLessOrEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimLessOrEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimLessOrEqualVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimLessOrEqualV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimLessThanSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimLessThanSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimLessThanStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimLessThan.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimLessThanVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimLessThanV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimMakePointStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimMakePoint.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimModStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimMod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimMultiplyStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimMultiply.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimNewStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNew.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimNewWithArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNewWithArg.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimNextPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNextPut.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimNextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNext.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimNotEqualSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNotEqualSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimNotEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNotEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimNotEqualVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNotEqualV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimNotIdenticalSistaVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNotIdenticalSistaV1.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimNotIdenticalStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNotIdentical.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimNotIdenticalVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimNotIdenticalV4.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimPointXStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimPointX.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimPointYStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimPointY.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimSpecialSelectorStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimSpecialSelector24.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimSubtractStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimSubtract.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimValue.
	self prettyPrintIllicium: illiAST
]

{ #category : #'common selector sends' }
MASmokeStackInterpreterTranslationTest >> testBytecodePrimValueWithArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytecodePrimValueWithArg.
	self prettyPrintIllicium: illiAST
]

{ #category : #'plugin primitive support' }
MASmokeStackInterpreterTranslationTest >> testCallExternalPrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #callExternalPrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testCallMappedInlinedPrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #callMappedInlinedPrimitive.
	self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterTranslationTest >> testCallPrimitiveBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #callPrimitiveBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testCannotAssigntowithIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #cannotAssign:to:withIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterTranslationTest >> testCapturePendingFinalizationSignalsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #capturePendingFinalizationSignals.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterTranslationTest >> testCheckAssumedCompactClassesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkAssumedCompactClasses.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterTranslationTest >> testCheckCogCompiledCodeCompactionCalledForStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #checkCogCompiledCodeCompactionCalledFor.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testCheckForAndFollowForwardedPrimitiveStateStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #checkForAndFollowForwardedPrimitiveState.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testCheckForLongRunningPrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkForLongRunningPrimitive.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testCheckForStackOverflowStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkForStackOverflow.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testCheckLogIntegrityStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkLogIntegrity.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testCloneOSErrorObjnumSlotsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #cloneOSErrorObj:numSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterTranslationTest >> testClosureInnumArgsinstructionPointercopiedValuesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #closureIn:numArgs:instructionPointer:copiedValues:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterTranslationTest >> testClosureInnumArgsinstructionPointernumCopiedValuesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #closureIn:numArgs:instructionPointer:numCopiedValues:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testCodeGeneratorToComputeAccessorDepthStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #codeGeneratorToComputeAccessorDepth.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterTranslationTest >> testCommonAtPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonAtPut:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterTranslationTest >> testCommonAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonAt:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testCommonCallerReturnStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonCallerReturn.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testCommonReturnStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonReturn.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testCommonSendDynamicSuperStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonSendDynamicSuper.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testCommonSendImplicitReceiverStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonSendImplicitReceiver.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testCommonSendOrdinaryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonSendOrdinary.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testCommonSendOuterStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonSendOuter:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterTranslationTest >> testCommonVariableatcacheIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonVariable:at:cacheIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterTranslationTest >> testCommonVariableatputcacheIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #commonVariable:at:put:cacheIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterTranslationTest >> testComputeStackZoneSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #computeStackZoneSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testContextInstructionPointerframeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #contextInstructionPointer:frame:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterTranslationTest >> testConvertFloatsToPlatformOrderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #convertFloatsToPlatformOrder.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterTranslationTest >> testDefaultNativeStackFrameSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #defaultNativeStackFrameSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testDirectedSuperclassSendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #directedSuperclassSend.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testDoubleExtendedDoAnythingBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #doubleExtendedDoAnythingBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterTranslationTest >> testDumpImageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #dumpImage:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testDuplicateTopBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #duplicateTopBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testElementsPerPrintOopLineStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #elementsPerPrintOopLine.
	self prettyPrintIllicium: illiAST
]

{ #category : #'newspeak bytecode support' }
MASmokeStackInterpreterTranslationTest >> testEnclosingObjectAtwithObjectwithMixinStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #enclosingObjectAt:withObject:withMixin:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testEncodeFrameFieldHasContextisBlocknumArgsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #encodeFrameFieldHasContext:isBlock:numArgs:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testEnsureContextHasBytecodePCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ensureContextHasBytecodePC:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testEnsureContextIsExecutionSafeAfterAssignToStackPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #ensureContextIsExecutionSafeAfterAssignToStackPointer:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testEnsureFrameIsMarriedSPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ensureFrameIsMarried:SP:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testEnsureReceiverUnforwardedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ensureReceiverUnforwarded.
	self prettyPrintIllicium: illiAST
]

{ #category : #'callback support' }
MASmokeStackInterpreterTranslationTest >> testEnterSmalltalkExecutiveFromCallbackStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #enterSmalltalkExecutiveFromCallback.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testEstablishFrameForContextToReturnToStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #establishFrameForContextToReturnTo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testExecuteNewMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #executeNewMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'translation support' }
MASmokeStackInterpreterTranslationTest >> testExpandCasesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #expandCases.
	self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtABytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extABytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtBBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extBBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtJumpIfFalseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extJumpIfFalse.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtJumpIfTrueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extJumpIfTrue.
	self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtNopBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extNopBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtPushCharacterBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushCharacterBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtPushClosureBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushClosureBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtPushFullClosureBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushFullClosureBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtPushIntegerBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushIntegerBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtPushLiteralBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushLiteralBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtPushLiteralVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushLiteralVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtPushPseudoVariableOrOuterBytecodeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #extPushPseudoVariableOrOuterBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtPushPseudoVariableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushPseudoVariable.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtPushReceiverVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extPushReceiverVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtReturnTopFromBlockStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extReturnTopFromBlock.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtSendAbsentDynamicSuperBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extSendAbsentDynamicSuperBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtSendAbsentImplicitBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extSendAbsentImplicitBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtSendAbsentOuterBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extSendAbsentOuterBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtSendAbsentSelfBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extSendAbsentSelfBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtSendBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extSendBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtSendSuperBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extSendSuperBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtStoreAndPopLiteralVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #extStoreAndPopLiteralVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtStoreAndPopReceiverVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #extStoreAndPopReceiverVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtStoreLiteralVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extStoreLiteralVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtStoreReceiverVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extStoreReceiverVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtUnconditionalJumpStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extUnconditionalJump.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtendedPushBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extendedPushBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtendedStoreAndPopBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extendedStoreAndPopBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtendedStoreBytecodePopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extendedStoreBytecodePop:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testExtendedStoreBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #extendedStoreBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testExternalSetStackPageAndPointersForSuspendedContextOfProcessStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #externalSetStackPageAndPointersForSuspendedContextOfProcess:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterTranslationTest >> testExternalWriteBackHeadFramePointersStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #externalWriteBackHeadFramePointers.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterTranslationTest >> testExternalizeFPandSPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #externalizeFPandSP.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterTranslationTest >> testExternalizeIPandSPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #externalizeIPandSP.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter shell' }
MASmokeStackInterpreterTranslationTest >> testFetchByteStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fetchByte.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter shell' }
MASmokeStackInterpreterTranslationTest >> testFetchNextBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fetchNextBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'newspeak bytecode support' }
MASmokeStackInterpreterTranslationTest >> testFindApplicationOfTargetMixinstartingAtBehaviorStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #findApplicationOfTargetMixin:startingAtBehavior:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'handler search' }
MASmokeStackInterpreterTranslationTest >> testFindMethodWithPrimitiveFromFPUpToContextStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #findMethodWithPrimitive:FromFP:UpToContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testFindSPOrNilOfonstartingFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #findSPOrNilOf:on:startingFrom:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterTranslationTest >> testFindSelectorAndClassForMethodlookupClassdoStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #findSelectorAndClassForMethod:lookupClass:do:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testFindUnwindThroughContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #findUnwindThroughContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #finalization }
MASmokeStackInterpreterTranslationTest >> testFireEphemeronStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fireEphemeron:.
	self prettyPrintIllicium: illiAST
]

{ #category : #finalization }
MASmokeStackInterpreterTranslationTest >> testFireFinalizationStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fireFinalization:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testFirstByteIndexOfMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #firstByteIndexOfMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testFirstBytecodeOfAlternateHeadermethodStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #firstBytecodeOfAlternateHeader:method:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterTranslationTest >> testFlushAtCacheStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushAtCache.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testFlushBecommedClassesInMethodCacheStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushBecommedClassesInMethodCache.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testFlushBecommedClassesInMethodZoneStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushBecommedClassesInMethodZone.
	self prettyPrintIllicium: illiAST
]

{ #category : #'plugin primitive support' }
MASmokeStackInterpreterTranslationTest >> testFlushExternalPrimitiveTableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushExternalPrimitiveTable.
	self prettyPrintIllicium: illiAST
]

{ #category : #'plugin primitive support' }
MASmokeStackInterpreterTranslationTest >> testFlushExternalPrimitivesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushExternalPrimitives.
	self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterTranslationTest >> testFlushMethodCacheForMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushMethodCacheForMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterTranslationTest >> testFlushMethodCacheFromtoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushMethodCacheFrom:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterTranslationTest >> testFlushMethodCacheStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushMethodCache.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testFollowForwardedFieldsInCurrentMethodStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #followForwardedFieldsInCurrentMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testFollowForwardedMethodsInMethodCacheStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #followForwardedMethodsInMethodCache.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testFollowForwardedMethodsInMethodZoneStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followForwardedMethodsInMethodZone.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testFollowForwardingPointersInProfileStateStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #followForwardingPointersInProfileState.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testFollowForwardingPointersInSchedulerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #followForwardingPointersInScheduler.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testFollowForwardingPointersInSpecialObjectsArrayStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #followForwardingPointersInSpecialObjectsArray.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testFollowLiteralofMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followLiteral:ofMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testFollowSemaphoreInatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followSemaphoreIn:at:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testFrameCallerContextputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameCallerContext:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testFrameCallerFPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameCallerFP:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testFrameCallerSPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameCallerSP:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testFrameCallerSavedIPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameCallerSavedIP:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testFrameCallerStackPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameCallerStackPointer:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testFrameHasNativeFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameHasNativeFrame:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testFrameLastArgumentOffsetStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameLastArgumentOffset.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testFramePointerOfNativeArgumentinStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #framePointerOfNativeArgument:in:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testFramePointerOfNativeLocalinStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #framePointerOfNativeLocal:in:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testFrameReceiverLocationStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameReceiverLocation:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testFrameStackedReceiverOffsetNumArgsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameStackedReceiverOffsetNumArgs:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testFrameStackedReceivernumArgsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameStackedReceiver:numArgs:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testFreeUnmarkedMachineCodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeUnmarkedMachineCode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterTranslationTest >> testFullClosureInnumArgsnumCopiedValuescompiledBlockStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #fullClosureIn:numArgs:numCopiedValues:compiledBlock:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'plugin primitive support' }
MASmokeStackInterpreterTranslationTest >> testFunctionForPrimitiveCalloutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #functionForPrimitiveCallout.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testGetCodeCompactionCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getCodeCompactionCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testGetCodeCompactionMSecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getCodeCompactionMSecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testGetCogCodeSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getCogCodeSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testGetCogMethodCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getCogMethodCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testGetCogVMFeatureFlagsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getCogVMFeatureFlags.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testGetCogVMFlagsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getCogVMFlags.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testGetGCModeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getGCMode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterTranslationTest >> testGetImageHeaderFlagsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getImageHeaderFlags.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterTranslationTest >> testGetLongFromFileswapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getLongFromFile:swap:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterTranslationTest >> testGetShortFromFileswapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getShortFromFile:swap:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testHandleSpecialSelectorSendFaultForStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #handleSpecialSelectorSendFaultFor:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterTranslationTest >> testHighestPriorityProcessStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #highestPriorityProcess.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testIfAppropriateCompileToNativeCodeselectorStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #ifAppropriateCompileToNativeCode:selector:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterTranslationTest >> testIfBackwardsCheckForEventsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ifBackwardsCheckForEvents:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testIfSoAssertValidIPAssignofContextwithStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #ifSoAssertValidIPAssign:ofContext:with:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testIframeInstructionPointerForIndexmethodStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #iframeInstructionPointerForIndex:method:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testIframeIsBlockActivationStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #iframeIsBlockActivation:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterTranslationTest >> testImageFormatCompatibilityVersionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #imageFormatCompatibilityVersion.
	self prettyPrintIllicium: illiAST
]

{ #category : #'simulation support' }
MASmokeStackInterpreterTranslationTest >> testInitExtensionsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initExtensions.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testInitStackPageGCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initStackPageGC.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterTranslationTest >> testInitStackPagesAndInterpretStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initStackPagesAndInterpret.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterTranslationTest >> testInitStackPagesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initStackPages.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterTranslationTest >> testInitialCleanupStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initialCleanup.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testInitialIPForHeadermethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initialIPForHeader:method:.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterTranslationTest >> testInitializeExtraClassInstVarIndicesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeExtraClassInstVarIndices.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterTranslationTest >> testInitializeInterpreterStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeInterpreter:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterTranslationTest >> testInitializePageTraceToInvalidStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializePageTraceToInvalid:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterTranslationTest >> testInlineLookupInMethodCacheSelclassTagStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #inlineLookupInMethodCacheSel:classTag:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'method lookup cache' }
MASmokeStackInterpreterTranslationTest >> testInlineLookupInNSMethodCacheSelclassTagmethodlookupRuleStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #inlineLookupInNSMethodCacheSel:classTag:method:lookupRule:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testInstVarofContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #instVar:ofContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testInstVarofContextputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #instVar:ofContext:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterTranslationTest >> testInstallinAtCacheatstringStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #install:inAtCache:at:string:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testInternalAboutToReturnthroughStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalAboutToReturn:through:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testInternalActivateNewMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalActivateNewMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testInternalCannotReturnStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalCannotReturn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testInternalExecuteNewMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalExecuteNewMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testInternalFindNewMethodDynamicSuperStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalFindNewMethodDynamicSuper.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testInternalFindNewMethodImplicitReceiverStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #internalFindNewMethodImplicitReceiver.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testInternalFindNewMethodOrdinaryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalFindNewMethodOrdinary.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testInternalFindNewMethodOuterStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalFindNewMethodOuter:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testInternalMustBeBooleanStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalMustBeBoolean.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPopStackFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPopStackFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPopStackIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPopStackInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPopStackNativeSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPopStackNativeSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPopStackPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPopStackPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPopStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPopStack.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPop:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPopthenPushStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPop:thenPush:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPushFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPushFloat32:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPushIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPushInt32:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPushPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPushPointer:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPushShadowCallStackFloatStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #internalPushShadowCallStackFloat32:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPushShadowCallStackIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPushShadowCallStackInt32:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPushShadowCallStackPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #internalPushShadowCallStackPointer:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPushShadowCallStackSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPushShadowCallStackSpace:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPushShadowCallStackStructuresizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #internalPushShadowCallStackStructure:size:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalPushStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalPush:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testInternalQuickPrimitiveResponseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalQuickPrimitiveResponse.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalStackTopPutIntegerObjectOfStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #internalStackTopPutIntegerObjectOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalStackTopPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalStackTopPut:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalStackTopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalStackTop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalStackValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalStackValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testInternalStackValueputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalStackValue:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterTranslationTest >> testInternalizeIPandSPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #internalizeIPandSP.
	self prettyPrintIllicium: illiAST
]

{ #category : #'I/O primitive support' }
MASmokeStackInterpreterTranslationTest >> testIoBeDisplaywidthheightdepthStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ioBeDisplay:width:height:depth:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testIsCogStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isCog.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterTranslationTest >> testIsEmptyListStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isEmptyList:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testIsExternalPrimitiveCallStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isExternalPrimitiveCall:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testIsMachineCodeFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isMachineCodeFrame:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testIsNullExternalPrimitiveCallStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isNullExternalPrimitiveCall:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testIsOptimizedMethodHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isOptimizedMethodHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testIsOptimizedMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isOptimizedMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testIsPrivateMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isPrivateMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testIsProtectedMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isProtectedMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testIsPublicMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isPublicMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testIsStillMarriedContextDuringGCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isStillMarriedContextDuringGC:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testIsStillMarriedContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isStillMarriedContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testIsVanillaBlockClosureStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isVanillaBlockClosure:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testIsmethodAssignmentToContextWithMachineCodePCStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #is:methodAssignmentToContextWithMachineCodePC:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testJumpBinaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #jumpBinaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterTranslationTest >> testJumpStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #jump:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testJumpTrinaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #jumpTrinaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testJumpUnaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #jumpUnaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterTranslationTest >> testJumplfFalseByStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #jumplfFalseBy:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterTranslationTest >> testJumplfTrueByStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #jumplfTrueBy:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testJustActivateNewMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #justActivateNewMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testLiteralCountOfAlternateHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #literalCountOfAlternateHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testLiteralCountOfOriginalHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #literalCountOfOriginalHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testLiteralStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #literal:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testLiteralofMethodputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #literal:ofMethod:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterTranslationTest >> testLongJumpIfFalseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #longJumpIfFalse.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterTranslationTest >> testLongJumpIfTrueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #longJumpIfTrue.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testLongPushTemporaryVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #longPushTemporaryVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testLongStoreAndPopTemporaryVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #longStoreAndPopTemporaryVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testLongStoreTemporaryVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #longStoreTemporaryVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterTranslationTest >> testLongUnconditionalJumpStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #longUnconditionalJump.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterTranslationTest >> testLookupBreakForStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupBreakFor:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testLookupDynamicSuperSendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupDynamicSuperSend.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testLookupImplicitReceiverSendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupImplicitReceiverSend.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testLookupLexicalfromruleStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupLexical:from:rule:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testLookupMNUInClassStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupMNUInClass:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testLookupMNUStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupMNU.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testLookupMethodForInDictionaryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupMethodFor:InDictionary:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testLookupMethodInDictionaryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupMethodInDictionary:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testLookupOrdinarySendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupOrdinarySend.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testLookupOuterSendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupOuterSend:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testLookupProtectedstartingAtruleStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lookupProtected:startingAt:rule:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive dispatch generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodeBinaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodeBinaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive ffi abi' }
MASmokeStackInterpreterTranslationTest >> testLowcodeCalloutStatecallFunctionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodeCalloutState:callFunction:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive ffi abi' }
MASmokeStackInterpreterTranslationTest >> testLowcodeDoCalloutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodeDoCallout:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive dispatch generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodeNullaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodeNullaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveAddStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveAdd32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveAllocaStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveAlloca64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveAndStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveAnd32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveArithmeticRightShiftStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveArithmeticRightShift32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveBeginCallStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveBeginCall.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveBooleanToOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveBoolean64ToOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveByteSizeOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveByteSizeOf.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveCallArgumentFloatStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveCallArgumentFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveCallArgumentIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveCallArgumentInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveCallArgumentPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveCallArgumentPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveCallArgumentSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveCallArgumentSpace.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveCallArgumentStructureStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveCallArgumentStructure.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveCallInstructionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveCallInstruction.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveCallPhysicalStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveCallPhysical.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveCheckSessionIdentifierStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveCheckSessionIdentifier.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveCompareAndSwapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveCompareAndSwap32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveDivStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveDiv32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveDuplicateFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveDuplicateFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveDuplicateIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveDuplicateInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveDuplicatePointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveDuplicatePointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveEffectiveAddressStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveEffectiveAddress32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveEndCallNoCleanupStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveEndCallNoCleanup.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveEndCallStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveEndCall.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFirstFieldPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFirstFieldPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFirstIndexableFieldPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveFirstIndexableFieldPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatAddStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Add.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatDivStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32Div.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32Equal.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatGreatEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64GreatEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatGreatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32Great.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatLessEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32LessEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatLessStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Less.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatMulStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Mul.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatNegStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Neg.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatNotEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64NotEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatSqrtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64Sqrt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatSubStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32Sub.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatToFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64ToFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatToIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat32ToInt64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatToOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64ToOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFloatToUIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFloat64ToUInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveFreeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveFree.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveInstantiateIndexableOopStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveInstantiateIndexable32Oop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveInstantiateOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInstantiateOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIntEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64Equal.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIntGreatEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64GreatEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIntGreatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64Great.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIntLessEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64LessEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIntLessStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt32Less.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIntNotEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64NotEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIntToFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64ToFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIntToOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt32ToOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIntToPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveInt64ToPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIsBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveIsBytes.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIsFloatObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveIsFloatObject.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIsIndexableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveIsIndexable.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIsIntegerObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveIsIntegerObject.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIsPointersStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveIsPointers.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIsWordsOrBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveIsWordsOrBytes.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveIsWordsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveIsWords.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLeftShiftStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLeftShift32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadArgumentAddressStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadArgumentAddress.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadArgumentFloatStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadArgumentFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadArgumentIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadArgumentInt64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadArgumentPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadArgumentPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadArgumentUIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadArgumentUInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadFloatFromMemoryStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadFloat32FromMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadIntFromMemoryStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadInt64FromMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadLocalAddressStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalAddress.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadLocalFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalFloat64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadLocalIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadLocalPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadLocalUIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadLocalUInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadObjectAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadObjectAt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadObjectFieldStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLoadObjectField.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadPointerFromMemoryStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadPointerFromMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLoadUIntFromMemoryStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveLoadUInt8FromMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLocalFrameSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLocalFrameSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLockRegistersStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLockRegisters.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveLockVMStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveLockVM.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveMallocStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveMalloc32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveMemcpyFixedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveMemcpyFixed.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveMemcpyStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveMemcpy64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveMoveFloatToPhysicalStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveMoveFloat64ToPhysical.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveMoveIntToPhysicalStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveMoveInt32ToPhysical.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveMovePointerToPhysicalStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveMovePointerToPhysical.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveMulStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveMul32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveNegStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveNeg32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveNotStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveNot64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveOopEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOopEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveOopNotEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOopNotEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveOopSmallIntegerToIntStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveOopSmallIntegerToInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveOopToBooleanStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToBoolean32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveOopToFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveOopToIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveOopToPointerReinterpretStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveOopToPointerReinterpret.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveOopToPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveOopToUIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOopToUInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveOrStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveOr32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePerformCalloutIndirectStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePerformCalloutIndirect.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePerformCalloutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePerformCallout.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePinStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePin.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePlaftormCodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePlaftormCode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePointerAddConstantOffsetStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePointerAddConstantOffset.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePointerAddOffsetStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePointerAddOffset32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePointerEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePointerEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePointerNotEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePointerNotEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePointerToIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePointerToInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePointerToOopReinterprerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePointerToOopReinterprer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePointerToOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePointerToOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePopFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePopFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePopIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePopInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePopMultipleNativeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePopMultipleNative.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePopPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePopPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePushCalloutResultFloatStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushCalloutResultFloat64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePushCalloutResultIntStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushCalloutResultInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePushCalloutResultPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushCalloutResultPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePushConstantUIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePushConstantUInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePushNullPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePushNullPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePushOneFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePushOneFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePushOneStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePushOne32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePushPhysicalFloatStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushPhysicalFloat64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePushPhysicalIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePushPhysicalInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePushPhysicalPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushPhysicalPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePushSessionIdentifierStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitivePushSessionIdentifier.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePushZeroFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePushZeroFloat32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitivePushZeroStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitivePushZero32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveRemStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveRem32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveRightShiftStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveRightShift32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveSignExtendFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveSignExtend64From32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveSmallIntToOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveSmallInt32ToOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveStoreFloatToMemoryStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveStoreFloat64ToMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveStoreIntToMemoryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreInt16ToMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveStoreLocalFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreLocalFloat64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveStoreLocalIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreLocalInt32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveStoreLocalPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreLocalPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveStoreObjectFieldAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreObjectFieldAt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveStoreObjectFieldStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveStoreObjectField.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveStorePointerToMemoryStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodePrimitiveStorePointerToMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveSubStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveSub64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveTruncateToStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveTruncate32To8.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveUdivStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUdiv64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveUintGreatEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUint32GreatEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveUintGreatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUint64Great.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveUintLessEqualStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUint64LessEqual.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveUintLessStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUint64Less.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveUintToFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUint32ToFloat64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveUintToOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUint32ToOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveUmulStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUmul64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveUnlockRegistersStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUnlockRegisters.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveUnlockVMStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUnlockVM.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveUnpinStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUnpin.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveUremStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveUrem64.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveXorStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveXor32.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodePrimitiveZeroExtendFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodePrimitiveZeroExtend32From8.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive support' }
MASmokeStackInterpreterTranslationTest >> testLowcodeStoreLocalIntWorkaroundinspStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #lowcodeStoreLocalInt64Workaround:in:sp:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive dispatch generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodeTrinaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodeTrinaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive dispatch generated code' }
MASmokeStackInterpreterTranslationTest >> testLowcodeUnaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcodeUnaryInlinePrimitive2:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive support' }
MASmokeStackInterpreterTranslationTest >> testLowcodememcpyStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowcode_mem:cp:y:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testMapMachineCodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mapMachineCode:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testMapProfileStateStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mapProfileState.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testMapTraceLogsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mapTraceLogs.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testMapVMRegistersStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mapVMRegisters.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testMappedBackjumpAlwaysInterruptStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mappedBackjumpAlwaysInterrupt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testMappedDirectCallStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mappedDirectCall.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testMappedEnsureEnoughWordsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mappedEnsureEnoughWords.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testMappedImmcheckDataAtPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mappedImmcheckDataAtPut:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testMappedImmcheckMaybeContextStoreCheckPointerAtPutStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #mappedImmcheckMaybeContextStoreCheckPointerAtPut.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testMappedImmcheckStoreCheckPointerAtPutStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #mappedImmcheckStoreCheckPointerAtPut.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testMarkAndTraceAndMaybeFreeStackPagesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #markAndTraceAndMaybeFreeStackPages:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testMarkAndTraceInterpreterOopsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndTraceInterpreterOops:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testMarkAndTraceMachineCodeOfMarkedMethodsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #markAndTraceMachineCodeOfMarkedMethods.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testMarkAndTraceOrFreeMachineCodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndTraceOrFreeMachineCode:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testMarkAndTracePrimTraceLogStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndTracePrimTraceLog.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testMarkAndTraceTraceLogStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndTraceTraceLog.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testMarkContextAsDeadStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markContextAsDead:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testMarryFrameSPcopyTempsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #marryFrame:SP:copyTemps:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testMaybeFailForLastObjectOverwriteStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maybeFailForLastObjectOverwrite.
	self prettyPrintIllicium: illiAST
]

{ #category : #'cog jit support' }
MASmokeStackInterpreterTranslationTest >> testMaybeFixClonedCompiledMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maybeFixClonedCompiledMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testMaybeFlagMethodAsInterpretedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maybeFlagMethodAsInterpreted:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testMaybeInlinePositiveBitIntegerForStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #maybeInlinePositive32BitIntegerFor:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testMaybeRetryPrimitiveOnFailureStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maybeRetryPrimitiveOnFailure.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testMaybeReturnToMachineCodeFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maybeReturnToMachineCodeFrame.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterTranslationTest >> testMaybeTraceStackOverflowStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maybeTraceStackOverflow.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testMethodHeaderHasPrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #methodHeaderHasPrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testMframeCogMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mframeCogMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testMicrosecondsToMillisecondsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #microsecondsToMilliseconds:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterTranslationTest >> testMnuBreakpointreceiverStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mnuBreakpoint:receiver:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testNacFetchStackPointerOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nacFetchStackPointerOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testNativeFramePointerInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativeFramePointerIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testNativeFramePointerInputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativeFramePointerIn:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testNativeFrameSignalObjectInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativeFrameSignalObjectIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testNativeFrameSignalObjectInputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativeFrameSignalObjectIn:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testNativePreviousStackPointerInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativePreviousStackPointerIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testNativePreviousStackPointerInputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativePreviousStackPointerIn:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testNativeStackPointerInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativeStackPointerIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testNativeStackPointerInputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativeStackPointerIn:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterTranslationTest >> testNativeStackSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nativeStackSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testNoAssertHeaderOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #noAssertHeaderOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testNoFixupSuperclassOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #noFixupSuperclassOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testNoInlineSignedBitIntegerGutsForStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #noInlineSigned32BitIntegerGutsFor:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testNormalSendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #normalSend.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testNullaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nullaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterTranslationTest >> testOkayFieldsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #okayFields:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterTranslationTest >> testOkayInterpreterObjectsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #okayInterpreterObjects.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testPopAndPushIntegerIfOKStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pop2AndPushIntegerIfOK:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testPopFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #popFloat.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testPopPosBitIntegerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #popPos32BitInteger.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPopStackBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #popStackBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testPopthenPushBoolStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pop:thenPushBool:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testPopthenPushFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pop:thenPushFloat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testPopthenPushIntegerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pop:thenPushInteger:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testPostBecomeActionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #postBecomeAction:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testPostGCActionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #postGCAction:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testPreBecomeActionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #preBecomeAction.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testPreGCActionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #preGCAction:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testPrimitiveAccessorDepthForExternalPrimitiveMethodStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #primitiveAccessorDepthForExternalPrimitiveMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeStackInterpreterTranslationTest >> testPrimitiveFloatAddtoArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatAdd:toArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeStackInterpreterTranslationTest >> testPrimitiveFloatDividebyArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatDivide:byArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterTranslationTest >> testPrimitiveFloatEqualtoArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatEqual:toArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterTranslationTest >> testPrimitiveFloatGreaterOrEqualtoArgStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #primitiveFloatGreaterOrEqual:toArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterTranslationTest >> testPrimitiveFloatGreaterthanArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatGreater:thanArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterTranslationTest >> testPrimitiveFloatLessOrEqualtoArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatLessOrEqual:toArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'comparison float primitives' }
MASmokeStackInterpreterTranslationTest >> testPrimitiveFloatLessthanArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatLess:thanArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeStackInterpreterTranslationTest >> testPrimitiveFloatMultiplybyArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatMultiply:byArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeStackInterpreterTranslationTest >> testPrimitiveFloatSubtractfromArgStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveFloatSubtract:fromArg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeStackInterpreterTranslationTest >> testPrimitiveObjectperformwithArgumentslookedUpInStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #primitiveObject:perform:withArguments:lookedUpIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testPrintAtCacheStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printAtCache.
	self prettyPrintIllicium: illiAST
]

{ #category : #printing }
MASmokeStackInterpreterTranslationTest >> testPrintDecodeMethodHeaderOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printDecodeMethodHeaderOop:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testPrintFrameAndCallersSPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printFrameAndCallers:SP:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testPrintFrameOopindexatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printFrameOop:index:at:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testPrintHeadFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printHeadFrame.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testPrintHexPtrStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printHexPtr:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testPrintHexPtrnpStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printHexPtrnp:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testPrintHexnpnpStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printHexnpnp:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testPrintMethodFieldForPrintContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printMethodFieldForPrintContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testPrintMethodHeaderOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printMethodHeaderOop:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testPrintOopShortInnerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printOopShortInner:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testPrintPageHeadFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printPageHeadFrame.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testPrintSendsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printSends.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testPrintStackPageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printStackPage:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testPrintUnbalancedStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printUnbalancedStack:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushActiveContextBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushActiveContextBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushClosureCopyCopiedValuesBytecodeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #pushClosureCopyCopiedValuesBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushClosureNumArgscopiedValuesblockSizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #pushClosureNumArgs:copiedValues:blockSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushConstantFalseBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushConstantFalseBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushConstantMinusOneBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushConstantMinusOneBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushConstantNilBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushConstantNilBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushConstantOneBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushConstantOneBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushConstantTrueBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushConstantTrueBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushConstantTwoBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushConstantTwoBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushConstantZeroBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushConstantZeroBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushEnclosingObjectBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushEnclosingObjectBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushFullClosureNumArgscopiedValuescompiledBlockreceiverIsOnStackignoreContextStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #pushFullClosureNumArgs:copiedValues:compiledBlock:receiverIsOnStack:ignoreContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushLiteralConstantBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushLiteralConstantBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushLiteralConstantStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushLiteralConstant:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushLiteralVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushLiteralVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushLiteralVariableCasesBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushLiteralVariable16CasesBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushLiteralVariableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushLiteralVariable:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushMaybeContextReceiverVariableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushMaybeContextReceiverVariable:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushMaybeContextreceiverVariableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushMaybeContext:receiverVariable:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushNewArrayBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushNewArrayBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushReceiverBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushReceiverBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushReceiverVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushReceiverVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushReceiverVariableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushReceiverVariable:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushRemoteTempLongBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushRemoteTempLongBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushRemoteTempinVectorAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushRemoteTemp:inVectorAt:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushTemporaryVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushTemporaryVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testPushTemporaryVariableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pushTemporaryVariable:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testQuaternaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #quaternaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testQuinaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #quinaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testReceiverStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #receiver.
	self prettyPrintIllicium: illiAST
]

{ #category : #'inline primitive ffi abi' }
MASmokeStackInterpreterTranslationTest >> testReloadLowcodeStateAfterCalloutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #reloadLowcodeStateAfterCallout.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testRemapCallbackStateStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #remapCallbackState.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterTranslationTest >> testRemoveProcessfromListStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #removeProcess:fromList:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testRespondToSistaTrapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #respondToSistaTrap.
	self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterTranslationTest >> testRespondToUnknownBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #respondToUnknownBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'callback support' }
MASmokeStackInterpreterTranslationTest >> testRestoreCStackStateForCallbackContextStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #restoreCStackStateForCallbackContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterTranslationTest >> testRestoreStackLimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #restoreStackLimit.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testReturnFalseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #returnFalse.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testReturnNilFromBlockStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #returnNilFromBlock.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testReturnNilStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #returnNil.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testReturnReceiverStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #returnReceiver.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testReturnTopFromBlockStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #returnTopFromBlock.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testReturnTopFromMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #returnTopFromMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'return bytecodes' }
MASmokeStackInterpreterTranslationTest >> testReturnTrueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #returnTrue.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterTranslationTest >> testReverseBytesInImageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #reverseBytesInImage.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testSafeFindFrameAboveonstartingFromStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #safeFindFrameAbove:on:startingFrom:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testSaneMethodClassAssociationInnumLiteralsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #saneMethodClassAssociationIn:numLiterals:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'callback support' }
MASmokeStackInterpreterTranslationTest >> testSaveCStackStateForCallbackContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #saveCStackStateForCallbackContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterTranslationTest >> testSchedulerPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #schedulerPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testSecondExtendedSendBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #secondExtendedSendBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testSelectorOfContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #selectorOfContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testSendAbsentImplicitArgsBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sendAbsentImplicit0ArgsBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterTranslationTest >> testSendBreakpointreceiverStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sendBreakpoint:receiver:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testSendLiteralSelectorArgBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sendLiteralSelector1ArgBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testSendLiteralSelectorArgsBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sendLiteralSelector0ArgsBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testSetCheckAllocFillerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setCheckAllocFiller:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testSetCogVMFlagsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setCogVMFlags:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testSetDesiredCogCodeSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setDesiredCogCodeSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testSetFrameContexttoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setFrameContext:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testSetFrameHasContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setFrameHasContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testSetFrameHasNativeFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setFrameHasNativeFrame:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testSetFrameHasNotNativeFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setFrameHasNotNativeFrame:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testSetGCModeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setGCMode:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterTranslationTest >> testSetHeadFPandSPinPageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setHeadFP:andSP:inPage:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterTranslationTest >> testSetImageHeaderFlagsFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setImageHeaderFlagsFrom:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterTranslationTest >> testSetMaxExtSemSizeToStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setMaxExtSemSizeTo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testSetMethodClassAssociationOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setMethodClassAssociationOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testSetMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testSetMethodmethodHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setMethod:methodHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterTranslationTest >> testSetStackPageAndLimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setStackPageAndLimit:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterTranslationTest >> testSetStackPointersFromPageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setStackPointersFromPage:.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeStackInterpreterTranslationTest >> testSetupNativeStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setupNativeStack.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testShadowCallStackPointerInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shadowCallStackPointerIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testShadowCallStackPointerInputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shadowCallStackPointerIn:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterTranslationTest >> testShadowCallStackSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shadowCallStackSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterTranslationTest >> testShortConditionalJumpFalseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shortConditionalJumpFalse.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterTranslationTest >> testShortConditionalJumpTrueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shortConditionalJumpTrue.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testShortPrintFramesInCurrentPageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shortPrintFramesInCurrentPage.
	self prettyPrintIllicium: illiAST
]

{ #category : #'jump bytecodes' }
MASmokeStackInterpreterTranslationTest >> testShortUnconditionalJumpStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shortUnconditionalJump.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testShuffleArgumentsAndStoreAbsentReceiverStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #shuffleArgumentsAndStoreAbsentReceiver:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testSiglongjmpStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #siglong:jmp:.
	self prettyPrintIllicium: illiAST
]

{ #category : #utilities }
MASmokeStackInterpreterTranslationTest >> testSignExtendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #signExtend16:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitive support' }
MASmokeStackInterpreterTranslationTest >> testSignalFinalizationStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #signalFinalization:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testSingleExtendedSendBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #singleExtendedSendBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testSingleExtendedSuperBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #singleExtendedSuperBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testSistaInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sistaInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testSistaMappedInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sistaMappedInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeStackInterpreterTranslationTest >> testSlowPrimitiveResponseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #slowPrimitiveResponse.
	self prettyPrintIllicium: illiAST
]

{ #category : #'message sending' }
MASmokeStackInterpreterTranslationTest >> testSpecialSelectorNumArgsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #specialSelectorNumArgs:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testStackPointerIndexForFrameWithSPStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #stackPointerIndexForFrame:WithSP:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testStackPointerIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #stackPointerIndex.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack access' }
MASmokeStackInterpreterTranslationTest >> testStackTopPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #stackTopPut:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack access' }
MASmokeStackInterpreterTranslationTest >> testStackValueputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #stackValue:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testStartPCOfMethodHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #startPCOfMethodHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testStoreAndPopReceiverVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storeAndPopReceiverVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testStoreAndPopRemoteTempLongBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeAndPopRemoteTempLongBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testStoreAndPopTemporaryVariableBytecodeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storeAndPopTemporaryVariableBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testStoreLiteralVariablewithValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeLiteralVariable:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testStoreMaybeContextReceiverVariablewithValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storeMaybeContextReceiverVariable:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testStoreMaybeContextreceiverVariablewithValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storeMaybeContext:receiverVariable:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testStoreRemoteTempLongBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeRemoteTempLongBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack bytecodes' }
MASmokeStackInterpreterTranslationTest >> testStoreRemoteTempinVectorAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeRemoteTemp:inVectorAt:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testStoreStackPointerValueinContextStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeStackPointerValue:inContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterTranslationTest >> testSubscriptwithformatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #subscript:with:format:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeStackInterpreterTranslationTest >> testSubscriptwithstoringformatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #subscript:with:storing:format:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'send bytecodes' }
MASmokeStackInterpreterTranslationTest >> testSuperclassSendStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #superclassSend.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeStackInterpreterTranslationTest >> testTabStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #tab.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testTemporaryLocationinnumArgsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #temporaryLocation:in:numArgs:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testTemporaryinStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #temporary:in:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testTemporaryinputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #temporary:in:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object memory support' }
MASmokeStackInterpreterTranslationTest >> testTraceProfileStateStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #traceProfileState.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testTrinaryAtPutInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #trinaryAtPutInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testTrinaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #trinaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'internal interpreter access' }
MASmokeStackInterpreterTranslationTest >> testUnPopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unPop:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterTranslationTest >> testUnaryClassPrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unaryClassPrimitive.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterTranslationTest >> testUnaryConvertInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unaryConvertInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterTranslationTest >> testUnaryHashInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unaryHashInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterTranslationTest >> testUnaryInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unaryInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterTranslationTest >> testUnaryNewInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unaryNewInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterTranslationTest >> testUnaryPossibleRootInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unaryPossibleRootInlinePrimitive.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterTranslationTest >> testUnarySizeInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unarySizeInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista inline primitives - unary' }
MASmokeStackInterpreterTranslationTest >> testUnaryUnforwardInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unaryUnforwardInlinePrimitive:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testUnconditionnalTrapBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unconditionnalTrapBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter shell' }
MASmokeStackInterpreterTranslationTest >> testUndoFetchNextBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #undoFetchNextBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compiled methods' }
MASmokeStackInterpreterTranslationTest >> testUnfollowTempVectoratIndexinStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unfollowTempVector:atIndex:in:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'miscellaneous bytecodes' }
MASmokeStackInterpreterTranslationTest >> testUnknownBytecodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unknownBytecode.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sista bytecodes' }
MASmokeStackInterpreterTranslationTest >> testUnknownInlinePrimitiveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unknownInlinePrimitive.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterTranslationTest >> testUnknownShortOrCodeSizeInKsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unknownShortOrCodeSizeInKs.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterTranslationTest >> testUpdateObjectsPostByteSwapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updateObjectsPostByteSwap.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeStackInterpreterTranslationTest >> testValidBCPCinMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #validBCPC:inMethod:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testWithSmallIntegerTagsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #withSmallIntegerTags:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'frame access' }
MASmokeStackInterpreterTranslationTest >> testWithoutSmallIntegerTagsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #withoutSmallIntegerTags:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image save/restore' }
MASmokeStackInterpreterTranslationTest >> testWordSwappedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #wordSwapped:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterTranslationTest >> testWriteBackHeadFramePointersStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #writeBackHeadFramePointers.
	self prettyPrintIllicium: illiAST
]

{ #category : #'stack pages' }
MASmokeStackInterpreterTranslationTest >> testZeroStackPageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #zeroStackPage.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeStackInterpreterTranslationTest >> translator [
	^ MAStackInterpreterRessource current translator
]
