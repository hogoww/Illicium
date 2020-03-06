Class {
	#name : #MAStackInterpreterTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MAStackInterpreterTranslationTest >> setUp [
	super setUp.
	testedClass := StackInterpreter
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testActiveProcessStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #activeProcess.
	illiAST := self generateIllicium: #activeProcess.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testAddIdleUsecsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addIdleUsecs:.
	illiAST := self generateIllicium: #addIdleUsecs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testAddLastLinktoListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addLastLink:toList:.
	illiAST := self generateIllicium: #addLastLink:toList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method lookup cache-equaliy-test' }
MAStackInterpreterTranslationTest >> testAddNewMethodToCacheStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addNewMethodToCache:.
	illiAST := self generateIllicium: #addNewMethodToCache:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testAddressCouldBeClassObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addressCouldBeClassObj:.
	illiAST := self generateIllicium: #addressCouldBeClassObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages-equaliy-test' }
MAStackInterpreterTranslationTest >> testAllOnesAsCharStarStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allOnesAsCharStar.
	illiAST := self generateIllicium: #allOnesAsCharStar.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testArgumentCountOfClosureStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #argumentCountOfClosure:.
	illiAST := self generateIllicium: #argumentCountOfClosure:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testArgumentCountOfMethodHeaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #argumentCountOfMethodHeader:.
	illiAST := self generateIllicium: #argumentCountOfMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testArgumentCountOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #argumentCountOf:.
	illiAST := self generateIllicium: #argumentCountOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'utilities-equaliy-test' }
MAStackInterpreterTranslationTest >> testArrayValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #arrayValueOf:.
	illiAST := self generateIllicium: #arrayValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testAsciiOfCharacterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #asciiOfCharacter:.
	illiAST := self generateIllicium: #asciiOfCharacter:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testAssertValidExecutionPointersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #assertValidExecutionPointe:r:s:.
	illiAST := self generateIllicium: #assertValidExecutionPointe:r:s:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testAssertValidExecutionPointersimbarlineStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #assertValidExecutionPointe:r:s:imbar:line:.
	illiAST := self
		generateIllicium: #assertValidExecutionPointe:r:s:imbar:line:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'utilities-equaliy-test' }
MAStackInterpreterTranslationTest >> testBooleanValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #booleanValueOf:.
	illiAST := self generateIllicium: #booleanValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCStringOrNullForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #cStringOrNullFor:.
	illiAST := self generateIllicium: #cStringOrNullFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCallbackEnterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #callbackEnter:.
	illiAST := self generateIllicium: #callbackEnter:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCallbackLeaveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #callbackLeave:.
	illiAST := self generateIllicium: #callbackLeave:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testCanBeImmutableStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #canBeImmutable:.
	illiAST := self generateIllicium: #canBeImmutable:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending-equaliy-test' }
MAStackInterpreterTranslationTest >> testCanContextSwitchIfActivatingheaderStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #canContextSwitchIfActivating:header:.
	illiAST := self
		generateIllicium: #canContextSwitchIfActivating:header:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCharacterForAsciiStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #characterForAscii:.
	illiAST := self generateIllicium: #characterForAscii:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckAllAccessibleObjectsOkayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkAllAccessibleObjectsOkay.
	illiAST := self generateIllicium: #checkAllAccessibleObjectsOkay.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckCodeIntegrityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkCodeIntegrity:.
	illiAST := self generateIllicium: #checkCodeIntegrity:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckDeliveryOfLongRunningPrimitiveSignalStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #checkDeliveryOfLongRunningPrimitiveSignal.
	illiAST := self
		generateIllicium: #checkDeliveryOfLongRunningPrimitiveSignal.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckForEventsMayContextSwitchStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkForEventsMayContextSwitch:.
	illiAST := self generateIllicium: #checkForEventsMayContextSwitch:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckImageVersionFromstartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkImageVersionFrom:startingAt:.
	illiAST := self generateIllicium: #checkImageVersionFrom:startingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckInterpreterIntegrityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkInterpreterIntegrity.
	illiAST := self generateIllicium: #checkInterpreterIntegrity.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckIsStillMarriedContextcurrentFPStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #checkIsStillMarriedContext:currentFP:.
	illiAST := self
		generateIllicium: #checkIsStillMarriedContext:currentFP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckOkayFieldsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOkayFields:.
	illiAST := self generateIllicium: #checkOkayFields:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckOkayInterpreterObjectsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOkayInterpreterObjects:.
	illiAST := self generateIllicium: #checkOkayInterpreterObjects:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckOkayStackPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOkayStackPage:.
	illiAST := self generateIllicium: #checkOkayStackPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckOkayStackZoneStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOkayStackZone:.
	illiAST := self generateIllicium: #checkOkayStackZone:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckProfileTickStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkProfileTick:.
	illiAST := self generateIllicium: #checkProfileTick:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckStackIntegrityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkStackIntegrity.
	illiAST := self generateIllicium: #checkStackIntegrity.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckStackPointerForMaybeMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #checkStackPointerForMaybeMarriedContext:.
	illiAST := self
		generateIllicium: #checkStackPointerForMaybeMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckStackPointerIndexForFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkStackPointerIndexForFrame:.
	illiAST := self generateIllicium: #checkStackPointerIndexForFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'utilities-equaliy-test' }
MAStackInterpreterTranslationTest >> testCheckedIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkedIntegerValueOf:.
	illiAST := self generateIllicium: #checkedIntegerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testClassNameOfIsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classNameOf:Is:.
	illiAST := self generateIllicium: #classNameOf:Is:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testContexthasSenderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #context:hasSender:.
	illiAST := self generateIllicium: #context:hasSender:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testContexthasValidInversePCMappingOfinStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #context:hasValidInversePCMappingOf:in:.
	illiAST := self
		generateIllicium: #context:hasValidInversePCMappingOf:in:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testCopiedValueCountOfClosureStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copiedValueCountOfClosure:.
	illiAST := self generateIllicium: #copiedValueCountOfClosure:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testCopiedValueCountOfFullClosureStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copiedValueCountOfFullClosure:.
	illiAST := self generateIllicium: #copiedValueCountOfFullClosure:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'bitblt support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCopyBitsFromtoatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyBitsFrom:to:at:.
	illiAST := self generateIllicium: #copyBitsFrom:to:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'bitblt support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCopyBitsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyBits.
	illiAST := self generateIllicium: #copyBits.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testCouldBeProcessStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #couldBeProcess:.
	illiAST := self generateIllicium: #couldBeProcess:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testCrStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #cr.
	illiAST := self generateIllicium: #cr.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending-equaliy-test' }
MAStackInterpreterTranslationTest >> testCreateActualMessageToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #createActualMessageTo:.
	illiAST := self generateIllicium: #createActualMessageTo:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'initialization-equaliy-test' }
MAStackInterpreterTranslationTest >> testDefaultNumStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #defaultNumStackPages.
	illiAST := self generateIllicium: #defaultNumStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'vm scheduling-equaliy-test' }
MAStackInterpreterTranslationTest >> testDisownVMStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #disownVM:.
	illiAST := self generateIllicium: #disownVM:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testDivorceAllFramesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #divorceAllFrames.
	illiAST := self generateIllicium: #divorceAllFrames.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testDivorceFramesInStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #divorceFramesIn:.
	illiAST := self generateIllicium: #divorceFramesIn:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testDoPrimitiveDivbyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #doPrimitiveDiv:by:.
	illiAST := self generateIllicium: #doPrimitiveDiv:by:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testDoPrimitiveModbyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #doPrimitiveMod:by:.
	illiAST := self generateIllicium: #doPrimitiveMod:by:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testDoSignalSemaphoreWithIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #doSignalSemaphoreWithIndex:.
	illiAST := self generateIllicium: #doSignalSemaphoreWithIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'initialization-equaliy-test' }
MAStackInterpreterTranslationTest >> testDummyReferToProxyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #dummyReferToProxy.
	illiAST := self generateIllicium: #dummyReferToProxy.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testDumpPrimTraceLogStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #dumpPrimTraceLog.
	illiAST := self generateIllicium: #dumpPrimTraceLog.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testEnsureCallerContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #ensureCallerContext:.
	illiAST := self generateIllicium: #ensureCallerContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore-equaliy-test' }
MAStackInterpreterTranslationTest >> testEnsureImageFormatIsUpToDateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #ensureImageFormatIsUpToDate:.
	illiAST := self generateIllicium: #ensureImageFormatIsUpToDate:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'initialization-equaliy-test' }
MAStackInterpreterTranslationTest >> testEnterSmalltalkExecutiveImplementationStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #enterSmalltalkExecutiveImplementation.
	illiAST := self
		generateIllicium: #enterSmalltalkExecutiveImplementation.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testExternalDivorceFrameandContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalDivorceFrame:andContext:.
	illiAST := self generateIllicium: #externalDivorceFrame:andContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testExternalEnsureIsBaseFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalEnsureIsBaseFrame:.
	illiAST := self generateIllicium: #externalEnsureIsBaseFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testExternalInstVarofContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalInstVar:ofContext:.
	illiAST := self generateIllicium: #externalInstVar:ofContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testExternalInstVarofContextputStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalInstVar:ofContext:put:.
	illiAST := self generateIllicium: #externalInstVar:ofContext:put:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testExternalQuickPrimitiveResponseStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalQuickPrimitiveResponse.
	illiAST := self generateIllicium: #externalQuickPrimitiveResponse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testFailUnbalancedPrimitiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #failUnbalancedPrimitive.
	illiAST := self generateIllicium: #failUnbalancedPrimitive.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testFailedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #failed.
	illiAST := self generateIllicium: #failed.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'utilities-equaliy-test' }
MAStackInterpreterTranslationTest >> testFetchArrayofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchArray:ofObject:.
	illiAST := self generateIllicium: #fetchArray:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'utilities-equaliy-test' }
MAStackInterpreterTranslationTest >> testFetchFloatofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchFloat:ofObject:.
	illiAST := self generateIllicium: #fetchFloat:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'utilities-equaliy-test' }
MAStackInterpreterTranslationTest >> testFetchIntegerofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchInteger:ofObject:.
	illiAST := self generateIllicium: #fetchInteger:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testFetchPointerofMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchPointer:ofMarriedContext:.
	illiAST := self generateIllicium: #fetchPointer:ofMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testFetchStackPointerOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchStackPointerOf:.
	illiAST := self generateIllicium: #fetchStackPointerOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testFindClassContainingMethodstartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #findClassContainingMethod:startingAt:.
	illiAST := self
		generateIllicium: #findClassContainingMethod:startingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testFindClassOfMethodforReceiverStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findClassOfMethod:forReceiver:.
	illiAST := self generateIllicium: #findClassOfMethod:forReceiver:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testFindFrameAboveinPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findFrameAbove:inPage:.
	illiAST := self generateIllicium: #findFrameAbove:inPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testFindHomeForContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findHomeForContext:.
	illiAST := self generateIllicium: #findHomeForContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'handler search-equaliy-test' }
MAStackInterpreterTranslationTest >> testFindMethodWithPrimitiveFromContextUpToContextStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #findMethodWithPrimitive:FromContext:UpToContext:.
	illiAST := self
		generateIllicium: #findMethodWithPrimitive:FromContext:UpToContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending-equaliy-test' }
MAStackInterpreterTranslationTest >> testFindNewMethodInClassTagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findNewMethodInClassTag:.
	illiAST := self generateIllicium: #findNewMethodInClassTag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testFindSPOfonStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findSPOf:on:.
	illiAST := self generateIllicium: #findSPOf:on:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testFindSelectorOfMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findSelectorOfMethod:.
	illiAST := self generateIllicium: #findSelectorOfMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testFlushExternalPrimitiveOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #flushExternalPrimitiveOf:.
	illiAST := self generateIllicium: #flushExternalPrimitiveOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'lazy become-equaliy-test' }
MAStackInterpreterTranslationTest >> testFollowForwardedFrameContentsstackPointerStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #followForwardedFrameContents:stackPointer:.
	illiAST := self
		generateIllicium: #followForwardedFrameContents:stackPointer:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testFollowForwardingPointersInStackZoneStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #followForwardingPointersInStackZone:.
	illiAST := self
		generateIllicium: #followForwardingPointersInStackZone:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testForceInterruptCheckFromHeartbeatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #forceInterruptCheckFromHeartbeat.
	illiAST := self generateIllicium: #forceInterruptCheckFromHeartbeat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testForceInterruptCheckStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #forceInterruptCheck.
	illiAST := self generateIllicium: #forceInterruptCheck.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testFrameCallerContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameCallerContext:.
	illiAST := self generateIllicium: #frameCallerContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testFrameContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameContext:.
	illiAST := self generateIllicium: #frameContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testFrameHasContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameHasContext:.
	illiAST := self generateIllicium: #frameHasContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testFrameIsBlockActivationStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameIsBlockActivation:.
	illiAST := self generateIllicium: #frameIsBlockActivation:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testFrameMethodObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameMethodObject:.
	illiAST := self generateIllicium: #frameMethodObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testFrameMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameMethod:.
	illiAST := self generateIllicium: #frameMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testFrameNumArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameNumArgs:.
	illiAST := self generateIllicium: #frameNumArgs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testFrameOfMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameOfMarriedContext:.
	illiAST := self generateIllicium: #frameOfMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testFrameReceiverStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameReceiver:.
	illiAST := self generateIllicium: #frameReceiver:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testFrameStackedReceiverOffsetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameStackedReceiverOffset:.
	illiAST := self generateIllicium: #frameStackedReceiverOffset:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testFreeUntracedStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeUntracedStackPages.
	illiAST := self generateIllicium: #freeUntracedStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testFullDisplayUpdateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fullDisplayUpdate.
	illiAST := self generateIllicium: #fullDisplayUpdate.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method lookup cache-equaliy-test' }
MAStackInterpreterTranslationTest >> testFunctionPointerForinClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #functionPointerFor:inClass:.
	illiAST := self generateIllicium: #functionPointerFor:inClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter shell-equaliy-test' }
MAStackInterpreterTranslationTest >> testGetCurrentBytecodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getCurrentBytecode.
	illiAST := self generateIllicium: #getCurrentBytecode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testGetDesiredCogCodeSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getDesiredCogCodeSize.
	illiAST := self generateIllicium: #getDesiredCogCodeSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending-equaliy-test' }
MAStackInterpreterTranslationTest >> testGetErrorObjectFromPrimFailCodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getErrorObjectFromPrimFailCode.
	illiAST := self generateIllicium: #getErrorObjectFromPrimFailCode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testGetFullScreenFlagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getFullScreenFlag.
	illiAST := self generateIllicium: #getFullScreenFlag.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testGetInterruptKeycodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getInterruptKeycode.
	illiAST := self generateIllicium: #getInterruptKeycode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testGetInterruptPendingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getInterruptPending.
	illiAST := self generateIllicium: #getInterruptPending.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testGetNextWakeupUsecsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getNextWakeupUsecs.
	illiAST := self generateIllicium: #getNextWakeupUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testGetSavedWindowSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getSavedWindowSize.
	illiAST := self generateIllicium: #getSavedWindowSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testGetSnapshotScreenSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getSnapshotScreenSize.
	illiAST := self generateIllicium: #getSnapshotScreenSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testGetStackPointerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getStackPointer.
	illiAST := self generateIllicium: #getStackPointer.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
MAStackInterpreterTranslationTest >> testGetThisSessionIDStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getThisSessionID.
	illiAST := self generateIllicium: #getThisSessionID.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore-equaliy-test' }
MAStackInterpreterTranslationTest >> testGetWordFromFileswapStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getWord32FromFile:swap:.
	illiAST := self generateIllicium: #getWord32FromFile:swap:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending-equaliy-test' }
MAStackInterpreterTranslationTest >> testHandleForwardedSelectorFaultForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #handleForwardedSelectorFaultFor:.
	illiAST := self generateIllicium: #handleForwardedSelectorFaultFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending-equaliy-test' }
MAStackInterpreterTranslationTest >> testHandleForwardedSendFaultForTagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #handleForwardedSendFaultForTag:.
	illiAST := self generateIllicium: #handleForwardedSendFaultForTag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending-equaliy-test' }
MAStackInterpreterTranslationTest >> testHandleSpecialSelectorSendFaultForfpspStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #handleSpecialSelectorSendFaultFor:fp:sp:.
	illiAST := self
		generateIllicium: #handleSpecialSelectorSendFaultFor:fp:sp:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending-equaliy-test' }
MAStackInterpreterTranslationTest >> testHandleStackOverflowOrEventAllowContextSwitchStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #handleStackOverflowOrEventAllowContextSwitch:.
	illiAST := self
		generateIllicium: #handleStackOverflowOrEventAllowContextSwitch:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending-equaliy-test' }
MAStackInterpreterTranslationTest >> testHandleStackOverflowStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #handleStackOverflow.
	illiAST := self generateIllicium: #handleStackOverflow.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages-equaliy-test' }
MAStackInterpreterTranslationTest >> testHighBitStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #highBit:.
	illiAST := self generateIllicium: #highBit:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages-equaliy-test' }
MAStackInterpreterTranslationTest >> testIfCurrentStackPageHasValidHeadPointersStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #ifCurrentStackPageHasValidHeadPointers:.
	illiAST := self
		generateIllicium: #ifCurrentStackPageHasValidHeadPointers:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testIfValidWriteBackStackPointersSaveToStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #ifValidWriteBackStack:Pointers:Save:To:.
	illiAST := self
		generateIllicium: #ifValidWriteBackStack:Pointers:Save:To:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIframeMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #iframeMethod:.
	illiAST := self generateIllicium: #iframeMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testIncludesBehaviorThatOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #includesBehavior:ThatOf:.
	illiAST := self generateIllicium: #includesBehavior:ThatOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testInstructionPointerForFramecurrentFPcurrentIPStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #instructionPointerForFrame:currentFP:currentIP:.
	illiAST := self
		generateIllicium: #instructionPointerForFrame:currentFP:currentIP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter shell-equaliy-test' }
MAStackInterpreterTranslationTest >> testInterpretStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #interpret.
	illiAST := self generateIllicium: #interpret.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages-equaliy-test' }
MAStackInterpreterTranslationTest >> testInterpreterAllocationReserveBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #interpreterAllocationReserveBytes.
	illiAST := self generateIllicium: #interpreterAllocationReserveBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
MAStackInterpreterTranslationTest >> testIoFilenamefromStringofLengthresolveAliasesStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #ioFilename:fromString:ofLength:resolveAliases:.
	illiAST := self
		generateIllicium: #ioFilename:fromString:ofLength:resolveAliases:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsAppropriateForCopyObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isAppropriateForCopyObject:.
	illiAST := self generateIllicium: #isAppropriateForCopyObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsBaseFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isBaseFrame:.
	illiAST := self generateIllicium: #isBaseFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsBooleanObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isBooleanObject:.
	illiAST := self generateIllicium: #isBooleanObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsFloatObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isFloatObject:.
	illiAST := self generateIllicium: #isFloatObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsFrameonPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isFrame:onPage:.
	illiAST := self generateIllicium: #isFrame:onPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsKindOfClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #is:KindOfClass:.
	illiAST := self generateIllicium: #is:KindOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsKindOfIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isKindOfInteger:.
	illiAST := self generateIllicium: #isKindOfInteger:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsKindOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #is:KindOf:.
	illiAST := self generateIllicium: #is:KindOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsLargeIntegerObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLargeIntegerObject:.
	illiAST := self generateIllicium: #isLargeIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsLargeNegativeIntegerObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLargeNegativeIntegerObject:.
	illiAST := self generateIllicium: #isLargeNegativeIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsLargePositiveIntegerObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLargePositiveIntegerObject:.
	illiAST := self generateIllicium: #isLargePositiveIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsLiveContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLiveContext:.
	illiAST := self generateIllicium: #isLiveContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsMarriedOrWidowedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isMarriedOrWidowedContext:.
	illiAST := self generateIllicium: #isMarriedOrWidowedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsMemberOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #is:MemberOf:.
	illiAST := self generateIllicium: #is:MemberOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsMetaPrimitiveIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isMetaPrimitiveIndex:.
	illiAST := self generateIllicium: #isMetaPrimitiveIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsNegativeIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isNegativeIntegerValueOf:.
	illiAST := self generateIllicium: #isNegativeIntegerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsPositiveMachineIntegerObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isPositiveMachineIntegerObject:.
	illiAST := self generateIllicium: #isPositiveMachineIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsPrimitiveFunctionPointerAnIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isPrimitiveFunctionPointerAnIndex.
	illiAST := self generateIllicium: #isPrimitiveFunctionPointerAnIndex.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsQuickPrimitiveIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isQuickPrimitiveIndex:.
	illiAST := self generateIllicium: #isQuickPrimitiveIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsReadMediatedContextInstVarIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #isReadMediatedContextInstVarIndex:.
	illiAST := self generateIllicium: #isReadMediatedContextInstVarIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsSingleContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isSingleContext:.
	illiAST := self generateIllicium: #isSingleContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsWidowedContextDuringGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isWidowedContextDuringGC:.
	illiAST := self generateIllicium: #isWidowedContextDuringGC:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsWidowedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isWidowedContext:.
	illiAST := self generateIllicium: #isWidowedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testIsWriteMediatedContextInstVarIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #isWriteMediatedContextInstVarIndex:.
	illiAST := self
		generateIllicium: #isWriteMediatedContextInstVarIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testLengthOfNameOfClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lengthOfNameOfClass:.
	illiAST := self generateIllicium: #lengthOfNameOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testLiteralofMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #literal:ofMethod:.
	illiAST := self generateIllicium: #literal:ofMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'bitblt support-equaliy-test' }
MAStackInterpreterTranslationTest >> testLoadBitBltFromStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #loadBitBltFrom:.
	illiAST := self generateIllicium: #loadBitBltFrom:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'initialization-equaliy-test' }
MAStackInterpreterTranslationTest >> testLoadInitialContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #loadInitialContext.
	illiAST := self generateIllicium: #loadInitialContext.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testLongPrintOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #longPrintOop:.
	illiAST := self generateIllicium: #longPrintOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testLongStoreBytecodeForHeaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #longStoreBytecodeForHeader:.
	illiAST := self generateIllicium: #longStoreBytecodeForHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method lookup cache-equaliy-test' }
MAStackInterpreterTranslationTest >> testLookupInMethodCacheSelclassTagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lookupInMethodCacheSel:classTag:.
	illiAST := self generateIllicium: #lookupInMethodCacheSel:classTag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending-equaliy-test' }
MAStackInterpreterTranslationTest >> testLookupMethodInClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lookupMethodInClass:.
	illiAST := self generateIllicium: #lookupMethodInClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending-equaliy-test' }
MAStackInterpreterTranslationTest >> testLookupOrdinaryNoMNUEtcInClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lookupOrdinaryNoMNUEtcInClass:.
	illiAST := self generateIllicium: #lookupOrdinaryNoMNUEtcInClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testLookupSelectorinClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lookupSelector:inClass:.
	illiAST := self generateIllicium: #lookupSelector:inClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMagnitudeBitIntegerFornegStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #magnitude64BitIntegerFor:neg:.
	illiAST := self generateIllicium: #magnitude64BitIntegerFor:neg:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMagnitudeBitValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #magnitude64BitValueOf:.
	illiAST := self generateIllicium: #magnitude64BitValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testMakeBaseFrameForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #makeBaseFrameFor:.
	illiAST := self generateIllicium: #makeBaseFrameFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testMakeContextSnapshotSafeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #makeContextSnapshotSafe:.
	illiAST := self generateIllicium: #makeContextSnapshotSafe:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'utilities-equaliy-test' }
MAStackInterpreterTranslationTest >> testMakePointwithxValueyValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #makePointwithxValue:yValue:.
	illiAST := self generateIllicium: #makePointwithxValue:yValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMapInterpreterOopsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #mapInterpreterOops.
	illiAST := self generateIllicium: #mapInterpreterOops.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMapStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #mapStackPages.
	illiAST := self generateIllicium: #mapStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMarkAndTraceStackPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markAndTraceStackPage:.
	illiAST := self generateIllicium: #markAndTraceStackPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMarkAndTraceStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markAndTraceStackPages:.
	illiAST := self generateIllicium: #markAndTraceStackPages:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMarkAndTraceUntracedReachableStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #markAndTraceUntracedReachableStackPages.
	illiAST := self
		generateIllicium: #markAndTraceUntracedReachableStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testMarriedContextpointsTostackDeltaForCurrentFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #marriedContext:pointsTo:stackDeltaForCurrentFrame:.
	illiAST := self
		generateIllicium: #marriedContext:pointsTo:stackDeltaForCurrentFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testMarryContextInNewStackPageAndInitializeInterpreterRegistersStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #marryContextInNewStackPageAndInitializeInterpreterRegisters:.
	illiAST := self
		generateIllicium: #marryContextInNewStackPageAndInitializeInterpreterRegisters:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testMarryFrameSPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #marryFrame:SP:.
	illiAST := self generateIllicium: #marryFrame:SP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMaybeLeakCheckExternalPrimCallStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #maybeLeakCheckExternalPrimCall:.
	illiAST := self generateIllicium: #maybeLeakCheckExternalPrimCall:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMaybeSelectorOfMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #maybeSelectorOfMethod:.
	illiAST := self generateIllicium: #maybeSelectorOfMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMethodArgumentCountStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodArgumentCount.
	illiAST := self generateIllicium: #methodArgumentCount.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testMethodClassAssociationOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodClassAssociationOf:.
	illiAST := self generateIllicium: #methodClassAssociationOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testMethodClassOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodClassOf:.
	illiAST := self generateIllicium: #methodClassOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testMethodHeaderIndicatesLargeFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodHeaderIndicatesLargeFrame:.
	illiAST := self generateIllicium: #methodHeaderIndicatesLargeFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMethodPrimitiveIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodPrimitiveIndex.
	illiAST := self generateIllicium: #methodPrimitiveIndex.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMethodReturnBoolStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnBool:.
	illiAST := self generateIllicium: #methodReturnBool:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMethodReturnFloatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnFloat:.
	illiAST := self generateIllicium: #methodReturnFloat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMethodReturnIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnInteger:.
	illiAST := self generateIllicium: #methodReturnInteger:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMethodReturnReceiverStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnReceiver.
	illiAST := self generateIllicium: #methodReturnReceiver.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMethodReturnStringStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnString:.
	illiAST := self generateIllicium: #methodReturnString:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMethodReturnValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnValue:.
	illiAST := self generateIllicium: #methodReturnValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testMethodUsesAlternateBytecodeSetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodUsesAlternateBytecodeSet:.
	illiAST := self generateIllicium: #methodUsesAlternateBytecodeSet:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testMethodUsesPrimitiveErrorCodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodUsesPrimitiveErrorCode:.
	illiAST := self generateIllicium: #methodUsesPrimitiveErrorCode:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'initialization-equaliy-test' }
MAStackInterpreterTranslationTest >> testModuleUnloadedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #moduleUnloaded:.
	illiAST := self generateIllicium: #moduleUnloaded:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testMoveFramesInthroughtoPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #moveFramesIn:through:toPage:.
	illiAST := self generateIllicium: #moveFramesIn:through:toPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testNameOfClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #nameOfClass:.
	illiAST := self generateIllicium: #nameOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testNoInlineTemporaryinStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noInlineTemporary:in:.
	illiAST := self generateIllicium: #noInlineTemporary:in:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testNoInlineTemporaryinputStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noInlineTemporary:in:put:.
	illiAST := self generateIllicium: #noInlineTemporary:in:put:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testNoMarkedContextsOnPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noMarkedContextsOnPage:.
	illiAST := self generateIllicium: #noMarkedContextsOnPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testNumSlotsOfMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numSlotsOfMarriedContext:.
	illiAST := self generateIllicium: #numSlotsOfMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages-equaliy-test' }
MAStackInterpreterTranslationTest >> testNumStkPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numStkPages.
	illiAST := self generateIllicium: #numStkPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testObjCouldBeClassObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #objCouldBeClassObj:.
	illiAST := self generateIllicium: #objCouldBeClassObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'vm scheduling-equaliy-test' }
MAStackInterpreterTranslationTest >> testOwnVMStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #ownVM:.
	illiAST := self generateIllicium: #ownVM:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPenultimateLiteralOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #penultimateLiteralOf:.
	illiAST := self generateIllicium: #penultimateLiteralOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testPopStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #popStack.
	illiAST := self generateIllicium: #popStack.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testPopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pop:.
	illiAST := self generateIllicium: #pop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testPopthenPushStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pop:thenPush:.
	illiAST := self generateIllicium: #pop:thenPush:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testPositiveBitIntegerForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #positive64BitIntegerFor:.
	illiAST := self generateIllicium: #positive64BitIntegerFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testPositiveBitValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #positive32BitValueOf:.
	illiAST := self generateIllicium: #positive32BitValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support-equaliy-test' }
MAStackInterpreterTranslationTest >> testPositiveMachineIntegerForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #positiveMachineIntegerFor:.
	illiAST := self generateIllicium: #positiveMachineIntegerFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testPositiveMachineIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #positiveMachineIntegerValueOf:.
	illiAST := self generateIllicium: #positiveMachineIntegerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testPostGCUpdateDisplayBitsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #postGCUpdateDisplayBits.
	illiAST := self generateIllicium: #postGCUpdateDisplayBits.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveAddLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAddLargeIntegers.
	illiAST := self generateIllicium: #primitiveAddLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveAddStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAdd.
	illiAST := self generateIllicium: #primitiveAdd.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveAdoptInstanceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAdoptInstance.
	illiAST := self generateIllicium: #primitiveAdoptInstance.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveAllInstancesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAllInstances.
	illiAST := self generateIllicium: #primitiveAllInstances.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveAllObjectsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAllObjects.
	illiAST := self generateIllicium: #primitiveAllObjects.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveArctanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveArctan.
	illiAST := self generateIllicium: #primitiveArctan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveArrayBecomeOneWayCopyHashStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveArrayBecomeOneWayCopyHash.
	illiAST := self generateIllicium: #primitiveArrayBecomeOneWayCopyHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveArrayBecomeOneWayNoCopyHashStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveArrayBecomeOneWayNoCopyHash.
	illiAST := self
		generateIllicium: #primitiveArrayBecomeOneWayNoCopyHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveArrayBecomeOneWayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveArrayBecomeOneWay.
	illiAST := self generateIllicium: #primitiveArrayBecomeOneWay.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveArrayBecomeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveArrayBecome.
	illiAST := self generateIllicium: #primitiveArrayBecome.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveAsCharacterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAsCharacter.
	illiAST := self generateIllicium: #primitiveAsCharacter.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveAsFloatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAsFloat.
	illiAST := self generateIllicium: #primitiveAsFloat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAtPut.
	illiAST := self generateIllicium: #primitiveAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAt.
	illiAST := self generateIllicium: #primitiveAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveBeCursorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBeCursor.
	illiAST := self generateIllicium: #primitiveBeCursor.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveBeDisplayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBeDisplay.
	illiAST := self generateIllicium: #primitiveBeDisplay.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveBeepStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBeep.
	illiAST := self generateIllicium: #primitiveBeep.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveBehaviorHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBehaviorHash.
	illiAST := self generateIllicium: #primitiveBehaviorHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveBitAndLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitAndLargeIntegers.
	illiAST := self generateIllicium: #primitiveBitAndLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveBitAndStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitAnd.
	illiAST := self generateIllicium: #primitiveBitAnd.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveBitOrLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitOrLargeIntegers.
	illiAST := self generateIllicium: #primitiveBitOrLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveBitOrStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitOr.
	illiAST := self generateIllicium: #primitiveBitOr.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveBitShiftLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitShiftLargeIntegers.
	illiAST := self generateIllicium: #primitiveBitShiftLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveBitShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitShift.
	illiAST := self generateIllicium: #primitiveBitShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveBitXorLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitXorLargeIntegers.
	illiAST := self generateIllicium: #primitiveBitXorLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveBitXorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitXor.
	illiAST := self generateIllicium: #primitiveBitXor.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveBytesLeftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBytesLeft.
	illiAST := self generateIllicium: #primitiveBytesLeft.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveCalloutToFFIStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCalloutToFFI.
	illiAST := self generateIllicium: #primitiveCalloutToFFI.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveChangeClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveChangeClass.
	illiAST := self generateIllicium: #primitiveChangeClass.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClass.
	illiAST := self generateIllicium: #primitiveClass.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveClearVMProfileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClearVMProfile.
	illiAST := self generateIllicium: #primitiveClearVMProfile.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveClipboardTextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClipboardText.
	illiAST := self generateIllicium: #primitiveClipboardText.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveClockLogAddressesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClockLogAddresses.
	illiAST := self generateIllicium: #primitiveClockLogAddresses.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveCloneStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClone.
	illiAST := self generateIllicium: #primitiveClone.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveClosureValueNoContextSwitchStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveClosureValueNoContextSwitch.
	illiAST := self
		generateIllicium: #primitiveClosureValueNoContextSwitch.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveClosureValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClosureValue.
	illiAST := self generateIllicium: #primitiveClosureValue.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveClosureValueWithArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClosureValueWithArgs.
	illiAST := self generateIllicium: #primitiveClosureValueWithArgs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveCoarseLocalMicrosecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveCoarseLocalMicrosecondClock.
	illiAST := self
		generateIllicium: #primitiveCoarseLocalMicrosecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveCoarseUTCMicrosecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveCoarseUTCMicrosecondClock.
	illiAST := self generateIllicium: #primitiveCoarseUTCMicrosecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveCompareBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCompareBytes.
	illiAST := self generateIllicium: #primitiveCompareBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'string primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveCompareWithStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCompareWith.
	illiAST := self generateIllicium: #primitiveCompareWith.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'sound primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveConstantFillStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveConstantFill.
	illiAST := self generateIllicium: #primitiveConstantFill.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveControlVMProfilingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveControlVMProfiling.
	illiAST := self generateIllicium: #primitiveControlVMProfiling.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveCopyObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCopyObject.
	illiAST := self generateIllicium: #primitiveCopyObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveCrashVMStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCrashVM.
	illiAST := self generateIllicium: #primitiveCrashVM.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveDisablePowerManagerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDisablePowerManager.
	illiAST := self generateIllicium: #primitiveDisablePowerManager.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveDivLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDivLargeIntegers.
	illiAST := self generateIllicium: #primitiveDivLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveDivStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDiv.
	illiAST := self generateIllicium: #primitiveDiv.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveDivideLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDivideLargeIntegers.
	illiAST := self generateIllicium: #primitiveDivideLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveDivideStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDivide.
	illiAST := self generateIllicium: #primitiveDivide.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveEnterCriticalSectionStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveEnterCriticalSection.
	illiAST := self generateIllicium: #primitiveEnterCriticalSection.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveEqualLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveEqualLargeIntegers.
	illiAST := self generateIllicium: #primitiveEqualLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveEqual.
	illiAST := self generateIllicium: #primitiveEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveEventProcessingControlStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveEventProcessingControl.
	illiAST := self generateIllicium: #primitiveEventProcessingControl.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveExitCriticalSectionStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExitCriticalSection.
	illiAST := self generateIllicium: #primitiveExitCriticalSection.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveExitToDebuggerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExitToDebugger.
	illiAST := self generateIllicium: #primitiveExitToDebugger.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveExpStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExp.
	illiAST := self generateIllicium: #primitiveExp.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveExponentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExponent.
	illiAST := self generateIllicium: #primitiveExponent.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFailForFFIExceptionatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFailForFFIException:at:.
	illiAST := self generateIllicium: #primitiveFailForFFIException:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFailForOSErrorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFailForOSError:.
	illiAST := self generateIllicium: #primitiveFailForOSError:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFailForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFailFor:.
	illiAST := self generateIllicium: #primitiveFailFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFailStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFail.
	illiAST := self generateIllicium: #primitiveFail.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFailureCodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFailureCode.
	illiAST := self generateIllicium: #primitiveFailureCode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFetchNextMournerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFetchNextMourner.
	illiAST := self generateIllicium: #primitiveFetchNextMourner.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFloatAddStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatAdd.
	illiAST := self generateIllicium: #primitiveFloatAdd.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFloatAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatAtPut.
	illiAST := self generateIllicium: #primitiveFloatAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFloatAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatAt.
	illiAST := self generateIllicium: #primitiveFloatAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFloatDivideStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatDivide.
	illiAST := self generateIllicium: #primitiveFloatDivide.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFloatEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatEqual.
	illiAST := self generateIllicium: #primitiveFloatEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFloatGreaterOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatGreaterOrEqual.
	illiAST := self generateIllicium: #primitiveFloatGreaterOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFloatGreaterThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatGreaterThan.
	illiAST := self generateIllicium: #primitiveFloatGreaterThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFloatLessOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatLessOrEqual.
	illiAST := self generateIllicium: #primitiveFloatLessOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFloatLessThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatLessThan.
	illiAST := self generateIllicium: #primitiveFloatLessThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFloatMultiplyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatMultiply.
	illiAST := self generateIllicium: #primitiveFloatMultiply.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFloatNotEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatNotEqual.
	illiAST := self generateIllicium: #primitiveFloatNotEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFloatSubtractStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatSubtract.
	illiAST := self generateIllicium: #primitiveFloatSubtract.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFlushCacheStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFlushCache.
	illiAST := self generateIllicium: #primitiveFlushCache.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFlushExternalPrimitivesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFlushExternalPrimitives.
	illiAST := self generateIllicium: #primitiveFlushExternalPrimitives.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveForceDisplayUpdateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveForceDisplayUpdate.
	illiAST := self generateIllicium: #primitiveForceDisplayUpdate.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFormPrintStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFormPrint.
	illiAST := self generateIllicium: #primitiveFormPrint.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFractionalPartStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFractionalPart.
	illiAST := self generateIllicium: #primitiveFractionalPart.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFullClosureValueNoContextSwitchStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveFullClosureValueNoContextSwitch.
	illiAST := self
		generateIllicium: #primitiveFullClosureValueNoContextSwitch.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFullClosureValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFullClosureValue.
	illiAST := self generateIllicium: #primitiveFullClosureValue.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFullClosureValueWithArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFullClosureValueWithArgs.
	illiAST := self generateIllicium: #primitiveFullClosureValueWithArgs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveFullGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFullGC.
	illiAST := self generateIllicium: #primitiveFullGC.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveGetAttributeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetAttribute.
	illiAST := self generateIllicium: #primitiveGetAttribute.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveGetImmutabilityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetImmutability.
	illiAST := self generateIllicium: #primitiveGetImmutability.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveGetLogDirectoryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetLogDirectory.
	illiAST := self generateIllicium: #primitiveGetLogDirectory.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveGetNextEventStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetNextEvent.
	illiAST := self generateIllicium: #primitiveGetNextEvent.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveGetWindowLabelStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetWindowLabel.
	illiAST := self generateIllicium: #primitiveGetWindowLabel.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveGetWindowSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetWindowSize.
	illiAST := self generateIllicium: #primitiveGetWindowSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveGetenvStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetenv.
	illiAST := self generateIllicium: #primitiveGetenv.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveGreaterOrEqualLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveGreaterOrEqualLargeIntegers.
	illiAST := self
		generateIllicium: #primitiveGreaterOrEqualLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveGreaterOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGreaterOrEqual.
	illiAST := self generateIllicium: #primitiveGreaterOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveGreaterThanLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGreaterThanLargeIntegers.
	illiAST := self generateIllicium: #primitiveGreaterThanLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveGreaterThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGreaterThan.
	illiAST := self generateIllicium: #primitiveGreaterThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveGrowMemoryByAtLeastStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGrowMemoryByAtLeast.
	illiAST := self generateIllicium: #primitiveGrowMemoryByAtLeast.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveHashMultiplyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveHashMultiply.
	illiAST := self generateIllicium: #primitiveHashMultiply.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveHeartbeatFrequencyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveHeartbeatFrequency.
	illiAST := self generateIllicium: #primitiveHeartbeatFrequency.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveHighResClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveHighResClock.
	illiAST := self generateIllicium: #primitiveHighResClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveIdenticalStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIdentical.
	illiAST := self generateIllicium: #primitiveIdentical.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveIdentityHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIdentityHash.
	illiAST := self generateIllicium: #primitiveIdentityHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveImageFormatVersionStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveImageFormatVersion.
	illiAST := self generateIllicium: #primitiveImageFormatVersion.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveImageNameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveImageName.
	illiAST := self generateIllicium: #primitiveImageName.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveImmediateAsIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveImmediateAsInteger.
	illiAST := self generateIllicium: #primitiveImmediateAsInteger.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveIncrementalGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIncrementalGC.
	illiAST := self generateIllicium: #primitiveIncrementalGC.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveIndexOfMethodheaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIndexOfMethod:header:.
	illiAST := self generateIllicium: #primitiveIndexOfMethod:header:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveIndexOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIndexOf:.
	illiAST := self generateIllicium: #primitiveIndexOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveInputSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInputSemaphore.
	illiAST := self generateIllicium: #primitiveInputSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveInputWordStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInputWord.
	illiAST := self generateIllicium: #primitiveInputWord.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveInstVarAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInstVarAtPut.
	illiAST := self generateIllicium: #primitiveInstVarAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveInstVarAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInstVarAt.
	illiAST := self generateIllicium: #primitiveInstVarAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveIntegerAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIntegerAtPut.
	illiAST := self generateIllicium: #primitiveIntegerAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveIntegerAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIntegerAt.
	illiAST := self generateIllicium: #primitiveIntegerAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveInterruptChecksPerMSecStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInterruptChecksPerMSec.
	illiAST := self generateIllicium: #primitiveInterruptChecksPerMSec.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveInterruptSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInterruptSemaphore.
	illiAST := self generateIllicium: #primitiveInterruptSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveInvokeObjectAsMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInvokeObjectAsMethod.
	illiAST := self generateIllicium: #primitiveInvokeObjectAsMethod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveIsBigEnderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIsBigEnder.
	illiAST := self generateIllicium: #primitiveIsBigEnder.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveIsPinnedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIsPinned.
	illiAST := self generateIllicium: #primitiveIsPinned.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveIsWindowObscuredStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIsWindowObscured.
	illiAST := self generateIllicium: #primitiveIsWindowObscured.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveKbdNextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveKbdNext.
	illiAST := self generateIllicium: #primitiveKbdNext.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveKbdPeekStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveKbdPeek.
	illiAST := self generateIllicium: #primitiveKbdPeek.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveLessOrEqualLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLessOrEqualLargeIntegers.
	illiAST := self generateIllicium: #primitiveLessOrEqualLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveLessOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLessOrEqual.
	illiAST := self generateIllicium: #primitiveLessOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveLessThanLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLessThanLargeIntegers.
	illiAST := self generateIllicium: #primitiveLessThanLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveLessThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLessThan.
	illiAST := self generateIllicium: #primitiveLessThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveListBuiltinModuleStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveListBuiltinModule.
	illiAST := self generateIllicium: #primitiveListBuiltinModule.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveListExternalModuleStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveListExternalModule.
	illiAST := self generateIllicium: #primitiveListExternalModule.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveLoadImageSegmentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLoadImageSegment.
	illiAST := self generateIllicium: #primitiveLoadImageSegment.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveLocalMicrosecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLocalMicrosecondClock.
	illiAST := self generateIllicium: #primitiveLocalMicrosecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveLogNStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLogN.
	illiAST := self generateIllicium: #primitiveLogN.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveLowSpaceSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLowSpaceSemaphore.
	illiAST := self generateIllicium: #primitiveLowSpaceSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveMakePointStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMakePoint.
	illiAST := self generateIllicium: #primitiveMakePoint.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveMaxIdentityHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMaxIdentityHash.
	illiAST := self generateIllicium: #primitiveMaxIdentityHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMethod.
	illiAST := self generateIllicium: #primitiveMethod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveMillisecondClockMaskStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMillisecondClockMask.
	illiAST := self generateIllicium: #primitiveMillisecondClockMask.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveMillisecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMillisecondClock.
	illiAST := self generateIllicium: #primitiveMillisecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveModLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveModLargeIntegers.
	illiAST := self generateIllicium: #primitiveModLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveModStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMod.
	illiAST := self generateIllicium: #primitiveMod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveMouseButtonsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMouseButtons.
	illiAST := self generateIllicium: #primitiveMouseButtons.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveMousePointStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMousePoint.
	illiAST := self generateIllicium: #primitiveMousePoint.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveMultiplyLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMultiplyLargeIntegers.
	illiAST := self generateIllicium: #primitiveMultiplyLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveMultiplyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMultiply.
	illiAST := self generateIllicium: #primitiveMultiply.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveNewMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNewMethod.
	illiAST := self generateIllicium: #primitiveNewMethod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveNewStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNew.
	illiAST := self generateIllicium: #primitiveNew.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveNewWithArgStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNewWithArg.
	illiAST := self generateIllicium: #primitiveNewWithArg.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveNextInstanceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNextInstance.
	illiAST := self generateIllicium: #primitiveNextInstance.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveNextObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNextObject.
	illiAST := self generateIllicium: #primitiveNextObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveNoopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNoop.
	illiAST := self generateIllicium: #primitiveNoop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveNotEqualLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNotEqualLargeIntegers.
	illiAST := self generateIllicium: #primitiveNotEqualLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveNotEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNotEqual.
	illiAST := self generateIllicium: #primitiveNotEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveNotIdenticalStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNotIdentical.
	illiAST := self generateIllicium: #primitiveNotIdentical.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveObjectAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveObjectAtPut.
	illiAST := self generateIllicium: #primitiveObjectAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveObjectAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveObjectAt.
	illiAST := self generateIllicium: #primitiveObjectAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveObjectPointsToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveObjectPointsTo.
	illiAST := self generateIllicium: #primitiveObjectPointsTo.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitivePathToUsingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePathToUsing.
	illiAST := self generateIllicium: #primitivePathToUsing.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitivePerformInSuperclassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePerformInSuperclass.
	illiAST := self generateIllicium: #primitivePerformInSuperclass.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitivePerformWithArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePerformWithArgs.
	illiAST := self generateIllicium: #primitivePerformWithArgs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitivePinStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePin.
	illiAST := self generateIllicium: #primitivePin.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveProfilePrimitiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveProfilePrimitive.
	illiAST := self generateIllicium: #primitiveProfilePrimitive.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveProfileSampleStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveProfileSample.
	illiAST := self generateIllicium: #primitiveProfileSample.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveProfileSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveProfileSemaphore.
	illiAST := self generateIllicium: #primitiveProfileSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveProfileStartStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveProfileStart.
	illiAST := self generateIllicium: #primitiveProfileStart.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveQuitStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveQuit.
	illiAST := self generateIllicium: #primitiveQuit.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveQuoLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveQuoLargeIntegers.
	illiAST := self generateIllicium: #primitiveQuoLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveQuoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveQuo.
	illiAST := self generateIllicium: #primitiveQuo.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveRelinquishProcessorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveRelinquishProcessor.
	illiAST := self generateIllicium: #primitiveRelinquishProcessor.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveRemLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveRemLargeIntegers.
	illiAST := self generateIllicium: #primitiveRemLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveResumeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveResume.
	illiAST := self generateIllicium: #primitiveResume.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveScanCharactersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveScanCharacters.
	illiAST := self generateIllicium: #primitiveScanCharacters.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveScreenDepthStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveScreenDepth.
	illiAST := self generateIllicium: #primitiveScreenDepth.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveScreenScaleFactorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveScreenScaleFactor.
	illiAST := self generateIllicium: #primitiveScreenScaleFactor.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveScreenSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveScreenSize.
	illiAST := self generateIllicium: #primitiveScreenSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSecondsClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSecondsClock.
	illiAST := self generateIllicium: #primitiveSecondsClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSetDisplayModeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetDisplayMode.
	illiAST := self generateIllicium: #primitiveSetDisplayMode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSetFullScreenStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetFullScreen.
	illiAST := self generateIllicium: #primitiveSetFullScreen.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSetImmutabilityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetImmutability.
	illiAST := self generateIllicium: #primitiveSetImmutability.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSetInterruptKeyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetInterruptKey.
	illiAST := self generateIllicium: #primitiveSetInterruptKey.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSetLogDirectoryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetLogDirectory.
	illiAST := self generateIllicium: #primitiveSetLogDirectory.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSetOrHasIdentityHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetOrHasIdentityHash.
	illiAST := self generateIllicium: #primitiveSetOrHasIdentityHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSetWindowLabelStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetWindowLabel.
	illiAST := self generateIllicium: #primitiveSetWindowLabel.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSetWindowSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetWindowSize.
	illiAST := self generateIllicium: #primitiveSetWindowSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'sound primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveShortAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveShortAtPut.
	illiAST := self generateIllicium: #primitiveShortAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'sound primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveShortAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveShortAt.
	illiAST := self generateIllicium: #primitiveShortAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveShowDisplayRectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveShowDisplayRect.
	illiAST := self generateIllicium: #primitiveShowDisplayRect.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSignalAtBytesLeftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSignalAtBytesLeft.
	illiAST := self generateIllicium: #primitiveSignalAtBytesLeft.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSignalStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSignal.
	illiAST := self generateIllicium: #primitiveSignal.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSineStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSine.
	illiAST := self generateIllicium: #primitiveSine.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSizeInBytesOfInstanceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSizeInBytesOfInstance.
	illiAST := self generateIllicium: #primitiveSizeInBytesOfInstance.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSizeInBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSizeInBytes.
	illiAST := self generateIllicium: #primitiveSizeInBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSize.
	illiAST := self generateIllicium: #primitiveSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSlotAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSlotAtPut.
	illiAST := self generateIllicium: #primitiveSlotAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSlotAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSlotAt.
	illiAST := self generateIllicium: #primitiveSlotAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatAddStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatAdd.
	illiAST := self generateIllicium: #primitiveSmallFloatAdd.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatArctanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatArctan.
	illiAST := self generateIllicium: #primitiveSmallFloatArctan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatDivideStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatDivide.
	illiAST := self generateIllicium: #primitiveSmallFloatDivide.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatEqual.
	illiAST := self generateIllicium: #primitiveSmallFloatEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatExpStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatExp.
	illiAST := self generateIllicium: #primitiveSmallFloatExp.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatExponentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatExponent.
	illiAST := self generateIllicium: #primitiveSmallFloatExponent.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatFractionalPartStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatFractionalPart.
	illiAST := self generateIllicium: #primitiveSmallFloatFractionalPart.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatGreaterOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatGreaterOrEqual.
	illiAST := self generateIllicium: #primitiveSmallFloatGreaterOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatGreaterThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatGreaterThan.
	illiAST := self generateIllicium: #primitiveSmallFloatGreaterThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatLessOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatLessOrEqual.
	illiAST := self generateIllicium: #primitiveSmallFloatLessOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatLessThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatLessThan.
	illiAST := self generateIllicium: #primitiveSmallFloatLessThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatLogNStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatLogN.
	illiAST := self generateIllicium: #primitiveSmallFloatLogN.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatMultiplyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatMultiply.
	illiAST := self generateIllicium: #primitiveSmallFloatMultiply.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatNotEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatNotEqual.
	illiAST := self generateIllicium: #primitiveSmallFloatNotEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatSineStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatSine.
	illiAST := self generateIllicium: #primitiveSmallFloatSine.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatSquareRootStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatSquareRoot.
	illiAST := self generateIllicium: #primitiveSmallFloatSquareRoot.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatSubtractStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatSubtract.
	illiAST := self generateIllicium: #primitiveSmallFloatSubtract.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatTimesTwoPowerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatTimesTwoPower.
	illiAST := self generateIllicium: #primitiveSmallFloatTimesTwoPower.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSmallFloatTruncatedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatTruncated.
	illiAST := self generateIllicium: #primitiveSmallFloatTruncated.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSnapshotEmbeddedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSnapshotEmbedded.
	illiAST := self generateIllicium: #primitiveSnapshotEmbedded.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSnapshotStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSnapshot.
	illiAST := self generateIllicium: #primitiveSnapshot.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSomeInstanceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSomeInstance.
	illiAST := self generateIllicium: #primitiveSomeInstance.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSomeObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSomeObject.
	illiAST := self generateIllicium: #primitiveSomeObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSpecialObjectsOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSpecialObjectsOop.
	illiAST := self generateIllicium: #primitiveSpecialObjectsOop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSquareRootStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSquareRoot.
	illiAST := self generateIllicium: #primitiveSquareRoot.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveStoreImageSegmentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStoreImageSegment.
	illiAST := self generateIllicium: #primitiveStoreImageSegment.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveStringAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStringAtPut.
	illiAST := self generateIllicium: #primitiveStringAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveStringAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStringAt.
	illiAST := self generateIllicium: #primitiveStringAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveStringReplaceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStringReplace.
	illiAST := self generateIllicium: #primitiveStringReplace.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSubtractLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSubtractLargeIntegers.
	illiAST := self generateIllicium: #primitiveSubtractLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSubtractStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSubtract.
	illiAST := self generateIllicium: #primitiveSubtract.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveSuspendStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSuspend.
	illiAST := self generateIllicium: #primitiveSuspend.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveTestAndSetOwnershipOfCriticalSectionStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveTestAndSetOwnershipOfCriticalSection.
	illiAST := self
		generateIllicium: #primitiveTestAndSetOwnershipOfCriticalSection.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveTestDisplayDepthStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveTestDisplayDepth.
	illiAST := self generateIllicium: #primitiveTestDisplayDepth.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveTimesTwoPowerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveTimesTwoPower.
	illiAST := self generateIllicium: #primitiveTimesTwoPower.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveTruncatedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveTruncated.
	illiAST := self generateIllicium: #primitiveTruncated.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveUTCMicrosecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUTCMicrosecondClock.
	illiAST := self generateIllicium: #primitiveUTCMicrosecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveUnloadModuleStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUnloadModule.
	illiAST := self generateIllicium: #primitiveUnloadModule.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveUpdateTimezoneStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUpdateTimezone.
	illiAST := self generateIllicium: #primitiveUpdateTimezone.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveUtcAndTimezoneOffsetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUtcAndTimezoneOffset.
	illiAST := self generateIllicium: #primitiveUtcAndTimezoneOffset.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveUtcWithOffsetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUtcWithOffset.
	illiAST := self generateIllicium: #primitiveUtcWithOffset.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveVMPathStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveVMPath.
	illiAST := self generateIllicium: #primitiveVMPath.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveVMProfileSamplesIntoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveVMProfileSamplesInto.
	illiAST := self generateIllicium: #primitiveVMProfileSamplesInto.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveWaitStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveWait.
	illiAST := self generateIllicium: #primitiveWait.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrimitiveYieldStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveYield.
	illiAST := self generateIllicium: #primitiveYield.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintActivationNameForSelectorstartClassStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #printActivationNameForSelector:startClass:.
	illiAST := self
		generateIllicium: #printActivationNameForSelector:startClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintActivationNameForreceiverisBlockfirstTemporaryStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #printActivationNameFor:receiver:isBlock:firstTemporary:.
	illiAST := self
		generateIllicium: #printActivationNameFor:receiver:isBlock:firstTemporary:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintAllStacksStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printAllStacks.
	illiAST := self generateIllicium: #printAllStacks.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintCallStackFPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printCallStackFP:.
	illiAST := self generateIllicium: #printCallStackFP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintCallStackOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printCallStackOf:.
	illiAST := self generateIllicium: #printCallStackOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintCallStackOfcurrentFPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printCallStackOf:currentFP:.
	illiAST := self generateIllicium: #printCallStackOf:currentFP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintCallStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printCallStack.
	illiAST := self generateIllicium: #printCallStack.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintCharStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printChar:.
	illiAST := self generateIllicium: #printChar:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintContextCallStackOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printContextCallStackOf:.
	illiAST := self generateIllicium: #printContextCallStackOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printContext:.
	illiAST := self generateIllicium: #printContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintExternalHeadFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printExternalHeadFrame.
	illiAST := self generateIllicium: #printExternalHeadFrame.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintFrameAndCallersSPshortStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameAndCallers:SP:short:.
	illiAST := self generateIllicium: #printFrameAndCallers:SP:short:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintFrameFlagsForFPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameFlagsForFP:.
	illiAST := self generateIllicium: #printFrameFlagsForFP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintFrameOopatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameOop:at:.
	illiAST := self generateIllicium: #printFrameOop:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrame:.
	illiAST := self generateIllicium: #printFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintFrameThingandFrameatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameThing:andFrame:at:.
	illiAST := self generateIllicium: #printFrameThing:andFrame:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintFrameThingatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameThing:at:.
	illiAST := self generateIllicium: #printFrameThing:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintFrameWithSPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrame:WithSP:.
	illiAST := self generateIllicium: #printFrame:WithSP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintFramesInPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFramesInPage:.
	illiAST := self generateIllicium: #printFramesInPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintFramesOnStackPageListInUseStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFramesOnStackPageListInUse.
	illiAST := self generateIllicium: #printFramesOnStackPageListInUse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintHexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printHex:.
	illiAST := self generateIllicium: #printHex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintHexnpStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printHexnp:.
	illiAST := self generateIllicium: #printHexnp:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintLikelyImplementorsOfSelectorStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #printLikelyImplementorsOfSelector:.
	illiAST := self generateIllicium: #printLikelyImplementorsOfSelector:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintMethodCacheForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMethodCacheFor:.
	illiAST := self generateIllicium: #printMethodCacheFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintMethodCacheStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMethodCache.
	illiAST := self generateIllicium: #printMethodCache.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintMethodDictionaryOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMethodDictionaryOf:.
	illiAST := self generateIllicium: #printMethodDictionaryOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintMethodDictionaryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMethodDictionary:.
	illiAST := self generateIllicium: #printMethodDictionary:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintNameOfClasscountStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printNameOfClass:count:.
	illiAST := self generateIllicium: #printNameOfClass:count:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintNumStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printNum:.
	illiAST := self generateIllicium: #printNum:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintOopShortStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printOopShort:.
	illiAST := self generateIllicium: #printOopShort:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printOop:.
	illiAST := self generateIllicium: #printOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintProcessStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printProcessStack:.
	illiAST := self generateIllicium: #printProcessStack:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintProcsOnListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printProcsOnList:.
	illiAST := self generateIllicium: #printProcsOnList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintStackCallStackOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackCallStackOf:.
	illiAST := self generateIllicium: #printStackCallStackOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintStackPageListInUseStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPageListInUse.
	illiAST := self generateIllicium: #printStackPageListInUse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintStackPageListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPageList.
	illiAST := self generateIllicium: #printStackPageList.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintStackPagesInUseStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPagesInUse.
	illiAST := self generateIllicium: #printStackPagesInUse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPages.
	illiAST := self generateIllicium: #printStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintStackPageuseCountStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPage:useCount:.
	illiAST := self generateIllicium: #printStackPage:useCount:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintStackReferencesToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackReferencesTo:.
	illiAST := self generateIllicium: #printStackReferencesTo:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #print:.
	illiAST := self generateIllicium: #print:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testPrintStringOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStringOf:.
	illiAST := self generateIllicium: #printStringOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testPushBoolStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pushBool:.
	illiAST := self generateIllicium: #pushBool:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testPushFloatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pushFloat:.
	illiAST := self generateIllicium: #pushFloat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testPushIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pushInteger:.
	illiAST := self generateIllicium: #pushInteger:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testPushStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #push:.
	illiAST := self generateIllicium: #push:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testPushedReceiverOrClosureOfFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pushedReceiverOrClosureOfFrame:.
	illiAST := self generateIllicium: #pushedReceiverOrClosureOfFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore-equaliy-test' }
MAStackInterpreterTranslationTest >> testPutLongtoFileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #putLong:toFile:.
	illiAST := self generateIllicium: #putLong:toFile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore-equaliy-test' }
MAStackInterpreterTranslationTest >> testPutShorttoFileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #putShort:toFile:.
	illiAST := self generateIllicium: #putShort:toFile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testPutToSleepyieldingIfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #putToSleep:yieldingIf:.
	illiAST := self generateIllicium: #putToSleep:yieldingIf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore-equaliy-test' }
MAStackInterpreterTranslationTest >> testPutWordtoFileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #putWord32:toFile:.
	illiAST := self generateIllicium: #putWord32:toFile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'utilities-equaliy-test' }
MAStackInterpreterTranslationTest >> testQuickFetchIntegerofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #quickFetchInteger:ofObject:.
	illiAST := self generateIllicium: #quickFetchInteger:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore-equaliy-test' }
MAStackInterpreterTranslationTest >> testReadImageFromFileHeapSizeStartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #readImageFromFile:HeapSize:StartingAt:.
	illiAST := self
		generateIllicium: #readImageFromFile:HeapSize:StartingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore-equaliy-test' }
MAStackInterpreterTranslationTest >> testReadableFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #readableFormat:.
	illiAST := self generateIllicium: #readableFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testReapAndResetErrorCodeToheaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #reapAndResetErrorCodeTo:header:.
	illiAST := self generateIllicium: #reapAndResetErrorCodeTo:header:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support-equaliy-test' }
MAStackInterpreterTranslationTest >> testReestablishContextPriorToCallbackStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #reestablishContextPriorToCallback:.
	illiAST := self generateIllicium: #reestablishContextPriorToCallback:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testRemoveFirstLinkOfListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #removeFirstLinkOfList:.
	illiAST := self generateIllicium: #removeFirstLinkOfList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testResumepreemptedYieldingIfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #resume:preemptedYieldingIf:.
	illiAST := self generateIllicium: #resume:preemptedYieldingIf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testRetryPrimitiveOnFailureStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #retryPrimitiveOnFailure.
	illiAST := self generateIllicium: #retryPrimitiveOnFailure.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support-equaliy-test' }
MAStackInterpreterTranslationTest >> testReturnAsThroughCallbackContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #returnAs:ThroughCallback:Context:.
	illiAST := self generateIllicium: #returnAs:ThroughCallback:Context:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testReverseDisplayFromtoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #reverseDisplayFrom:to:.
	illiAST := self generateIllicium: #reverseDisplayFrom:to:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method lookup cache-equaliy-test' }
MAStackInterpreterTranslationTest >> testRewriteMethodCacheEntryForExternalPrimitiveToFunctionStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #rewriteMethodCacheEntryForExternalPrimitiveToFunction:.
	illiAST := self
		generateIllicium: #rewriteMethodCacheEntryForExternalPrimitiveToFunction:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testRoomToPushNArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #roomToPushNArgs:.
	illiAST := self generateIllicium: #roomToPushNArgs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testSafeMethodClassOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #safeMethodClassOf:.
	illiAST := self generateIllicium: #safeMethodClassOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSaneFunctionPointerForFailureOfPrimIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #saneFunctionPointerForFailureOfPrimIndex:.
	illiAST := self
		generateIllicium: #saneFunctionPointerForFailureOfPrimIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSendInvokeCallbackContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sendInvokeCallbackContext:.
	illiAST := self generateIllicium: #sendInvokeCallbackContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSendInvokeCallbackStackRegistersJmpbufStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #sendInvokeCallback:Stack:Registers:Jmpbuf:.
	illiAST := self
		generateIllicium: #sendInvokeCallback:Stack:Registers:Jmpbuf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSetBreakMNUSelectorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setBreakMNUSelector:.
	illiAST := self generateIllicium: #setBreakMNUSelector:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSetBreakSelectorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setBreakSelector:.
	illiAST := self generateIllicium: #setBreakSelector:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSetFullScreenFlagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setFullScreenFlag:.
	illiAST := self generateIllicium: #setFullScreenFlag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSetInterruptCheckChainStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setInterruptCheckChain:.
	illiAST := self generateIllicium: #setInterruptCheckChain:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSetInterruptKeycodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setInterruptKeycode:.
	illiAST := self generateIllicium: #setInterruptKeycode:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSetInterruptPendingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setInterruptPending:.
	illiAST := self generateIllicium: #setInterruptPending:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSetNextWakeupUsecsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setNextWakeupUsecs:.
	illiAST := self generateIllicium: #setNextWakeupUsecs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSetSavedWindowSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setSavedWindowSize:.
	illiAST := self generateIllicium: #setSavedWindowSize:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSetSignalLowSpaceFlagAndSaveProcessStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #setSignalLowSpaceFlagAndSaveProcess.
	illiAST := self
		generateIllicium: #setSignalLowSpaceFlagAndSaveProcess.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSetTraceFlagOnContextsFramesPageIfNeededStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #setTraceFlagOnContextsFramesPageIfNeeded:.
	illiAST := self
		generateIllicium: #setTraceFlagOnContextsFramesPageIfNeeded:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testShortPrintContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintContext:.
	illiAST := self generateIllicium: #shortPrintContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testShortPrintFrameAndCallersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintFrameAndCallers:.
	illiAST := self generateIllicium: #shortPrintFrameAndCallers:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testShortPrintFrameAndNCallersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintFrame:AndNCallers:.
	illiAST := self generateIllicium: #shortPrintFrame:AndNCallers:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testShortPrintFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintFrame:.
	illiAST := self generateIllicium: #shortPrintFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testShortPrintFramesInPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintFramesInPage:.
	illiAST := self generateIllicium: #shortPrintFramesInPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testShortPrintFramesOnStackPageListInUseStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #shortPrintFramesOnStackPageListInUse.
	illiAST := self
		generateIllicium: #shortPrintFramesOnStackPageListInUse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testShortPrintOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintOop:.
	illiAST := self generateIllicium: #shortPrintOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testShortReversePrintFrameAndCallersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortReversePrintFrameAndCallers:.
	illiAST := self generateIllicium: #shortReversePrintFrameAndCallers:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testShowDisplayBitsLeftTopRightBottomStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #showDisplayBits:Left:Top:Right:Bottom:.
	illiAST := self
		generateIllicium: #showDisplayBits:Left:Top:Right:Bottom:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSignalExternalSemaphoresStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signalExternalSemaphores.
	illiAST := self generateIllicium: #signalExternalSemaphores.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSignalNoResumeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signalNoResume:.
	illiAST := self generateIllicium: #signalNoResume:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSignedBitIntegerForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signed32BitIntegerFor:.
	illiAST := self generateIllicium: #signed32BitIntegerFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSignedBitValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signed64BitValueOf:.
	illiAST := self generateIllicium: #signed64BitValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSignedMachineIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signedMachineIntegerValueOf:.
	illiAST := self generateIllicium: #signedMachineIntegerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSizeOfAlienDataStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sizeOfAlienData:.
	illiAST := self generateIllicium: #sizeOfAlienData:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testSizeOfCallPrimitiveBytecodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sizeOfCallPrimitiveBytecode:.
	illiAST := self generateIllicium: #sizeOfCallPrimitiveBytecode:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testSizeOfLongStoreTempBytecodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sizeOfLongStoreTempBytecode:.
	illiAST := self generateIllicium: #sizeOfLongStoreTempBytecode:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'utilities-equaliy-test' }
MAStackInterpreterTranslationTest >> testSizeOfSTArrayFromCPrimitiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sizeOfSTArrayFromCPrimitive:.
	illiAST := self generateIllicium: #sizeOfSTArrayFromCPrimitive:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore-equaliy-test' }
MAStackInterpreterTranslationTest >> testSnapshotStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #snapshot:.
	illiAST := self generateIllicium: #snapshot:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testSpaceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #space.
	illiAST := self generateIllicium: #space.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending-equaliy-test' }
MAStackInterpreterTranslationTest >> testSpecialSelectorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #specialSelector:.
	illiAST := self generateIllicium: #specialSelector:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSpurPostBecomeActionStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #spurPostBecomeAction:.
	illiAST := self generateIllicium: #spurPostBecomeAction:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testStObjectatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stObject:at:.
	illiAST := self generateIllicium: #stObject:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testStObjectatputStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stObject:at:put:.
	illiAST := self generateIllicium: #stObject:at:put:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testStSizeOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stSizeOf:.
	illiAST := self generateIllicium: #stSizeOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access-equaliy-test' }
MAStackInterpreterTranslationTest >> testStackFloatValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackFloatValue:.
	illiAST := self generateIllicium: #stackFloatValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access-equaliy-test' }
MAStackInterpreterTranslationTest >> testStackIntegerValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackIntegerValue:.
	illiAST := self generateIllicium: #stackIntegerValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages-equaliy-test' }
MAStackInterpreterTranslationTest >> testStackLimitBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackLimitBytes.
	illiAST := self generateIllicium: #stackLimitBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages-equaliy-test' }
MAStackInterpreterTranslationTest >> testStackLimitOffsetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackLimitOffset.
	illiAST := self generateIllicium: #stackLimitOffset.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access-equaliy-test' }
MAStackInterpreterTranslationTest >> testStackObjectValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackObjectValue:.
	illiAST := self generateIllicium: #stackObjectValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages-equaliy-test' }
MAStackInterpreterTranslationTest >> testStackPageByteSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPageByteSize.
	illiAST := self generateIllicium: #stackPageByteSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages-equaliy-test' }
MAStackInterpreterTranslationTest >> testStackPageHeadroomStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPageHeadroom.
	illiAST := self generateIllicium: #stackPageHeadroom.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access-equaliy-test' }
MAStackInterpreterTranslationTest >> testStackPointerForMaybeMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #stackPointerForMaybeMarriedContext:.
	illiAST := self
		generateIllicium: #stackPointerForMaybeMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testStackPointerIndexForFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPointerIndexForFrame:.
	illiAST := self generateIllicium: #stackPointerIndexForFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access-equaliy-test' }
MAStackInterpreterTranslationTest >> testStackPositiveMachineIntegerValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPositiveMachineIntegerValue:.
	illiAST := self generateIllicium: #stackPositiveMachineIntegerValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access-equaliy-test' }
MAStackInterpreterTranslationTest >> testStackSignedMachineIntegerValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackSignedMachineIntegerValue:.
	illiAST := self generateIllicium: #stackSignedMachineIntegerValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access-equaliy-test' }
MAStackInterpreterTranslationTest >> testStackTopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackTop.
	illiAST := self generateIllicium: #stackTop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access-equaliy-test' }
MAStackInterpreterTranslationTest >> testStackValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackValue:.
	illiAST := self generateIllicium: #stackValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testStartOfAlienDataStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #startOfAlienData:.
	illiAST := self generateIllicium: #startOfAlienData:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testStartPCOfMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #startPCOfMethod:.
	illiAST := self generateIllicium: #startPCOfMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'utilities-equaliy-test' }
MAStackInterpreterTranslationTest >> testStoreIntegerofObjectwithValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #storeInteger:ofObject:withValue:.
	illiAST := self generateIllicium: #storeInteger:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testStoreSenderOfFramewithValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #storeSenderOfFrame:withValue:.
	illiAST := self generateIllicium: #storeSenderOfFrame:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSuccessStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #success:.
	illiAST := self generateIllicium: #success:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending-equaliy-test' }
MAStackInterpreterTranslationTest >> testSuperclassOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #superclassOf:.
	illiAST := self generateIllicium: #superclassOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testSynchronousSignalStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #synchronousSignal:.
	illiAST := self generateIllicium: #synchronousSignal:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testTempCountOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #tempCountOf:.
	illiAST := self generateIllicium: #tempCountOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testTemporaryCountOfMethodHeaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #temporaryCountOfMethodHeader:.
	illiAST := self generateIllicium: #temporaryCountOfMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testTransferToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #transferTo:.
	illiAST := self generateIllicium: #transferTo:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testUltimateLiteralOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #ultimateLiteralOf:.
	illiAST := self generateIllicium: #ultimateLiteralOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods-equaliy-test' }
MAStackInterpreterTranslationTest >> testUnfollowatIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #unfollow:atIndex:.
	illiAST := self generateIllicium: #unfollow:atIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testUpdateDisplayLeftTopRightBottomStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #updateDisplayLeft:Top:Right:Bottom:.
	illiAST := self
		generateIllicium: #updateDisplayLeft:Top:Right:Bottom:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testUpdateStateOfSpouseContextForFrameWithSPStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #updateStateOfSpouseContextForFrame:WithSP:.
	illiAST := self
		generateIllicium: #updateStateOfSpouseContextForFrame:WithSP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testValidInstructionPointerinFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validInstructionPointer:inFrame:.
	illiAST := self generateIllicium: #validInstructionPointer:inFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MAStackInterpreterTranslationTest >> testValidInstructionPointerinMethodframePointerStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #validInstructionPointer:inMethod:framePointer:.
	illiAST := self
		generateIllicium: #validInstructionPointer:inMethod:framePointer:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages-equaliy-test' }
MAStackInterpreterTranslationTest >> testValidStackPageBaseFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validStackPageBaseFrame:.
	illiAST := self generateIllicium: #validStackPageBaseFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages-equaliy-test' }
MAStackInterpreterTranslationTest >> testValidStackPageBaseFramesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validStackPageBaseFrames.
	illiAST := self generateIllicium: #validStackPageBaseFrames.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testVoidLongRunningPrimitiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #voidLongRunningPrimitive:.
	illiAST := self generateIllicium: #voidLongRunningPrimitive:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access-equaliy-test' }
MAStackInterpreterTranslationTest >> testVoidVMStateForSnapshotFlushingExternalPrimitivesIfStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #voidVMStateForSnapshotFlushingExternalPrimitivesIf:.
	illiAST := self
		generateIllicium: #voidVMStateForSnapshotFlushingExternalPrimitivesIf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support-equaliy-test' }
MAStackInterpreterTranslationTest >> testWakeHighestPriorityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #wakeHighestPriority.
	illiAST := self generateIllicium: #wakeHighestPriority.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
MAStackInterpreterTranslationTest >> testWhereIsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #whereIs:.
	illiAST := self generateIllicium: #whereIs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore-equaliy-test' }
MAStackInterpreterTranslationTest >> testWriteImageFileIOStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #writeImageFileIO.
	illiAST := self generateIllicium: #writeImageFileIO.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStackInterpreterTranslationTest >> translator [
	^ MAStackInterpreterRessource current translator
]
