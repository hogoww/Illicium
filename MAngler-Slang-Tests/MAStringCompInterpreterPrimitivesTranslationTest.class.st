Class {
	#name : #MAStringCompInterpreterPrimitivesTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MAStringCompInterpreterPrimitivesTranslationTest >> setUp [
	super setUp.
	testedClass := InterpreterPrimitives
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testCStringOrNullForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #cStringOrNullFor:.
	illiAST := self generateIllicium: #cStringOrNullFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testCanBeImmutableStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #canBeImmutable:.
	illiAST := self generateIllicium: #canBeImmutable:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testFailedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #failed.
	illiAST := self generateIllicium: #failed.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testIsNegativeIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isNegativeIntegerValueOf:.
	illiAST := self generateIllicium: #isNegativeIntegerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testIsPositiveMachineIntegerObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isPositiveMachineIntegerObject:.
	illiAST := self generateIllicium: #isPositiveMachineIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testMagnitudeBitIntegerFornegStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #magnitude64BitIntegerFor:neg:.
	illiAST := self generateIllicium: #magnitude64BitIntegerFor:neg:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testMagnitudeBitValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #magnitude64BitValueOf:.
	illiAST := self generateIllicium: #magnitude64BitValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPositiveBitValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #positive32BitValueOf:.
	illiAST := self generateIllicium: #positive32BitValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPositiveMachineIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #positiveMachineIntegerValueOf:.
	illiAST := self generateIllicium: #positiveMachineIntegerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveAddLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAddLargeIntegers.
	illiAST := self generateIllicium: #primitiveAddLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveAddStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAdd.
	illiAST := self generateIllicium: #primitiveAdd.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveAdoptInstanceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAdoptInstance.
	illiAST := self generateIllicium: #primitiveAdoptInstance.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveAllInstancesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAllInstances.
	illiAST := self generateIllicium: #primitiveAllInstances.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveAllObjectsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAllObjects.
	illiAST := self generateIllicium: #primitiveAllObjects.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveArctanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveArctan.
	illiAST := self generateIllicium: #primitiveArctan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveArrayBecomeOneWayCopyHashStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveArrayBecomeOneWayCopyHash.
	illiAST := self generateIllicium: #primitiveArrayBecomeOneWayCopyHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveArrayBecomeOneWayNoCopyHashStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveArrayBecomeOneWayNoCopyHash.
	illiAST := self
		generateIllicium: #primitiveArrayBecomeOneWayNoCopyHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveArrayBecomeOneWayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveArrayBecomeOneWay.
	illiAST := self generateIllicium: #primitiveArrayBecomeOneWay.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveArrayBecomeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveArrayBecome.
	illiAST := self generateIllicium: #primitiveArrayBecome.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveAsCharacterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAsCharacter.
	illiAST := self generateIllicium: #primitiveAsCharacter.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveAsFloatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAsFloat.
	illiAST := self generateIllicium: #primitiveAsFloat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAtPut.
	illiAST := self generateIllicium: #primitiveAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAt.
	illiAST := self generateIllicium: #primitiveAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveBeCursorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBeCursor.
	illiAST := self generateIllicium: #primitiveBeCursor.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveBeDisplayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBeDisplay.
	illiAST := self generateIllicium: #primitiveBeDisplay.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveBeepStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBeep.
	illiAST := self generateIllicium: #primitiveBeep.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveBehaviorHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBehaviorHash.
	illiAST := self generateIllicium: #primitiveBehaviorHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveBitAndLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitAndLargeIntegers.
	illiAST := self generateIllicium: #primitiveBitAndLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveBitAndStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitAnd.
	illiAST := self generateIllicium: #primitiveBitAnd.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveBitOrLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitOrLargeIntegers.
	illiAST := self generateIllicium: #primitiveBitOrLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveBitOrStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitOr.
	illiAST := self generateIllicium: #primitiveBitOr.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveBitShiftLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitShiftLargeIntegers.
	illiAST := self generateIllicium: #primitiveBitShiftLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveBitShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitShift.
	illiAST := self generateIllicium: #primitiveBitShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveBitXorLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitXorLargeIntegers.
	illiAST := self generateIllicium: #primitiveBitXorLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveBitXorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitXor.
	illiAST := self generateIllicium: #primitiveBitXor.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveBytesLeftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBytesLeft.
	illiAST := self generateIllicium: #primitiveBytesLeft.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveCalloutToFFIStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCalloutToFFI.
	illiAST := self generateIllicium: #primitiveCalloutToFFI.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveChangeClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveChangeClass.
	illiAST := self generateIllicium: #primitiveChangeClass.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClass.
	illiAST := self generateIllicium: #primitiveClass.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveClearVMProfileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClearVMProfile.
	illiAST := self generateIllicium: #primitiveClearVMProfile.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveClipboardTextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClipboardText.
	illiAST := self generateIllicium: #primitiveClipboardText.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveClockLogAddressesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClockLogAddresses.
	illiAST := self generateIllicium: #primitiveClockLogAddresses.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveClosureValueNoContextSwitchStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveClosureValueNoContextSwitch.
	illiAST := self
		generateIllicium: #primitiveClosureValueNoContextSwitch.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveClosureValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClosureValue.
	illiAST := self generateIllicium: #primitiveClosureValue.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveClosureValueWithArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClosureValueWithArgs.
	illiAST := self generateIllicium: #primitiveClosureValueWithArgs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveCoarseLocalMicrosecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveCoarseLocalMicrosecondClock.
	illiAST := self
		generateIllicium: #primitiveCoarseLocalMicrosecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveCoarseUTCMicrosecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveCoarseUTCMicrosecondClock.
	illiAST := self generateIllicium: #primitiveCoarseUTCMicrosecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveCompareBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCompareBytes.
	illiAST := self generateIllicium: #primitiveCompareBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'string primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveCompareWithStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCompareWith.
	illiAST := self generateIllicium: #primitiveCompareWith.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'sound primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveConstantFillStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveConstantFill.
	illiAST := self generateIllicium: #primitiveConstantFill.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveControlVMProfilingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveControlVMProfiling.
	illiAST := self generateIllicium: #primitiveControlVMProfiling.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveCopyObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCopyObject.
	illiAST := self generateIllicium: #primitiveCopyObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveCrashVMStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCrashVM.
	illiAST := self generateIllicium: #primitiveCrashVM.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveDisablePowerManagerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDisablePowerManager.
	illiAST := self generateIllicium: #primitiveDisablePowerManager.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveDivLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDivLargeIntegers.
	illiAST := self generateIllicium: #primitiveDivLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveDivStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDiv.
	illiAST := self generateIllicium: #primitiveDiv.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveDivideLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDivideLargeIntegers.
	illiAST := self generateIllicium: #primitiveDivideLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveDivideStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDivide.
	illiAST := self generateIllicium: #primitiveDivide.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveEnterCriticalSectionStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveEnterCriticalSection.
	illiAST := self generateIllicium: #primitiveEnterCriticalSection.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveEqualLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveEqualLargeIntegers.
	illiAST := self generateIllicium: #primitiveEqualLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveEqual.
	illiAST := self generateIllicium: #primitiveEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveExitCriticalSectionStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExitCriticalSection.
	illiAST := self generateIllicium: #primitiveExitCriticalSection.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveExitToDebuggerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExitToDebugger.
	illiAST := self generateIllicium: #primitiveExitToDebugger.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveExpStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExp.
	illiAST := self generateIllicium: #primitiveExp.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveExponentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExponent.
	illiAST := self generateIllicium: #primitiveExponent.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFailForFFIExceptionatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFailForFFIException:at:.
	illiAST := self generateIllicium: #primitiveFailForFFIException:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFailForOSErrorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFailForOSError:.
	illiAST := self generateIllicium: #primitiveFailForOSError:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFailForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFailFor:.
	illiAST := self generateIllicium: #primitiveFailFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFailStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFail.
	illiAST := self generateIllicium: #primitiveFail.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFailureCodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFailureCode.
	illiAST := self generateIllicium: #primitiveFailureCode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFetchNextMournerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFetchNextMourner.
	illiAST := self generateIllicium: #primitiveFetchNextMourner.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFloatAddStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatAdd.
	illiAST := self generateIllicium: #primitiveFloatAdd.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFloatAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatAtPut.
	illiAST := self generateIllicium: #primitiveFloatAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFloatAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatAt.
	illiAST := self generateIllicium: #primitiveFloatAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFloatDivideStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatDivide.
	illiAST := self generateIllicium: #primitiveFloatDivide.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFloatEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatEqual.
	illiAST := self generateIllicium: #primitiveFloatEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFloatGreaterOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatGreaterOrEqual.
	illiAST := self generateIllicium: #primitiveFloatGreaterOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFloatGreaterThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatGreaterThan.
	illiAST := self generateIllicium: #primitiveFloatGreaterThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFloatLessOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatLessOrEqual.
	illiAST := self generateIllicium: #primitiveFloatLessOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFloatLessThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatLessThan.
	illiAST := self generateIllicium: #primitiveFloatLessThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFloatMultiplyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatMultiply.
	illiAST := self generateIllicium: #primitiveFloatMultiply.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFloatNotEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatNotEqual.
	illiAST := self generateIllicium: #primitiveFloatNotEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFloatSubtractStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatSubtract.
	illiAST := self generateIllicium: #primitiveFloatSubtract.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFlushCacheStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFlushCache.
	illiAST := self generateIllicium: #primitiveFlushCache.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFlushExternalPrimitivesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFlushExternalPrimitives.
	illiAST := self generateIllicium: #primitiveFlushExternalPrimitives.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveForceDisplayUpdateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveForceDisplayUpdate.
	illiAST := self generateIllicium: #primitiveForceDisplayUpdate.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFormPrintStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFormPrint.
	illiAST := self generateIllicium: #primitiveFormPrint.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFractionalPartStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFractionalPart.
	illiAST := self generateIllicium: #primitiveFractionalPart.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFullClosureValueNoContextSwitchStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveFullClosureValueNoContextSwitch.
	illiAST := self
		generateIllicium: #primitiveFullClosureValueNoContextSwitch.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFullClosureValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFullClosureValue.
	illiAST := self generateIllicium: #primitiveFullClosureValue.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveFullClosureValueWithArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFullClosureValueWithArgs.
	illiAST := self generateIllicium: #primitiveFullClosureValueWithArgs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveGetAttributeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetAttribute.
	illiAST := self generateIllicium: #primitiveGetAttribute.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveGetImmutabilityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetImmutability.
	illiAST := self generateIllicium: #primitiveGetImmutability.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveGetLogDirectoryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetLogDirectory.
	illiAST := self generateIllicium: #primitiveGetLogDirectory.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveGetNextEventStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetNextEvent.
	illiAST := self generateIllicium: #primitiveGetNextEvent.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveGetWindowLabelStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetWindowLabel.
	illiAST := self generateIllicium: #primitiveGetWindowLabel.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveGetWindowSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetWindowSize.
	illiAST := self generateIllicium: #primitiveGetWindowSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveGetenvStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetenv.
	illiAST := self generateIllicium: #primitiveGetenv.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveGreaterOrEqualLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveGreaterOrEqualLargeIntegers.
	illiAST := self
		generateIllicium: #primitiveGreaterOrEqualLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveGreaterOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGreaterOrEqual.
	illiAST := self generateIllicium: #primitiveGreaterOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveGreaterThanLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGreaterThanLargeIntegers.
	illiAST := self generateIllicium: #primitiveGreaterThanLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveGreaterThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGreaterThan.
	illiAST := self generateIllicium: #primitiveGreaterThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveGrowMemoryByAtLeastStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGrowMemoryByAtLeast.
	illiAST := self generateIllicium: #primitiveGrowMemoryByAtLeast.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveHashMultiplyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveHashMultiply.
	illiAST := self generateIllicium: #primitiveHashMultiply.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveHeartbeatFrequencyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveHeartbeatFrequency.
	illiAST := self generateIllicium: #primitiveHeartbeatFrequency.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveHighResClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveHighResClock.
	illiAST := self generateIllicium: #primitiveHighResClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveIdenticalStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIdentical.
	illiAST := self generateIllicium: #primitiveIdentical.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveIdentityHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIdentityHash.
	illiAST := self generateIllicium: #primitiveIdentityHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveImageFormatVersionStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveImageFormatVersion.
	illiAST := self generateIllicium: #primitiveImageFormatVersion.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveImageNameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveImageName.
	illiAST := self generateIllicium: #primitiveImageName.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveImmediateAsIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveImmediateAsInteger.
	illiAST := self generateIllicium: #primitiveImmediateAsInteger.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveInputSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInputSemaphore.
	illiAST := self generateIllicium: #primitiveInputSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveInputWordStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInputWord.
	illiAST := self generateIllicium: #primitiveInputWord.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveIntegerAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIntegerAtPut.
	illiAST := self generateIllicium: #primitiveIntegerAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveIntegerAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIntegerAt.
	illiAST := self generateIllicium: #primitiveIntegerAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveInterruptChecksPerMSecStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInterruptChecksPerMSec.
	illiAST := self generateIllicium: #primitiveInterruptChecksPerMSec.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveInterruptSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInterruptSemaphore.
	illiAST := self generateIllicium: #primitiveInterruptSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveInvokeObjectAsMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInvokeObjectAsMethod.
	illiAST := self generateIllicium: #primitiveInvokeObjectAsMethod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveIsBigEnderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIsBigEnder.
	illiAST := self generateIllicium: #primitiveIsBigEnder.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveIsPinnedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIsPinned.
	illiAST := self generateIllicium: #primitiveIsPinned.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveIsWindowObscuredStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIsWindowObscured.
	illiAST := self generateIllicium: #primitiveIsWindowObscured.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveKbdNextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveKbdNext.
	illiAST := self generateIllicium: #primitiveKbdNext.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveKbdPeekStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveKbdPeek.
	illiAST := self generateIllicium: #primitiveKbdPeek.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveLessOrEqualLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLessOrEqualLargeIntegers.
	illiAST := self generateIllicium: #primitiveLessOrEqualLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveLessOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLessOrEqual.
	illiAST := self generateIllicium: #primitiveLessOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveLessThanLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLessThanLargeIntegers.
	illiAST := self generateIllicium: #primitiveLessThanLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveLessThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLessThan.
	illiAST := self generateIllicium: #primitiveLessThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveListBuiltinModuleStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveListBuiltinModule.
	illiAST := self generateIllicium: #primitiveListBuiltinModule.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveListExternalModuleStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveListExternalModule.
	illiAST := self generateIllicium: #primitiveListExternalModule.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveLoadImageSegmentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLoadImageSegment.
	illiAST := self generateIllicium: #primitiveLoadImageSegment.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveLocalMicrosecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLocalMicrosecondClock.
	illiAST := self generateIllicium: #primitiveLocalMicrosecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveLogNStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLogN.
	illiAST := self generateIllicium: #primitiveLogN.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveLowSpaceSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLowSpaceSemaphore.
	illiAST := self generateIllicium: #primitiveLowSpaceSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveMakePointStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMakePoint.
	illiAST := self generateIllicium: #primitiveMakePoint.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveMaxIdentityHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMaxIdentityHash.
	illiAST := self generateIllicium: #primitiveMaxIdentityHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMethod.
	illiAST := self generateIllicium: #primitiveMethod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveMillisecondClockMaskStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMillisecondClockMask.
	illiAST := self generateIllicium: #primitiveMillisecondClockMask.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveMillisecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMillisecondClock.
	illiAST := self generateIllicium: #primitiveMillisecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveModLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveModLargeIntegers.
	illiAST := self generateIllicium: #primitiveModLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveModStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMod.
	illiAST := self generateIllicium: #primitiveMod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveMouseButtonsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMouseButtons.
	illiAST := self generateIllicium: #primitiveMouseButtons.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveMousePointStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMousePoint.
	illiAST := self generateIllicium: #primitiveMousePoint.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveMultiplyLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMultiplyLargeIntegers.
	illiAST := self generateIllicium: #primitiveMultiplyLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveMultiplyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMultiply.
	illiAST := self generateIllicium: #primitiveMultiply.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveNewMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNewMethod.
	illiAST := self generateIllicium: #primitiveNewMethod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveNewStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNew.
	illiAST := self generateIllicium: #primitiveNew.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveNewWithArgStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNewWithArg.
	illiAST := self generateIllicium: #primitiveNewWithArg.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveNextInstanceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNextInstance.
	illiAST := self generateIllicium: #primitiveNextInstance.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveNextObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNextObject.
	illiAST := self generateIllicium: #primitiveNextObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveNoopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNoop.
	illiAST := self generateIllicium: #primitiveNoop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveNotEqualLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNotEqualLargeIntegers.
	illiAST := self generateIllicium: #primitiveNotEqualLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveNotEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNotEqual.
	illiAST := self generateIllicium: #primitiveNotEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveNotIdenticalStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNotIdentical.
	illiAST := self generateIllicium: #primitiveNotIdentical.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveObjectAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveObjectAtPut.
	illiAST := self generateIllicium: #primitiveObjectAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveObjectAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveObjectAt.
	illiAST := self generateIllicium: #primitiveObjectAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitivePathToUsingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePathToUsing.
	illiAST := self generateIllicium: #primitivePathToUsing.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitivePerformInSuperclassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePerformInSuperclass.
	illiAST := self generateIllicium: #primitivePerformInSuperclass.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitivePerformWithArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePerformWithArgs.
	illiAST := self generateIllicium: #primitivePerformWithArgs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveProfilePrimitiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveProfilePrimitive.
	illiAST := self generateIllicium: #primitiveProfilePrimitive.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveProfileSampleStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveProfileSample.
	illiAST := self generateIllicium: #primitiveProfileSample.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveProfileSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveProfileSemaphore.
	illiAST := self generateIllicium: #primitiveProfileSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveProfileStartStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveProfileStart.
	illiAST := self generateIllicium: #primitiveProfileStart.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveQuitStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveQuit.
	illiAST := self generateIllicium: #primitiveQuit.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveQuoLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveQuoLargeIntegers.
	illiAST := self generateIllicium: #primitiveQuoLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveQuoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveQuo.
	illiAST := self generateIllicium: #primitiveQuo.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveRelinquishProcessorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveRelinquishProcessor.
	illiAST := self generateIllicium: #primitiveRelinquishProcessor.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveRemLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveRemLargeIntegers.
	illiAST := self generateIllicium: #primitiveRemLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveResumeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveResume.
	illiAST := self generateIllicium: #primitiveResume.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveScanCharactersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveScanCharacters.
	illiAST := self generateIllicium: #primitiveScanCharacters.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveScreenDepthStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveScreenDepth.
	illiAST := self generateIllicium: #primitiveScreenDepth.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveScreenScaleFactorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveScreenScaleFactor.
	illiAST := self generateIllicium: #primitiveScreenScaleFactor.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveScreenSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveScreenSize.
	illiAST := self generateIllicium: #primitiveScreenSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSecondsClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSecondsClock.
	illiAST := self generateIllicium: #primitiveSecondsClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSetDisplayModeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetDisplayMode.
	illiAST := self generateIllicium: #primitiveSetDisplayMode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSetFullScreenStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetFullScreen.
	illiAST := self generateIllicium: #primitiveSetFullScreen.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSetImmutabilityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetImmutability.
	illiAST := self generateIllicium: #primitiveSetImmutability.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSetInterruptKeyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetInterruptKey.
	illiAST := self generateIllicium: #primitiveSetInterruptKey.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSetLogDirectoryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetLogDirectory.
	illiAST := self generateIllicium: #primitiveSetLogDirectory.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSetOrHasIdentityHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetOrHasIdentityHash.
	illiAST := self generateIllicium: #primitiveSetOrHasIdentityHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSetWindowLabelStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetWindowLabel.
	illiAST := self generateIllicium: #primitiveSetWindowLabel.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSetWindowSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetWindowSize.
	illiAST := self generateIllicium: #primitiveSetWindowSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'sound primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveShortAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveShortAtPut.
	illiAST := self generateIllicium: #primitiveShortAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'sound primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveShortAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveShortAt.
	illiAST := self generateIllicium: #primitiveShortAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveShowDisplayRectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveShowDisplayRect.
	illiAST := self generateIllicium: #primitiveShowDisplayRect.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSignalAtBytesLeftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSignalAtBytesLeft.
	illiAST := self generateIllicium: #primitiveSignalAtBytesLeft.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSignalStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSignal.
	illiAST := self generateIllicium: #primitiveSignal.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSineStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSine.
	illiAST := self generateIllicium: #primitiveSine.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSizeInBytesOfInstanceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSizeInBytesOfInstance.
	illiAST := self generateIllicium: #primitiveSizeInBytesOfInstance.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSizeInBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSizeInBytes.
	illiAST := self generateIllicium: #primitiveSizeInBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSize.
	illiAST := self generateIllicium: #primitiveSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatAddStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatAdd.
	illiAST := self generateIllicium: #primitiveSmallFloatAdd.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatArctanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatArctan.
	illiAST := self generateIllicium: #primitiveSmallFloatArctan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatDivideStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatDivide.
	illiAST := self generateIllicium: #primitiveSmallFloatDivide.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatEqual.
	illiAST := self generateIllicium: #primitiveSmallFloatEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatExpStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatExp.
	illiAST := self generateIllicium: #primitiveSmallFloatExp.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatExponentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatExponent.
	illiAST := self generateIllicium: #primitiveSmallFloatExponent.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatFractionalPartStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatFractionalPart.
	illiAST := self generateIllicium: #primitiveSmallFloatFractionalPart.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatGreaterOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatGreaterOrEqual.
	illiAST := self generateIllicium: #primitiveSmallFloatGreaterOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatGreaterThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatGreaterThan.
	illiAST := self generateIllicium: #primitiveSmallFloatGreaterThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatLessOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatLessOrEqual.
	illiAST := self generateIllicium: #primitiveSmallFloatLessOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatLessThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatLessThan.
	illiAST := self generateIllicium: #primitiveSmallFloatLessThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatLogNStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatLogN.
	illiAST := self generateIllicium: #primitiveSmallFloatLogN.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatMultiplyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatMultiply.
	illiAST := self generateIllicium: #primitiveSmallFloatMultiply.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatNotEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatNotEqual.
	illiAST := self generateIllicium: #primitiveSmallFloatNotEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatSineStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatSine.
	illiAST := self generateIllicium: #primitiveSmallFloatSine.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatSquareRootStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatSquareRoot.
	illiAST := self generateIllicium: #primitiveSmallFloatSquareRoot.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatSubtractStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatSubtract.
	illiAST := self generateIllicium: #primitiveSmallFloatSubtract.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatTimesTwoPowerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatTimesTwoPower.
	illiAST := self generateIllicium: #primitiveSmallFloatTimesTwoPower.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatTruncatedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatTruncated.
	illiAST := self generateIllicium: #primitiveSmallFloatTruncated.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSnapshotEmbeddedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSnapshotEmbedded.
	illiAST := self generateIllicium: #primitiveSnapshotEmbedded.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSnapshotStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSnapshot.
	illiAST := self generateIllicium: #primitiveSnapshot.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSomeInstanceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSomeInstance.
	illiAST := self generateIllicium: #primitiveSomeInstance.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSomeObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSomeObject.
	illiAST := self generateIllicium: #primitiveSomeObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSpecialObjectsOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSpecialObjectsOop.
	illiAST := self generateIllicium: #primitiveSpecialObjectsOop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSquareRootStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSquareRoot.
	illiAST := self generateIllicium: #primitiveSquareRoot.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveStoreImageSegmentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStoreImageSegment.
	illiAST := self generateIllicium: #primitiveStoreImageSegment.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveStringAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStringAtPut.
	illiAST := self generateIllicium: #primitiveStringAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveStringAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStringAt.
	illiAST := self generateIllicium: #primitiveStringAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveStringReplaceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStringReplace.
	illiAST := self generateIllicium: #primitiveStringReplace.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSubtractLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSubtractLargeIntegers.
	illiAST := self generateIllicium: #primitiveSubtractLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSubtractStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSubtract.
	illiAST := self generateIllicium: #primitiveSubtract.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveSuspendStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSuspend.
	illiAST := self generateIllicium: #primitiveSuspend.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveTestAndSetOwnershipOfCriticalSectionStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveTestAndSetOwnershipOfCriticalSection.
	illiAST := self
		generateIllicium: #primitiveTestAndSetOwnershipOfCriticalSection.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveTestDisplayDepthStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveTestDisplayDepth.
	illiAST := self generateIllicium: #primitiveTestDisplayDepth.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveTimesTwoPowerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveTimesTwoPower.
	illiAST := self generateIllicium: #primitiveTimesTwoPower.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveTruncatedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveTruncated.
	illiAST := self generateIllicium: #primitiveTruncated.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveUTCMicrosecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUTCMicrosecondClock.
	illiAST := self generateIllicium: #primitiveUTCMicrosecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveUnloadModuleStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUnloadModule.
	illiAST := self generateIllicium: #primitiveUnloadModule.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveUpdateTimezoneStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUpdateTimezone.
	illiAST := self generateIllicium: #primitiveUpdateTimezone.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveUtcAndTimezoneOffsetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUtcAndTimezoneOffset.
	illiAST := self generateIllicium: #primitiveUtcAndTimezoneOffset.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveUtcWithOffsetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUtcWithOffset.
	illiAST := self generateIllicium: #primitiveUtcWithOffset.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveVMPathStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveVMPath.
	illiAST := self generateIllicium: #primitiveVMPath.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveVMProfileSamplesIntoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveVMProfileSamplesInto.
	illiAST := self generateIllicium: #primitiveVMProfileSamplesInto.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveWaitStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveWait.
	illiAST := self generateIllicium: #primitiveWait.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompInterpreterPrimitivesTranslationTest >> testPrimitiveYieldStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveYield.
	illiAST := self generateIllicium: #primitiveYield.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testSignalNoResumeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signalNoResume:.
	illiAST := self generateIllicium: #signalNoResume:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testSignedBitValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signed32BitValueOf:.
	illiAST := self generateIllicium: #signed32BitValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testSignedMachineIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signedMachineIntegerValueOf:.
	illiAST := self generateIllicium: #signedMachineIntegerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testSizeOfAlienDataStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sizeOfAlienData:.
	illiAST := self generateIllicium: #sizeOfAlienData:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testStartOfAlienDataStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #startOfAlienData:.
	illiAST := self generateIllicium: #startOfAlienData:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompInterpreterPrimitivesTranslationTest >> testSuccessStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #success:.
	illiAST := self generateIllicium: #success:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompInterpreterPrimitivesTranslationTest >> translator [
	^ MAInterpreterPrimitivesRessource current translator
]
