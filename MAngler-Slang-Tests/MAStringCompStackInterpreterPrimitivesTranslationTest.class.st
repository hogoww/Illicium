Class {
	#name : #MAStringCompStackInterpreterPrimitivesTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MAStringCompStackInterpreterPrimitivesTranslationTest >> setUp [
	super setUp.
	testedClass := StackInterpreterPrimitives
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testActiveProcessStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #activeProcess.
	illiAST := self generateIllicium: #activeProcess.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testAddIdleUsecsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addIdleUsecs:.
	illiAST := self generateIllicium: #addIdleUsecs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testAddLastLinktoListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addLastLink:toList:.
	illiAST := self generateIllicium: #addLastLink:toList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method lookup cache' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testAddNewMethodToCacheStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addNewMethodToCache:.
	illiAST := self generateIllicium: #addNewMethodToCache:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testAddressCouldBeClassObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addressCouldBeClassObj:.
	illiAST := self generateIllicium: #addressCouldBeClassObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testAllOnesAsCharStarStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allOnesAsCharStar.
	illiAST := self generateIllicium: #allOnesAsCharStar.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testArgumentCountOfClosureStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #argumentCountOfClosure:.
	illiAST := self generateIllicium: #argumentCountOfClosure:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testArgumentCountOfMethodHeaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #argumentCountOfMethodHeader:.
	illiAST := self generateIllicium: #argumentCountOfMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testArgumentCountOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #argumentCountOf:.
	illiAST := self generateIllicium: #argumentCountOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testArrayValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #arrayValueOf:.
	illiAST := self generateIllicium: #arrayValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testAsciiOfCharacterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #asciiOfCharacter:.
	illiAST := self generateIllicium: #asciiOfCharacter:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testAssertValidExecutionPointersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #assertValidExecutionPointe:r:s:.
	illiAST := self generateIllicium: #assertValidExecutionPointe:r:s:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testAssertValidExecutionPointersimbarlineStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #assertValidExecutionPointe:r:s:imbar:line:.
	illiAST := self
		generateIllicium: #assertValidExecutionPointe:r:s:imbar:line:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testBooleanValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #booleanValueOf:.
	illiAST := self generateIllicium: #booleanValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCStringOrNullForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #cStringOrNullFor:.
	illiAST := self generateIllicium: #cStringOrNullFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCallbackEnterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #callbackEnter:.
	illiAST := self generateIllicium: #callbackEnter:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCallbackLeaveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #callbackLeave:.
	illiAST := self generateIllicium: #callbackLeave:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCanBeImmutableStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #canBeImmutable:.
	illiAST := self generateIllicium: #canBeImmutable:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCanContextSwitchIfActivatingheaderStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #canContextSwitchIfActivating:header:.
	illiAST := self
		generateIllicium: #canContextSwitchIfActivating:header:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCharacterForAsciiStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #characterForAscii:.
	illiAST := self generateIllicium: #characterForAscii:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckAllAccessibleObjectsOkayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkAllAccessibleObjectsOkay.
	illiAST := self generateIllicium: #checkAllAccessibleObjectsOkay.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckCodeIntegrityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkCodeIntegrity:.
	illiAST := self generateIllicium: #checkCodeIntegrity:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckDeliveryOfLongRunningPrimitiveSignalStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #checkDeliveryOfLongRunningPrimitiveSignal.
	illiAST := self
		generateIllicium: #checkDeliveryOfLongRunningPrimitiveSignal.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckForEventsMayContextSwitchStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkForEventsMayContextSwitch:.
	illiAST := self generateIllicium: #checkForEventsMayContextSwitch:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckImageVersionFromstartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkImageVersionFrom:startingAt:.
	illiAST := self generateIllicium: #checkImageVersionFrom:startingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckInterpreterIntegrityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkInterpreterIntegrity.
	illiAST := self generateIllicium: #checkInterpreterIntegrity.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckIsStillMarriedContextcurrentFPStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #checkIsStillMarriedContext:currentFP:.
	illiAST := self
		generateIllicium: #checkIsStillMarriedContext:currentFP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckOkayFieldsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOkayFields:.
	illiAST := self generateIllicium: #checkOkayFields:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckOkayInterpreterObjectsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOkayInterpreterObjects:.
	illiAST := self generateIllicium: #checkOkayInterpreterObjects:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckOkayStackPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOkayStackPage:.
	illiAST := self generateIllicium: #checkOkayStackPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckOkayStackZoneStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOkayStackZone:.
	illiAST := self generateIllicium: #checkOkayStackZone:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckProfileTickStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkProfileTick:.
	illiAST := self generateIllicium: #checkProfileTick:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckStackIntegrityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkStackIntegrity.
	illiAST := self generateIllicium: #checkStackIntegrity.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckStackPointerForMaybeMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #checkStackPointerForMaybeMarriedContext:.
	illiAST := self
		generateIllicium: #checkStackPointerForMaybeMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckStackPointerIndexForFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkStackPointerIndexForFrame:.
	illiAST := self generateIllicium: #checkStackPointerIndexForFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCheckedIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkedIntegerValueOf:.
	illiAST := self generateIllicium: #checkedIntegerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testClassNameOfIsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classNameOf:Is:.
	illiAST := self generateIllicium: #classNameOf:Is:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCloneContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #cloneContext:.
	illiAST := self generateIllicium: #cloneContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testContexthasSenderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #context:hasSender:.
	illiAST := self generateIllicium: #context:hasSender:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testContexthasValidInversePCMappingOfinStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #context:hasValidInversePCMappingOf:in:.
	illiAST := self
		generateIllicium: #context:hasValidInversePCMappingOf:in:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCopiedValueCountOfClosureStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copiedValueCountOfClosure:.
	illiAST := self generateIllicium: #copiedValueCountOfClosure:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCopiedValueCountOfFullClosureStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copiedValueCountOfFullClosure:.
	illiAST := self generateIllicium: #copiedValueCountOfFullClosure:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'bitblt support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCopyBitsFromtoatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyBitsFrom:to:at:.
	illiAST := self generateIllicium: #copyBitsFrom:to:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'bitblt support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCopyBitsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyBits.
	illiAST := self generateIllicium: #copyBits.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCouldBeProcessStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #couldBeProcess:.
	illiAST := self generateIllicium: #couldBeProcess:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCrStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #cr.
	illiAST := self generateIllicium: #cr.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCreateActualMessageToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #createActualMessageTo:.
	illiAST := self generateIllicium: #createActualMessageTo:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #initialization }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testDefaultNumStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #defaultNumStackPages.
	illiAST := self generateIllicium: #defaultNumStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'vm scheduling' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testDisownVMStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #disownVM:.
	illiAST := self generateIllicium: #disownVM:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testDivorceAllFramesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #divorceAllFrames.
	illiAST := self generateIllicium: #divorceAllFrames.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testDivorceFramesInStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #divorceFramesIn:.
	illiAST := self generateIllicium: #divorceFramesIn:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testDoPrimitiveDivbyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #doPrimitiveDiv:by:.
	illiAST := self generateIllicium: #doPrimitiveDiv:by:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testDoPrimitiveModbyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #doPrimitiveMod:by:.
	illiAST := self generateIllicium: #doPrimitiveMod:by:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testDoSignalSemaphoreWithIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #doSignalSemaphoreWithIndex:.
	illiAST := self generateIllicium: #doSignalSemaphoreWithIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #initialization }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testDummyReferToProxyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #dummyReferToProxy.
	illiAST := self generateIllicium: #dummyReferToProxy.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testDumpPrimTraceLogStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #dumpPrimTraceLog.
	illiAST := self generateIllicium: #dumpPrimTraceLog.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testEnsureCallerContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #ensureCallerContext:.
	illiAST := self generateIllicium: #ensureCallerContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testEnsureImageFormatIsUpToDateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #ensureImageFormatIsUpToDate:.
	illiAST := self generateIllicium: #ensureImageFormatIsUpToDate:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #initialization }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testEnterSmalltalkExecutiveImplementationStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #enterSmalltalkExecutiveImplementation.
	illiAST := self
		generateIllicium: #enterSmalltalkExecutiveImplementation.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testExternalDivorceFrameandContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalDivorceFrame:andContext:.
	illiAST := self generateIllicium: #externalDivorceFrame:andContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testExternalEnsureIsBaseFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalEnsureIsBaseFrame:.
	illiAST := self generateIllicium: #externalEnsureIsBaseFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testExternalInstVarofContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalInstVar:ofContext:.
	illiAST := self generateIllicium: #externalInstVar:ofContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testExternalInstVarofContextputStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalInstVar:ofContext:put:.
	illiAST := self generateIllicium: #externalInstVar:ofContext:put:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testExternalQuickPrimitiveResponseStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalQuickPrimitiveResponse.
	illiAST := self generateIllicium: #externalQuickPrimitiveResponse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFailUnbalancedPrimitiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #failUnbalancedPrimitive.
	illiAST := self generateIllicium: #failUnbalancedPrimitive.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFailedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #failed.
	illiAST := self generateIllicium: #failed.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFetchArrayofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchArray:ofObject:.
	illiAST := self generateIllicium: #fetchArray:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFetchFloatofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchFloat:ofObject:.
	illiAST := self generateIllicium: #fetchFloat:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFetchIntegerofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchInteger:ofObject:.
	illiAST := self generateIllicium: #fetchInteger:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFetchPointerofMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchPointer:ofMarriedContext:.
	illiAST := self generateIllicium: #fetchPointer:ofMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFetchStackPointerOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchStackPointerOf:.
	illiAST := self generateIllicium: #fetchStackPointerOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFieldOrSenderFPofContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fieldOrSenderFP:ofContext:.
	illiAST := self generateIllicium: #fieldOrSenderFP:ofContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFieldofFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #field:ofFrame:.
	illiAST := self generateIllicium: #field:ofFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFindClassContainingMethodstartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #findClassContainingMethod:startingAt:.
	illiAST := self
		generateIllicium: #findClassContainingMethod:startingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFindClassOfMethodforReceiverStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findClassOfMethod:forReceiver:.
	illiAST := self generateIllicium: #findClassOfMethod:forReceiver:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFindFrameAboveinPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findFrameAbove:inPage:.
	illiAST := self generateIllicium: #findFrameAbove:inPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFindHomeForContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findHomeForContext:.
	illiAST := self generateIllicium: #findHomeForContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'handler search' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFindMethodWithPrimitiveFromContextUpToContextStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #findMethodWithPrimitive:FromContext:UpToContext:.
	illiAST := self
		generateIllicium: #findMethodWithPrimitive:FromContext:UpToContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFindNewMethodInClassTagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findNewMethodInClassTag:.
	illiAST := self generateIllicium: #findNewMethodInClassTag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFindSPOfonStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findSPOf:on:.
	illiAST := self generateIllicium: #findSPOf:on:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFindSelectorOfMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findSelectorOfMethod:.
	illiAST := self generateIllicium: #findSelectorOfMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFlushExternalPrimitiveOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #flushExternalPrimitiveOf:.
	illiAST := self generateIllicium: #flushExternalPrimitiveOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'lazy become' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFollowForwardedFrameContentsstackPointerStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #followForwardedFrameContents:stackPointer:.
	illiAST := self
		generateIllicium: #followForwardedFrameContents:stackPointer:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFollowForwardingPointersInStackZoneStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #followForwardingPointersInStackZone:.
	illiAST := self
		generateIllicium: #followForwardingPointersInStackZone:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testForceInterruptCheckFromHeartbeatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #forceInterruptCheckFromHeartbeat.
	illiAST := self generateIllicium: #forceInterruptCheckFromHeartbeat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testForceInterruptCheckStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #forceInterruptCheck.
	illiAST := self generateIllicium: #forceInterruptCheck.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFrameCallerContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameCallerContext:.
	illiAST := self generateIllicium: #frameCallerContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFrameContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameContext:.
	illiAST := self generateIllicium: #frameContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFrameHasContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameHasContext:.
	illiAST := self generateIllicium: #frameHasContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFrameIsBlockActivationStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameIsBlockActivation:.
	illiAST := self generateIllicium: #frameIsBlockActivation:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFrameMethodObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameMethodObject:.
	illiAST := self generateIllicium: #frameMethodObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFrameMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameMethod:.
	illiAST := self generateIllicium: #frameMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFrameNumArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameNumArgs:.
	illiAST := self generateIllicium: #frameNumArgs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFrameOfMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameOfMarriedContext:.
	illiAST := self generateIllicium: #frameOfMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFrameReceiverStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameReceiver:.
	illiAST := self generateIllicium: #frameReceiver:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFrameStackedReceiverOffsetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameStackedReceiverOffset:.
	illiAST := self generateIllicium: #frameStackedReceiverOffset:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFreeUntracedStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeUntracedStackPages.
	illiAST := self generateIllicium: #freeUntracedStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFullDisplayUpdateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fullDisplayUpdate.
	illiAST := self generateIllicium: #fullDisplayUpdate.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method lookup cache' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testFunctionPointerForinClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #functionPointerFor:inClass:.
	illiAST := self generateIllicium: #functionPointerFor:inClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter shell' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testGetCurrentBytecodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getCurrentBytecode.
	illiAST := self generateIllicium: #getCurrentBytecode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testGetDesiredCogCodeSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getDesiredCogCodeSize.
	illiAST := self generateIllicium: #getDesiredCogCodeSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testGetErrorObjectFromPrimFailCodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getErrorObjectFromPrimFailCode.
	illiAST := self generateIllicium: #getErrorObjectFromPrimFailCode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testGetFullScreenFlagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getFullScreenFlag.
	illiAST := self generateIllicium: #getFullScreenFlag.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testGetInterruptKeycodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getInterruptKeycode.
	illiAST := self generateIllicium: #getInterruptKeycode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testGetInterruptPendingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getInterruptPending.
	illiAST := self generateIllicium: #getInterruptPending.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testGetNextWakeupUsecsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getNextWakeupUsecs.
	illiAST := self generateIllicium: #getNextWakeupUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testGetSavedWindowSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getSavedWindowSize.
	illiAST := self generateIllicium: #getSavedWindowSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testGetSnapshotScreenSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getSnapshotScreenSize.
	illiAST := self generateIllicium: #getSnapshotScreenSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testGetStackPointerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getStackPointer.
	illiAST := self generateIllicium: #getStackPointer.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testGetThisSessionIDStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getThisSessionID.
	illiAST := self generateIllicium: #getThisSessionID.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testGetWordFromFileswapStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getWord32FromFile:swap:.
	illiAST := self generateIllicium: #getWord32FromFile:swap:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testHandleForwardedSelectorFaultForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #handleForwardedSelectorFaultFor:.
	illiAST := self generateIllicium: #handleForwardedSelectorFaultFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testHandleForwardedSendFaultForTagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #handleForwardedSendFaultForTag:.
	illiAST := self generateIllicium: #handleForwardedSendFaultForTag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testHandleSpecialSelectorSendFaultForfpspStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #handleSpecialSelectorSendFaultFor:fp:sp:.
	illiAST := self
		generateIllicium: #handleSpecialSelectorSendFaultFor:fp:sp:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testHandleStackOverflowOrEventAllowContextSwitchStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #handleStackOverflowOrEventAllowContextSwitch:.
	illiAST := self
		generateIllicium: #handleStackOverflowOrEventAllowContextSwitch:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testHandleStackOverflowStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #handleStackOverflow.
	illiAST := self generateIllicium: #handleStackOverflow.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testHighBitStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #highBit:.
	illiAST := self generateIllicium: #highBit:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIfCurrentStackPageHasValidHeadPointersStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #ifCurrentStackPageHasValidHeadPointers:.
	illiAST := self
		generateIllicium: #ifCurrentStackPageHasValidHeadPointers:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIfValidWriteBackStackPointersSaveToStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #ifValidWriteBackStack:Pointers:Save:To:.
	illiAST := self
		generateIllicium: #ifValidWriteBackStack:Pointers:Save:To:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIframeMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #iframeMethod:.
	illiAST := self generateIllicium: #iframeMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIncludesBehaviorThatOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #includesBehavior:ThatOf:.
	illiAST := self generateIllicium: #includesBehavior:ThatOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testInstructionPointerForFramecurrentFPcurrentIPStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #instructionPointerForFrame:currentFP:currentIP:.
	illiAST := self
		generateIllicium: #instructionPointerForFrame:currentFP:currentIP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter shell' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testInterpretStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #interpret.
	illiAST := self generateIllicium: #interpret.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testInterpreterAllocationReserveBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #interpreterAllocationReserveBytes.
	illiAST := self generateIllicium: #interpreterAllocationReserveBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIoFilenamefromStringofLengthresolveAliasesStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #ioFilename:fromString:ofLength:resolveAliases:.
	illiAST := self
		generateIllicium: #ioFilename:fromString:ofLength:resolveAliases:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsAppropriateForCopyObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isAppropriateForCopyObject:.
	illiAST := self generateIllicium: #isAppropriateForCopyObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsBaseFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isBaseFrame:.
	illiAST := self generateIllicium: #isBaseFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsBooleanObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isBooleanObject:.
	illiAST := self generateIllicium: #isBooleanObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsFloatObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isFloatObject:.
	illiAST := self generateIllicium: #isFloatObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsFrameonPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isFrame:onPage:.
	illiAST := self generateIllicium: #isFrame:onPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsKindOfClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #is:KindOfClass:.
	illiAST := self generateIllicium: #is:KindOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsKindOfIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isKindOfInteger:.
	illiAST := self generateIllicium: #isKindOfInteger:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsKindOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #is:KindOf:.
	illiAST := self generateIllicium: #is:KindOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsLargeIntegerObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLargeIntegerObject:.
	illiAST := self generateIllicium: #isLargeIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsLargeNegativeIntegerObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLargeNegativeIntegerObject:.
	illiAST := self generateIllicium: #isLargeNegativeIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsLargePositiveIntegerObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLargePositiveIntegerObject:.
	illiAST := self generateIllicium: #isLargePositiveIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsLiveContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLiveContext:.
	illiAST := self generateIllicium: #isLiveContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsMarriedOrWidowedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isMarriedOrWidowedContext:.
	illiAST := self generateIllicium: #isMarriedOrWidowedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsMemberOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #is:MemberOf:.
	illiAST := self generateIllicium: #is:MemberOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsMetaPrimitiveIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isMetaPrimitiveIndex:.
	illiAST := self generateIllicium: #isMetaPrimitiveIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsNegativeIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isNegativeIntegerValueOf:.
	illiAST := self generateIllicium: #isNegativeIntegerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsPositiveMachineIntegerObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isPositiveMachineIntegerObject:.
	illiAST := self generateIllicium: #isPositiveMachineIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsPrimitiveFunctionPointerAnIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isPrimitiveFunctionPointerAnIndex.
	illiAST := self generateIllicium: #isPrimitiveFunctionPointerAnIndex.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsQuickPrimitiveIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isQuickPrimitiveIndex:.
	illiAST := self generateIllicium: #isQuickPrimitiveIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsReadMediatedContextInstVarIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #isReadMediatedContextInstVarIndex:.
	illiAST := self generateIllicium: #isReadMediatedContextInstVarIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsSingleContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isSingleContext:.
	illiAST := self generateIllicium: #isSingleContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsWidowedContextDuringGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isWidowedContextDuringGC:.
	illiAST := self generateIllicium: #isWidowedContextDuringGC:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsWidowedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isWidowedContext:.
	illiAST := self generateIllicium: #isWidowedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsWriteMediatedContextInstVarIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #isWriteMediatedContextInstVarIndex:.
	illiAST := self
		generateIllicium: #isWriteMediatedContextInstVarIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testLengthOfNameOfClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lengthOfNameOfClass:.
	illiAST := self generateIllicium: #lengthOfNameOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testLiteralofMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #literal:ofMethod:.
	illiAST := self generateIllicium: #literal:ofMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'bitblt support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testLoadBitBltFromStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #loadBitBltFrom:.
	illiAST := self generateIllicium: #loadBitBltFrom:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #initialization }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testLoadInitialContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #loadInitialContext.
	illiAST := self generateIllicium: #loadInitialContext.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testLongPrintOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #longPrintOop:.
	illiAST := self generateIllicium: #longPrintOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testLongStoreBytecodeForHeaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #longStoreBytecodeForHeader:.
	illiAST := self generateIllicium: #longStoreBytecodeForHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method lookup cache' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testLookupInMethodCacheSelclassTagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lookupInMethodCacheSel:classTag:.
	illiAST := self generateIllicium: #lookupInMethodCacheSel:classTag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testLookupMethodInClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lookupMethodInClass:.
	illiAST := self generateIllicium: #lookupMethodInClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testLookupOrdinaryNoMNUEtcInClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lookupOrdinaryNoMNUEtcInClass:.
	illiAST := self generateIllicium: #lookupOrdinaryNoMNUEtcInClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testLookupSelectorinClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lookupSelector:inClass:.
	illiAST := self generateIllicium: #lookupSelector:inClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMagnitudeBitIntegerFornegStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #magnitude64BitIntegerFor:neg:.
	illiAST := self generateIllicium: #magnitude64BitIntegerFor:neg:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMagnitudeBitValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #magnitude64BitValueOf:.
	illiAST := self generateIllicium: #magnitude64BitValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMakeBaseFrameForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #makeBaseFrameFor:.
	illiAST := self generateIllicium: #makeBaseFrameFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMakeContextSnapshotSafeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #makeContextSnapshotSafe:.
	illiAST := self generateIllicium: #makeContextSnapshotSafe:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMakePointwithxValueyValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #makePointwithxValue:yValue:.
	illiAST := self generateIllicium: #makePointwithxValue:yValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMapInterpreterOopsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #mapInterpreterOops.
	illiAST := self generateIllicium: #mapInterpreterOops.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMapStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #mapStackPages.
	illiAST := self generateIllicium: #mapStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMarkAndTraceStackPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markAndTraceStackPage:.
	illiAST := self generateIllicium: #markAndTraceStackPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMarkAndTraceStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markAndTraceStackPages:.
	illiAST := self generateIllicium: #markAndTraceStackPages:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMarkAndTraceUntracedReachableStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #markAndTraceUntracedReachableStackPages.
	illiAST := self
		generateIllicium: #markAndTraceUntracedReachableStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMarriedContextpointsTostackDeltaForCurrentFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #marriedContext:pointsTo:stackDeltaForCurrentFrame:.
	illiAST := self
		generateIllicium: #marriedContext:pointsTo:stackDeltaForCurrentFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMarryContextInNewStackPageAndInitializeInterpreterRegistersStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #marryContextInNewStackPageAndInitializeInterpreterRegisters:.
	illiAST := self
		generateIllicium: #marryContextInNewStackPageAndInitializeInterpreterRegisters:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMarryFrameSPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #marryFrame:SP:.
	illiAST := self generateIllicium: #marryFrame:SP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMaybeLeakCheckExternalPrimCallStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #maybeLeakCheckExternalPrimCall:.
	illiAST := self generateIllicium: #maybeLeakCheckExternalPrimCall:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMaybeSelectorOfMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #maybeSelectorOfMethod:.
	illiAST := self generateIllicium: #maybeSelectorOfMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMethodArgumentCountStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodArgumentCount.
	illiAST := self generateIllicium: #methodArgumentCount.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMethodClassAssociationOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodClassAssociationOf:.
	illiAST := self generateIllicium: #methodClassAssociationOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMethodClassOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodClassOf:.
	illiAST := self generateIllicium: #methodClassOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMethodHeaderIndicatesLargeFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodHeaderIndicatesLargeFrame:.
	illiAST := self generateIllicium: #methodHeaderIndicatesLargeFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMethodPrimitiveIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodPrimitiveIndex.
	illiAST := self generateIllicium: #methodPrimitiveIndex.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMethodReturnBoolStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnBool:.
	illiAST := self generateIllicium: #methodReturnBool:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMethodReturnFloatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnFloat:.
	illiAST := self generateIllicium: #methodReturnFloat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMethodReturnIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnInteger:.
	illiAST := self generateIllicium: #methodReturnInteger:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMethodReturnReceiverStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnReceiver.
	illiAST := self generateIllicium: #methodReturnReceiver.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMethodReturnStringStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnString:.
	illiAST := self generateIllicium: #methodReturnString:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMethodReturnValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnValue:.
	illiAST := self generateIllicium: #methodReturnValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMethodUsesAlternateBytecodeSetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodUsesAlternateBytecodeSet:.
	illiAST := self generateIllicium: #methodUsesAlternateBytecodeSet:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMethodUsesPrimitiveErrorCodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodUsesPrimitiveErrorCode:.
	illiAST := self generateIllicium: #methodUsesPrimitiveErrorCode:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #initialization }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testModuleUnloadedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #moduleUnloaded:.
	illiAST := self generateIllicium: #moduleUnloaded:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testMoveFramesInthroughtoPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #moveFramesIn:through:toPage:.
	illiAST := self generateIllicium: #moveFramesIn:through:toPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testNameOfClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #nameOfClass:.
	illiAST := self generateIllicium: #nameOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testNoInlineLoadFloatOrIntFromStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noInlineLoadFloatOrIntFrom:.
	illiAST := self generateIllicium: #noInlineLoadFloatOrIntFrom:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testNoInlineTemporaryinStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noInlineTemporary:in:.
	illiAST := self generateIllicium: #noInlineTemporary:in:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testNoInlineTemporaryinputStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noInlineTemporary:in:put:.
	illiAST := self generateIllicium: #noInlineTemporary:in:put:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testNoMarkedContextsOnPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noMarkedContextsOnPage:.
	illiAST := self generateIllicium: #noMarkedContextsOnPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testNumSlotsOfMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numSlotsOfMarriedContext:.
	illiAST := self generateIllicium: #numSlotsOfMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testNumStkPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numStkPages.
	illiAST := self generateIllicium: #numStkPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testObjCouldBeClassObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #objCouldBeClassObj:.
	illiAST := self generateIllicium: #objCouldBeClassObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'vm scheduling' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testOwnVMStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #ownVM:.
	illiAST := self generateIllicium: #ownVM:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPenultimateLiteralOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #penultimateLiteralOf:.
	illiAST := self generateIllicium: #penultimateLiteralOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPopStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #popStack.
	illiAST := self generateIllicium: #popStack.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pop:.
	illiAST := self generateIllicium: #pop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPopthenPushStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pop:thenPush:.
	illiAST := self generateIllicium: #pop:thenPush:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPositiveBitIntegerForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #positive64BitIntegerFor:.
	illiAST := self generateIllicium: #positive64BitIntegerFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPositiveBitValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #positive32BitValueOf:.
	illiAST := self generateIllicium: #positive32BitValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPositiveMachineIntegerForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #positiveMachineIntegerFor:.
	illiAST := self generateIllicium: #positiveMachineIntegerFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPositiveMachineIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #positiveMachineIntegerValueOf:.
	illiAST := self generateIllicium: #positiveMachineIntegerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPostGCUpdateDisplayBitsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #postGCUpdateDisplayBits.
	illiAST := self generateIllicium: #postGCUpdateDisplayBits.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveAddLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAddLargeIntegers.
	illiAST := self generateIllicium: #primitiveAddLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveAddStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAdd.
	illiAST := self generateIllicium: #primitiveAdd.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveAdoptInstanceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAdoptInstance.
	illiAST := self generateIllicium: #primitiveAdoptInstance.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveAllInstancesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAllInstances.
	illiAST := self generateIllicium: #primitiveAllInstances.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveAllObjectsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAllObjects.
	illiAST := self generateIllicium: #primitiveAllObjects.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveAllVMParametersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAllVMParameters:.
	illiAST := self generateIllicium: #primitiveAllVMParameters:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveArctanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveArctan.
	illiAST := self generateIllicium: #primitiveArctan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveArrayBecomeOneWayCopyHashStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveArrayBecomeOneWayCopyHash.
	illiAST := self generateIllicium: #primitiveArrayBecomeOneWayCopyHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveArrayBecomeOneWayNoCopyHashStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveArrayBecomeOneWayNoCopyHash.
	illiAST := self
		generateIllicium: #primitiveArrayBecomeOneWayNoCopyHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveArrayBecomeOneWayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveArrayBecomeOneWay.
	illiAST := self generateIllicium: #primitiveArrayBecomeOneWay.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveArrayBecomeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveArrayBecome.
	illiAST := self generateIllicium: #primitiveArrayBecome.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveAsCharacterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAsCharacter.
	illiAST := self generateIllicium: #primitiveAsCharacter.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveAsFloatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAsFloat.
	illiAST := self generateIllicium: #primitiveAsFloat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAtPut.
	illiAST := self generateIllicium: #primitiveAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAt.
	illiAST := self generateIllicium: #primitiveAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveBeCursorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBeCursor.
	illiAST := self generateIllicium: #primitiveBeCursor.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveBeDisplayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBeDisplay.
	illiAST := self generateIllicium: #primitiveBeDisplay.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveBeepStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBeep.
	illiAST := self generateIllicium: #primitiveBeep.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveBehaviorHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBehaviorHash.
	illiAST := self generateIllicium: #primitiveBehaviorHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveBitAndLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitAndLargeIntegers.
	illiAST := self generateIllicium: #primitiveBitAndLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveBitAndStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitAnd.
	illiAST := self generateIllicium: #primitiveBitAnd.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveBitOrLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitOrLargeIntegers.
	illiAST := self generateIllicium: #primitiveBitOrLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveBitOrStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitOr.
	illiAST := self generateIllicium: #primitiveBitOr.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveBitShiftLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitShiftLargeIntegers.
	illiAST := self generateIllicium: #primitiveBitShiftLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveBitShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitShift.
	illiAST := self generateIllicium: #primitiveBitShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveBitXorLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitXorLargeIntegers.
	illiAST := self generateIllicium: #primitiveBitXorLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveBitXorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBitXor.
	illiAST := self generateIllicium: #primitiveBitXor.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveBytesLeftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveBytesLeft.
	illiAST := self generateIllicium: #primitiveBytesLeft.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveCalloutToFFIStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCalloutToFFI.
	illiAST := self generateIllicium: #primitiveCalloutToFFI.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveChangeClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveChangeClass.
	illiAST := self generateIllicium: #primitiveChangeClass.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClass.
	illiAST := self generateIllicium: #primitiveClass.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveClearVMProfileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClearVMProfile.
	illiAST := self generateIllicium: #primitiveClearVMProfile.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveClipboardTextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClipboardText.
	illiAST := self generateIllicium: #primitiveClipboardText.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveClockLogAddressesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClockLogAddresses.
	illiAST := self generateIllicium: #primitiveClockLogAddresses.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveCloneStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClone.
	illiAST := self generateIllicium: #primitiveClone.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveClosureCopyWithCopiedValuesStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveClosureCopyWithCopiedValues.
	illiAST := self
		generateIllicium: #primitiveClosureCopyWithCopiedValues.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveClosureValueNoContextSwitchStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveClosureValueNoContextSwitch.
	illiAST := self
		generateIllicium: #primitiveClosureValueNoContextSwitch.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveClosureValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClosureValue.
	illiAST := self generateIllicium: #primitiveClosureValue.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveClosureValueWithArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClosureValueWithArgs.
	illiAST := self generateIllicium: #primitiveClosureValueWithArgs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveCoarseLocalMicrosecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveCoarseLocalMicrosecondClock.
	illiAST := self
		generateIllicium: #primitiveCoarseLocalMicrosecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveCoarseUTCMicrosecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveCoarseUTCMicrosecondClock.
	illiAST := self generateIllicium: #primitiveCoarseUTCMicrosecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveCompareBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCompareBytes.
	illiAST := self generateIllicium: #primitiveCompareBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'string primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveCompareWithStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCompareWith.
	illiAST := self generateIllicium: #primitiveCompareWith.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'sound primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveConstantFillStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveConstantFill.
	illiAST := self generateIllicium: #primitiveConstantFill.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveContextAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveContextAtPut.
	illiAST := self generateIllicium: #primitiveContextAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveContextAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveContextAt.
	illiAST := self generateIllicium: #primitiveContextAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveContextSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveContextSize.
	illiAST := self generateIllicium: #primitiveContextSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveContextXrayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveContextXray.
	illiAST := self generateIllicium: #primitiveContextXray.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveControlVMProfilingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveControlVMProfiling.
	illiAST := self generateIllicium: #primitiveControlVMProfiling.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveCopyObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCopyObject.
	illiAST := self generateIllicium: #primitiveCopyObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveCrashVMStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveCrashVM.
	illiAST := self generateIllicium: #primitiveCrashVM.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveDeferDisplayUpdatesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDeferDisplayUpdates.
	illiAST := self generateIllicium: #primitiveDeferDisplayUpdates.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveDisablePowerManagerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDisablePowerManager.
	illiAST := self generateIllicium: #primitiveDisablePowerManager.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveDivLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDivLargeIntegers.
	illiAST := self generateIllicium: #primitiveDivLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveDivStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDiv.
	illiAST := self generateIllicium: #primitiveDiv.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveDivideLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDivideLargeIntegers.
	illiAST := self generateIllicium: #primitiveDivideLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveDivideStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDivide.
	illiAST := self generateIllicium: #primitiveDivide.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveDoNamedPrimitiveWithArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDoNamedPrimitiveWithArgs.
	illiAST := self generateIllicium: #primitiveDoNamedPrimitiveWithArgs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveDoPrimitiveWithArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDoPrimitiveWithArgs.
	illiAST := self generateIllicium: #primitiveDoPrimitiveWithArgs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveEnterCriticalSectionStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveEnterCriticalSection.
	illiAST := self generateIllicium: #primitiveEnterCriticalSection.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveEqualLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveEqualLargeIntegers.
	illiAST := self generateIllicium: #primitiveEqualLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveEqual.
	illiAST := self generateIllicium: #primitiveEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveEventProcessingControlStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveEventProcessingControl.
	illiAST := self generateIllicium: #primitiveEventProcessingControl.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveExecuteMethodArgsArrayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExecuteMethodArgsArray.
	illiAST := self generateIllicium: #primitiveExecuteMethodArgsArray.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveExecuteMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExecuteMethod.
	illiAST := self generateIllicium: #primitiveExecuteMethod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveExitCriticalSectionStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExitCriticalSection.
	illiAST := self generateIllicium: #primitiveExitCriticalSection.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveExitToDebuggerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExitToDebugger.
	illiAST := self generateIllicium: #primitiveExitToDebugger.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveExpStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExp.
	illiAST := self generateIllicium: #primitiveExp.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveExponentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExponent.
	illiAST := self generateIllicium: #primitiveExponent.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveExternalCallStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExternalCall.
	illiAST := self generateIllicium: #primitiveExternalCall.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFailForFFIExceptionatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFailForFFIException:at:.
	illiAST := self generateIllicium: #primitiveFailForFFIException:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFailForOSErrorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFailForOSError:.
	illiAST := self generateIllicium: #primitiveFailForOSError:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFailForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFailFor:.
	illiAST := self generateIllicium: #primitiveFailFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFailStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFail.
	illiAST := self generateIllicium: #primitiveFail.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFailureCodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFailureCode.
	illiAST := self generateIllicium: #primitiveFailureCode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFetchNextMournerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFetchNextMourner.
	illiAST := self generateIllicium: #primitiveFetchNextMourner.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFindHandlerContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFindHandlerContext.
	illiAST := self generateIllicium: #primitiveFindHandlerContext.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFindNextUnwindContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFindNextUnwindContext.
	illiAST := self generateIllicium: #primitiveFindNextUnwindContext.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatAddStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatAdd.
	illiAST := self generateIllicium: #primitiveFloatAdd.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatAtPut.
	illiAST := self generateIllicium: #primitiveFloatAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatAt.
	illiAST := self generateIllicium: #primitiveFloatAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatDivideStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatDivide.
	illiAST := self generateIllicium: #primitiveFloatDivide.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatEqual.
	illiAST := self generateIllicium: #primitiveFloatEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatGreaterOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatGreaterOrEqual.
	illiAST := self generateIllicium: #primitiveFloatGreaterOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatGreaterThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatGreaterThan.
	illiAST := self generateIllicium: #primitiveFloatGreaterThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatLessOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatLessOrEqual.
	illiAST := self generateIllicium: #primitiveFloatLessOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatLessThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatLessThan.
	illiAST := self generateIllicium: #primitiveFloatLessThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatMultiplyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatMultiply.
	illiAST := self generateIllicium: #primitiveFloatMultiply.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatNotEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatNotEqual.
	illiAST := self generateIllicium: #primitiveFloatNotEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFloatSubtractStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFloatSubtract.
	illiAST := self generateIllicium: #primitiveFloatSubtract.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFlushCacheByMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFlushCacheByMethod.
	illiAST := self generateIllicium: #primitiveFlushCacheByMethod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFlushCacheBySelectorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFlushCacheBySelector.
	illiAST := self generateIllicium: #primitiveFlushCacheBySelector.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFlushCacheStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFlushCache.
	illiAST := self generateIllicium: #primitiveFlushCache.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFlushExternalPrimitivesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFlushExternalPrimitives.
	illiAST := self generateIllicium: #primitiveFlushExternalPrimitives.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveForceDisplayUpdateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveForceDisplayUpdate.
	illiAST := self generateIllicium: #primitiveForceDisplayUpdate.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFormPrintStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFormPrint.
	illiAST := self generateIllicium: #primitiveFormPrint.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFractionalPartStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFractionalPart.
	illiAST := self generateIllicium: #primitiveFractionalPart.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFullClosureValueNoContextSwitchStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveFullClosureValueNoContextSwitch.
	illiAST := self
		generateIllicium: #primitiveFullClosureValueNoContextSwitch.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFullClosureValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFullClosureValue.
	illiAST := self generateIllicium: #primitiveFullClosureValue.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFullClosureValueWithArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFullClosureValueWithArgs.
	illiAST := self generateIllicium: #primitiveFullClosureValueWithArgs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFullGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFullGC.
	illiAST := self generateIllicium: #primitiveFullGC.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveGetAttributeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetAttribute.
	illiAST := self generateIllicium: #primitiveGetAttribute.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveGetImmutabilityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetImmutability.
	illiAST := self generateIllicium: #primitiveGetImmutability.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveGetLogDirectoryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetLogDirectory.
	illiAST := self generateIllicium: #primitiveGetLogDirectory.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveGetNextEventStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetNextEvent.
	illiAST := self generateIllicium: #primitiveGetNextEvent.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveGetVMParameterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetVMParameter:.
	illiAST := self generateIllicium: #primitiveGetVMParameter:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveGetWindowLabelStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetWindowLabel.
	illiAST := self generateIllicium: #primitiveGetWindowLabel.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveGetWindowSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetWindowSize.
	illiAST := self generateIllicium: #primitiveGetWindowSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveGetenvStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGetenv.
	illiAST := self generateIllicium: #primitiveGetenv.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveGreaterOrEqualLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveGreaterOrEqualLargeIntegers.
	illiAST := self
		generateIllicium: #primitiveGreaterOrEqualLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveGreaterOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGreaterOrEqual.
	illiAST := self generateIllicium: #primitiveGreaterOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveGreaterThanLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGreaterThanLargeIntegers.
	illiAST := self generateIllicium: #primitiveGreaterThanLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveGreaterThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGreaterThan.
	illiAST := self generateIllicium: #primitiveGreaterThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveGrowMemoryByAtLeastStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveGrowMemoryByAtLeast.
	illiAST := self generateIllicium: #primitiveGrowMemoryByAtLeast.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveHashMultiplyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveHashMultiply.
	illiAST := self generateIllicium: #primitiveHashMultiply.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveHeartbeatFrequencyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveHeartbeatFrequency.
	illiAST := self generateIllicium: #primitiveHeartbeatFrequency.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveHighResClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveHighResClock.
	illiAST := self generateIllicium: #primitiveHighResClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveIdenticalStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIdentical.
	illiAST := self generateIllicium: #primitiveIdentical.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveIdentityHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIdentityHash.
	illiAST := self generateIllicium: #primitiveIdentityHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveImageFormatVersionStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveImageFormatVersion.
	illiAST := self generateIllicium: #primitiveImageFormatVersion.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveImageNameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveImageName.
	illiAST := self generateIllicium: #primitiveImageName.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveImmediateAsIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveImmediateAsInteger.
	illiAST := self generateIllicium: #primitiveImmediateAsInteger.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveIncrementalGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIncrementalGC.
	illiAST := self generateIllicium: #primitiveIncrementalGC.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveIndexOfMethodheaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIndexOfMethod:header:.
	illiAST := self generateIllicium: #primitiveIndexOfMethod:header:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveIndexOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIndexOf:.
	illiAST := self generateIllicium: #primitiveIndexOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveInputSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInputSemaphore.
	illiAST := self generateIllicium: #primitiveInputSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveInputWordStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInputWord.
	illiAST := self generateIllicium: #primitiveInputWord.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveInstVarAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInstVarAtPut.
	illiAST := self generateIllicium: #primitiveInstVarAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveInstVarAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInstVarAt.
	illiAST := self generateIllicium: #primitiveInstVarAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveIntegerAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIntegerAtPut.
	illiAST := self generateIllicium: #primitiveIntegerAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveIntegerAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIntegerAt.
	illiAST := self generateIllicium: #primitiveIntegerAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveInterruptChecksPerMSecStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInterruptChecksPerMSec.
	illiAST := self generateIllicium: #primitiveInterruptChecksPerMSec.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveInterruptSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInterruptSemaphore.
	illiAST := self generateIllicium: #primitiveInterruptSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveInvokeObjectAsMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInvokeObjectAsMethod.
	illiAST := self generateIllicium: #primitiveInvokeObjectAsMethod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveIsBigEnderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIsBigEnder.
	illiAST := self generateIllicium: #primitiveIsBigEnder.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveIsPinnedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIsPinned.
	illiAST := self generateIllicium: #primitiveIsPinned.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveIsWindowObscuredStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIsWindowObscured.
	illiAST := self generateIllicium: #primitiveIsWindowObscured.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveKbdNextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveKbdNext.
	illiAST := self generateIllicium: #primitiveKbdNext.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveKbdPeekStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveKbdPeek.
	illiAST := self generateIllicium: #primitiveKbdPeek.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveLessOrEqualLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLessOrEqualLargeIntegers.
	illiAST := self generateIllicium: #primitiveLessOrEqualLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveLessOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLessOrEqual.
	illiAST := self generateIllicium: #primitiveLessOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveLessThanLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLessThanLargeIntegers.
	illiAST := self generateIllicium: #primitiveLessThanLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveLessThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLessThan.
	illiAST := self generateIllicium: #primitiveLessThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveListBuiltinModuleStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveListBuiltinModule.
	illiAST := self generateIllicium: #primitiveListBuiltinModule.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveListExternalModuleStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveListExternalModule.
	illiAST := self generateIllicium: #primitiveListExternalModule.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveLoadImageSegmentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLoadImageSegment.
	illiAST := self generateIllicium: #primitiveLoadImageSegment.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveLocalMicrosecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLocalMicrosecondClock.
	illiAST := self generateIllicium: #primitiveLocalMicrosecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveLogNStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLogN.
	illiAST := self generateIllicium: #primitiveLogN.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveLongRunningPrimitiveSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveLongRunningPrimitiveSemaphore.
	illiAST := self
		generateIllicium: #primitiveLongRunningPrimitiveSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveLongRunningPrimitiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLongRunningPrimitive.
	illiAST := self generateIllicium: #primitiveLongRunningPrimitive.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveLowSpaceSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLowSpaceSemaphore.
	illiAST := self generateIllicium: #primitiveLowSpaceSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveMakePointStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMakePoint.
	illiAST := self generateIllicium: #primitiveMakePoint.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveMaxIdentityHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMaxIdentityHash.
	illiAST := self generateIllicium: #primitiveMaxIdentityHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMethod.
	illiAST := self generateIllicium: #primitiveMethod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveMillisecondClockMaskStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMillisecondClockMask.
	illiAST := self generateIllicium: #primitiveMillisecondClockMask.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveMillisecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMillisecondClock.
	illiAST := self generateIllicium: #primitiveMillisecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveModLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveModLargeIntegers.
	illiAST := self generateIllicium: #primitiveModLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveModStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMod.
	illiAST := self generateIllicium: #primitiveMod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveMouseButtonsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMouseButtons.
	illiAST := self generateIllicium: #primitiveMouseButtons.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveMousePointStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMousePoint.
	illiAST := self generateIllicium: #primitiveMousePoint.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveMultiplyLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMultiplyLargeIntegers.
	illiAST := self generateIllicium: #primitiveMultiplyLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveMultiplyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveMultiply.
	illiAST := self generateIllicium: #primitiveMultiply.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveNewMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNewMethod.
	illiAST := self generateIllicium: #primitiveNewMethod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveNewStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNew.
	illiAST := self generateIllicium: #primitiveNew.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveNewWithArgStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNewWithArg.
	illiAST := self generateIllicium: #primitiveNewWithArg.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveNextInstanceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNextInstance.
	illiAST := self generateIllicium: #primitiveNextInstance.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveNextObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNextObject.
	illiAST := self generateIllicium: #primitiveNextObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveNoopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNoop.
	illiAST := self generateIllicium: #primitiveNoop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveNotEqualLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNotEqualLargeIntegers.
	illiAST := self generateIllicium: #primitiveNotEqualLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveNotEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNotEqual.
	illiAST := self generateIllicium: #primitiveNotEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveNotIdenticalStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveNotIdentical.
	illiAST := self generateIllicium: #primitiveNotIdentical.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveObjectAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveObjectAtPut.
	illiAST := self generateIllicium: #primitiveObjectAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveObjectAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveObjectAt.
	illiAST := self generateIllicium: #primitiveObjectAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveObjectPointsToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveObjectPointsTo.
	illiAST := self generateIllicium: #primitiveObjectPointsTo.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'other primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitivePathToUsingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePathToUsing.
	illiAST := self generateIllicium: #primitivePathToUsing.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitivePerformInSuperclassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePerformInSuperclass.
	illiAST := self generateIllicium: #primitivePerformInSuperclass.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitivePerformStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePerform.
	illiAST := self generateIllicium: #primitivePerform.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitivePerformWithArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePerformWithArgs.
	illiAST := self generateIllicium: #primitivePerformWithArgs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitivePinStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePin.
	illiAST := self generateIllicium: #primitivePin.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveProfilePrimitiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveProfilePrimitive.
	illiAST := self generateIllicium: #primitiveProfilePrimitive.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveProfileSampleStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveProfileSample.
	illiAST := self generateIllicium: #primitiveProfileSample.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveProfileSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveProfileSemaphore.
	illiAST := self generateIllicium: #primitiveProfileSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveProfileStartStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveProfileStart.
	illiAST := self generateIllicium: #primitiveProfileStart.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveQuitStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveQuit.
	illiAST := self generateIllicium: #primitiveQuit.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveQuoLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveQuoLargeIntegers.
	illiAST := self generateIllicium: #primitiveQuoLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveQuoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveQuo.
	illiAST := self generateIllicium: #primitiveQuo.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveRelinquishProcessorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveRelinquishProcessor.
	illiAST := self generateIllicium: #primitiveRelinquishProcessor.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveRemLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveRemLargeIntegers.
	illiAST := self generateIllicium: #primitiveRemLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveResumeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveResume.
	illiAST := self generateIllicium: #primitiveResume.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveScanCharactersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveScanCharacters.
	illiAST := self generateIllicium: #primitiveScanCharacters.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveScreenDepthStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveScreenDepth.
	illiAST := self generateIllicium: #primitiveScreenDepth.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveScreenScaleFactorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveScreenScaleFactor.
	illiAST := self generateIllicium: #primitiveScreenScaleFactor.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveScreenSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveScreenSize.
	illiAST := self generateIllicium: #primitiveScreenSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSecondsClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSecondsClock.
	illiAST := self generateIllicium: #primitiveSecondsClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetDisplayModeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetDisplayMode.
	illiAST := self generateIllicium: #primitiveSetDisplayMode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetFullScreenStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetFullScreen.
	illiAST := self generateIllicium: #primitiveSetFullScreen.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetGCSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetGCSemaphore.
	illiAST := self generateIllicium: #primitiveSetGCSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetImmutabilityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetImmutability.
	illiAST := self generateIllicium: #primitiveSetImmutability.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetInterruptKeyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetInterruptKey.
	illiAST := self generateIllicium: #primitiveSetInterruptKey.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetLogDirectoryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetLogDirectory.
	illiAST := self generateIllicium: #primitiveSetLogDirectory.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetOrHasIdentityHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetOrHasIdentityHash.
	illiAST := self generateIllicium: #primitiveSetOrHasIdentityHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetWindowLabelStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetWindowLabel.
	illiAST := self generateIllicium: #primitiveSetWindowLabel.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetWindowSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetWindowSize.
	illiAST := self generateIllicium: #primitiveSetWindowSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'sound primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveShortAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveShortAtPut.
	illiAST := self generateIllicium: #primitiveShortAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'sound primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveShortAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveShortAt.
	illiAST := self generateIllicium: #primitiveShortAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveShowDisplayRectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveShowDisplayRect.
	illiAST := self generateIllicium: #primitiveShowDisplayRect.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSignalAtBytesLeftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSignalAtBytesLeft.
	illiAST := self generateIllicium: #primitiveSignalAtBytesLeft.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSignalAtMillisecondsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSignalAtMilliseconds.
	illiAST := self generateIllicium: #primitiveSignalAtMilliseconds.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSignalAtUTCMicrosecondsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSignalAtUTCMicroseconds.
	illiAST := self generateIllicium: #primitiveSignalAtUTCMicroseconds.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSignalStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSignal.
	illiAST := self generateIllicium: #primitiveSignal.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSineStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSine.
	illiAST := self generateIllicium: #primitiveSine.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSizeInBytesOfInstanceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSizeInBytesOfInstance.
	illiAST := self generateIllicium: #primitiveSizeInBytesOfInstance.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSizeInBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSizeInBytes.
	illiAST := self generateIllicium: #primitiveSizeInBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSize.
	illiAST := self generateIllicium: #primitiveSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSlotAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSlotAtPut.
	illiAST := self generateIllicium: #primitiveSlotAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSlotAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSlotAt.
	illiAST := self generateIllicium: #primitiveSlotAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatAddStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatAdd.
	illiAST := self generateIllicium: #primitiveSmallFloatAdd.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatArctanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatArctan.
	illiAST := self generateIllicium: #primitiveSmallFloatArctan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatDivideStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatDivide.
	illiAST := self generateIllicium: #primitiveSmallFloatDivide.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatEqual.
	illiAST := self generateIllicium: #primitiveSmallFloatEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatExpStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatExp.
	illiAST := self generateIllicium: #primitiveSmallFloatExp.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatExponentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatExponent.
	illiAST := self generateIllicium: #primitiveSmallFloatExponent.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatFractionalPartStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatFractionalPart.
	illiAST := self generateIllicium: #primitiveSmallFloatFractionalPart.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatGreaterOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatGreaterOrEqual.
	illiAST := self generateIllicium: #primitiveSmallFloatGreaterOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatGreaterThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatGreaterThan.
	illiAST := self generateIllicium: #primitiveSmallFloatGreaterThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatLessOrEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatLessOrEqual.
	illiAST := self generateIllicium: #primitiveSmallFloatLessOrEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatLessThanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatLessThan.
	illiAST := self generateIllicium: #primitiveSmallFloatLessThan.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatLogNStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatLogN.
	illiAST := self generateIllicium: #primitiveSmallFloatLogN.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatMultiplyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatMultiply.
	illiAST := self generateIllicium: #primitiveSmallFloatMultiply.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatNotEqualStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatNotEqual.
	illiAST := self generateIllicium: #primitiveSmallFloatNotEqual.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatSineStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatSine.
	illiAST := self generateIllicium: #primitiveSmallFloatSine.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatSquareRootStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatSquareRoot.
	illiAST := self generateIllicium: #primitiveSmallFloatSquareRoot.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatSubtractStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatSubtract.
	illiAST := self generateIllicium: #primitiveSmallFloatSubtract.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatTimesTwoPowerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatTimesTwoPower.
	illiAST := self generateIllicium: #primitiveSmallFloatTimesTwoPower.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatTruncatedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSmallFloatTruncated.
	illiAST := self generateIllicium: #primitiveSmallFloatTruncated.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSnapshotEmbeddedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSnapshotEmbedded.
	illiAST := self generateIllicium: #primitiveSnapshotEmbedded.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSnapshotStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSnapshot.
	illiAST := self generateIllicium: #primitiveSnapshot.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSomeInstanceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSomeInstance.
	illiAST := self generateIllicium: #primitiveSomeInstance.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSomeObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSomeObject.
	illiAST := self generateIllicium: #primitiveSomeObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSpecialObjectsOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSpecialObjectsOop.
	illiAST := self generateIllicium: #primitiveSpecialObjectsOop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSquareRootStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSquareRoot.
	illiAST := self generateIllicium: #primitiveSquareRoot.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveStoreImageSegmentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStoreImageSegment.
	illiAST := self generateIllicium: #primitiveStoreImageSegment.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveStoreStackpStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStoreStackp.
	illiAST := self generateIllicium: #primitiveStoreStackp.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveStringAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStringAtPut.
	illiAST := self generateIllicium: #primitiveStringAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveStringAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStringAt.
	illiAST := self generateIllicium: #primitiveStringAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveStringReplaceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStringReplace.
	illiAST := self generateIllicium: #primitiveStringReplace.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic largeint primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSubtractLargeIntegersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSubtractLargeIntegers.
	illiAST := self generateIllicium: #primitiveSubtractLargeIntegers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic integer primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSubtractStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSubtract.
	illiAST := self generateIllicium: #primitiveSubtract.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveSuspendStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSuspend.
	illiAST := self generateIllicium: #primitiveSuspend.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveTerminateToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveTerminateTo.
	illiAST := self generateIllicium: #primitiveTerminateTo.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveTestAndSetOwnershipOfCriticalSectionStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveTestAndSetOwnershipOfCriticalSection.
	illiAST := self
		generateIllicium: #primitiveTestAndSetOwnershipOfCriticalSection.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveTestDisplayDepthStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveTestDisplayDepth.
	illiAST := self generateIllicium: #primitiveTestDisplayDepth.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveTimesTwoPowerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveTimesTwoPower.
	illiAST := self generateIllicium: #primitiveTimesTwoPower.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic float primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveTruncatedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveTruncated.
	illiAST := self generateIllicium: #primitiveTruncated.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveUTCMicrosecondClockStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUTCMicrosecondClock.
	illiAST := self generateIllicium: #primitiveUTCMicrosecondClock.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveUnloadModuleStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUnloadModule.
	illiAST := self generateIllicium: #primitiveUnloadModule.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveUpdateTimezoneStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUpdateTimezone.
	illiAST := self generateIllicium: #primitiveUpdateTimezone.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveUtcAndTimezoneOffsetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUtcAndTimezoneOffset.
	illiAST := self generateIllicium: #primitiveUtcAndTimezoneOffset.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveUtcWithOffsetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveUtcWithOffset.
	illiAST := self generateIllicium: #primitiveUtcWithOffset.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveVMParameterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveVMParameter.
	illiAST := self generateIllicium: #primitiveVMParameter.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveVMPathStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveVMPath.
	illiAST := self generateIllicium: #primitiveVMPath.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveVMProfileSamplesIntoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveVMProfileSamplesInto.
	illiAST := self generateIllicium: #primitiveVMProfileSamplesInto.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveVoidReceiverStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveVoidReceiver.
	illiAST := self generateIllicium: #primitiveVoidReceiver.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveVoidVMStateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveVoidVMState.
	illiAST := self generateIllicium: #primitiveVoidVMState.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveWaitStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveWait.
	illiAST := self generateIllicium: #primitiveWait.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveYieldStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveYield.
	illiAST := self generateIllicium: #primitiveYield.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintActivationNameForSelectorstartClassStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #printActivationNameForSelector:startClass:.
	illiAST := self
		generateIllicium: #printActivationNameForSelector:startClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintActivationNameForreceiverisBlockfirstTemporaryStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #printActivationNameFor:receiver:isBlock:firstTemporary:.
	illiAST := self
		generateIllicium: #printActivationNameFor:receiver:isBlock:firstTemporary:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintAllStacksStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printAllStacks.
	illiAST := self generateIllicium: #printAllStacks.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintCallStackFPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printCallStackFP:.
	illiAST := self generateIllicium: #printCallStackFP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintCallStackOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printCallStackOf:.
	illiAST := self generateIllicium: #printCallStackOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintCallStackOfcurrentFPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printCallStackOf:currentFP:.
	illiAST := self generateIllicium: #printCallStackOf:currentFP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintCallStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printCallStack.
	illiAST := self generateIllicium: #printCallStack.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintCharStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printChar:.
	illiAST := self generateIllicium: #printChar:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintContextCallStackOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printContextCallStackOf:.
	illiAST := self generateIllicium: #printContextCallStackOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printContext:.
	illiAST := self generateIllicium: #printContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintExternalHeadFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printExternalHeadFrame.
	illiAST := self generateIllicium: #printExternalHeadFrame.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintFrameAndCallersSPshortStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameAndCallers:SP:short:.
	illiAST := self generateIllicium: #printFrameAndCallers:SP:short:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintFrameFlagsForFPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameFlagsForFP:.
	illiAST := self generateIllicium: #printFrameFlagsForFP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintFrameOopatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameOop:at:.
	illiAST := self generateIllicium: #printFrameOop:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrame:.
	illiAST := self generateIllicium: #printFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintFrameThingandFrameatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameThing:andFrame:at:.
	illiAST := self generateIllicium: #printFrameThing:andFrame:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintFrameThingatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameThing:at:.
	illiAST := self generateIllicium: #printFrameThing:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintFrameWithSPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrame:WithSP:.
	illiAST := self generateIllicium: #printFrame:WithSP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintFramesInPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFramesInPage:.
	illiAST := self generateIllicium: #printFramesInPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintFramesOnStackPageListInUseStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFramesOnStackPageListInUse.
	illiAST := self generateIllicium: #printFramesOnStackPageListInUse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintHexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printHex:.
	illiAST := self generateIllicium: #printHex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintHexnpStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printHexnp:.
	illiAST := self generateIllicium: #printHexnp:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintLikelyImplementorsOfSelectorStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #printLikelyImplementorsOfSelector:.
	illiAST := self generateIllicium: #printLikelyImplementorsOfSelector:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintMethodCacheForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMethodCacheFor:.
	illiAST := self generateIllicium: #printMethodCacheFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintMethodCacheStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMethodCache.
	illiAST := self generateIllicium: #printMethodCache.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintMethodDictionaryOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMethodDictionaryOf:.
	illiAST := self generateIllicium: #printMethodDictionaryOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintMethodDictionaryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMethodDictionary:.
	illiAST := self generateIllicium: #printMethodDictionary:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintNameOfClasscountStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printNameOfClass:count:.
	illiAST := self generateIllicium: #printNameOfClass:count:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintNumStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printNum:.
	illiAST := self generateIllicium: #printNum:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintOopShortStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printOopShort:.
	illiAST := self generateIllicium: #printOopShort:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printOop:.
	illiAST := self generateIllicium: #printOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintProcessStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printProcessStack:.
	illiAST := self generateIllicium: #printProcessStack:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintProcsOnListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printProcsOnList:.
	illiAST := self generateIllicium: #printProcsOnList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintStackCallStackOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackCallStackOf:.
	illiAST := self generateIllicium: #printStackCallStackOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintStackPageListInUseStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPageListInUse.
	illiAST := self generateIllicium: #printStackPageListInUse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintStackPageListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPageList.
	illiAST := self generateIllicium: #printStackPageList.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintStackPagesInUseStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPagesInUse.
	illiAST := self generateIllicium: #printStackPagesInUse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPages.
	illiAST := self generateIllicium: #printStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintStackPageuseCountStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPage:useCount:.
	illiAST := self generateIllicium: #printStackPage:useCount:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintStackReferencesToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackReferencesTo:.
	illiAST := self generateIllicium: #printStackReferencesTo:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #print:.
	illiAST := self generateIllicium: #print:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrintStringOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStringOf:.
	illiAST := self generateIllicium: #printStringOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPruneStackstackpStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pruneStack:stackp:.
	illiAST := self generateIllicium: #pruneStack:stackp:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPushBoolStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pushBool:.
	illiAST := self generateIllicium: #pushBool:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPushFloatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pushFloat:.
	illiAST := self generateIllicium: #pushFloat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPushIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pushInteger:.
	illiAST := self generateIllicium: #pushInteger:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPushStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #push:.
	illiAST := self generateIllicium: #push:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPushedReceiverOrClosureOfFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pushedReceiverOrClosureOfFrame:.
	illiAST := self generateIllicium: #pushedReceiverOrClosureOfFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPutLongtoFileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #putLong:toFile:.
	illiAST := self generateIllicium: #putLong:toFile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPutShorttoFileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #putShort:toFile:.
	illiAST := self generateIllicium: #putShort:toFile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPutToSleepyieldingIfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #putToSleep:yieldingIf:.
	illiAST := self generateIllicium: #putToSleep:yieldingIf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPutWordtoFileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #putWord32:toFile:.
	illiAST := self generateIllicium: #putWord32:toFile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testQuickFetchIntegerofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #quickFetchInteger:ofObject:.
	illiAST := self generateIllicium: #quickFetchInteger:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testReadImageFromFileHeapSizeStartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #readImageFromFile:HeapSize:StartingAt:.
	illiAST := self
		generateIllicium: #readImageFromFile:HeapSize:StartingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testReadableFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #readableFormat:.
	illiAST := self generateIllicium: #readableFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testReapAndResetErrorCodeToheaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #reapAndResetErrorCodeTo:header:.
	illiAST := self generateIllicium: #reapAndResetErrorCodeTo:header:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testReestablishContextPriorToCallbackStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #reestablishContextPriorToCallback:.
	illiAST := self generateIllicium: #reestablishContextPriorToCallback:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testRemoveFirstLinkOfListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #removeFirstLinkOfList:.
	illiAST := self generateIllicium: #removeFirstLinkOfList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testResumepreemptedYieldingIfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #resume:preemptedYieldingIf:.
	illiAST := self generateIllicium: #resume:preemptedYieldingIf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testRetryPrimitiveOnFailureStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #retryPrimitiveOnFailure.
	illiAST := self generateIllicium: #retryPrimitiveOnFailure.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testReturnAsThroughCallbackContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #returnAs:ThroughCallback:Context:.
	illiAST := self generateIllicium: #returnAs:ThroughCallback:Context:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testReverseDisplayFromtoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #reverseDisplayFrom:to:.
	illiAST := self generateIllicium: #reverseDisplayFrom:to:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method lookup cache' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testRewriteMethodCacheEntryForExternalPrimitiveToFunctionStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #rewriteMethodCacheEntryForExternalPrimitiveToFunction:.
	illiAST := self
		generateIllicium: #rewriteMethodCacheEntryForExternalPrimitiveToFunction:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testRoomToPushNArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #roomToPushNArgs:.
	illiAST := self generateIllicium: #roomToPushNArgs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSafeMethodClassOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #safeMethodClassOf:.
	illiAST := self generateIllicium: #safeMethodClassOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSaneFunctionPointerForFailureOfPrimIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #saneFunctionPointerForFailureOfPrimIndex:.
	illiAST := self
		generateIllicium: #saneFunctionPointerForFailureOfPrimIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSendInvokeCallbackContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sendInvokeCallbackContext:.
	illiAST := self generateIllicium: #sendInvokeCallbackContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSendInvokeCallbackStackRegistersJmpbufStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #sendInvokeCallback:Stack:Registers:Jmpbuf:.
	illiAST := self
		generateIllicium: #sendInvokeCallback:Stack:Registers:Jmpbuf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSetBreakMNUSelectorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setBreakMNUSelector:.
	illiAST := self generateIllicium: #setBreakMNUSelector:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSetBreakSelectorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setBreakSelector:.
	illiAST := self generateIllicium: #setBreakSelector:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSetFullScreenFlagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setFullScreenFlag:.
	illiAST := self generateIllicium: #setFullScreenFlag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSetInterruptCheckChainStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setInterruptCheckChain:.
	illiAST := self generateIllicium: #setInterruptCheckChain:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSetInterruptKeycodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setInterruptKeycode:.
	illiAST := self generateIllicium: #setInterruptKeycode:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSetInterruptPendingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setInterruptPending:.
	illiAST := self generateIllicium: #setInterruptPending:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSetNextWakeupUsecsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setNextWakeupUsecs:.
	illiAST := self generateIllicium: #setNextWakeupUsecs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSetSavedWindowSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setSavedWindowSize:.
	illiAST := self generateIllicium: #setSavedWindowSize:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSetSignalLowSpaceFlagAndSaveProcessStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #setSignalLowSpaceFlagAndSaveProcess.
	illiAST := self
		generateIllicium: #setSignalLowSpaceFlagAndSaveProcess.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSetTraceFlagOnContextsFramesPageIfNeededStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #setTraceFlagOnContextsFramesPageIfNeeded:.
	illiAST := self
		generateIllicium: #setTraceFlagOnContextsFramesPageIfNeeded:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testShortPrintContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintContext:.
	illiAST := self generateIllicium: #shortPrintContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testShortPrintFrameAndCallersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintFrameAndCallers:.
	illiAST := self generateIllicium: #shortPrintFrameAndCallers:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testShortPrintFrameAndNCallersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintFrame:AndNCallers:.
	illiAST := self generateIllicium: #shortPrintFrame:AndNCallers:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testShortPrintFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintFrame:.
	illiAST := self generateIllicium: #shortPrintFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testShortPrintFramesInPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintFramesInPage:.
	illiAST := self generateIllicium: #shortPrintFramesInPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testShortPrintFramesOnStackPageListInUseStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #shortPrintFramesOnStackPageListInUse.
	illiAST := self
		generateIllicium: #shortPrintFramesOnStackPageListInUse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testShortPrintOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintOop:.
	illiAST := self generateIllicium: #shortPrintOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testShortReversePrintFrameAndCallersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortReversePrintFrameAndCallers:.
	illiAST := self generateIllicium: #shortReversePrintFrameAndCallers:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testShowDisplayBitsLeftTopRightBottomStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #showDisplayBits:Left:Top:Right:Bottom:.
	illiAST := self
		generateIllicium: #showDisplayBits:Left:Top:Right:Bottom:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSignalExternalSemaphoresStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signalExternalSemaphores.
	illiAST := self generateIllicium: #signalExternalSemaphores.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSignalNoResumeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signalNoResume:.
	illiAST := self generateIllicium: #signalNoResume:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSignedBitIntegerForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signed32BitIntegerFor:.
	illiAST := self generateIllicium: #signed32BitIntegerFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSignedBitValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signed64BitValueOf:.
	illiAST := self generateIllicium: #signed64BitValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSignedMachineIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signedMachineIntegerValueOf:.
	illiAST := self generateIllicium: #signedMachineIntegerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSizeOfAlienDataStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sizeOfAlienData:.
	illiAST := self generateIllicium: #sizeOfAlienData:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSizeOfCallPrimitiveBytecodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sizeOfCallPrimitiveBytecode:.
	illiAST := self generateIllicium: #sizeOfCallPrimitiveBytecode:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSizeOfLongStoreTempBytecodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sizeOfLongStoreTempBytecode:.
	illiAST := self generateIllicium: #sizeOfLongStoreTempBytecode:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSizeOfSTArrayFromCPrimitiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sizeOfSTArrayFromCPrimitive:.
	illiAST := self generateIllicium: #sizeOfSTArrayFromCPrimitive:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSnapshotStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #snapshot:.
	illiAST := self generateIllicium: #snapshot:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSpaceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #space.
	illiAST := self generateIllicium: #space.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSpecialSelectorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #specialSelector:.
	illiAST := self generateIllicium: #specialSelector:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSpurPostBecomeActionStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #spurPostBecomeAction:.
	illiAST := self generateIllicium: #spurPostBecomeAction:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStObjectatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stObject:at:.
	illiAST := self generateIllicium: #stObject:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStObjectatputStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stObject:at:put:.
	illiAST := self generateIllicium: #stObject:at:put:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStSizeOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stSizeOf:.
	illiAST := self generateIllicium: #stSizeOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStackFloatValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackFloatValue:.
	illiAST := self generateIllicium: #stackFloatValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStackIntegerValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackIntegerValue:.
	illiAST := self generateIllicium: #stackIntegerValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStackLimitBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackLimitBytes.
	illiAST := self generateIllicium: #stackLimitBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStackLimitOffsetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackLimitOffset.
	illiAST := self generateIllicium: #stackLimitOffset.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStackObjectValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackObjectValue:.
	illiAST := self generateIllicium: #stackObjectValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStackPageByteSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPageByteSize.
	illiAST := self generateIllicium: #stackPageByteSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStackPageHeadroomStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPageHeadroom.
	illiAST := self generateIllicium: #stackPageHeadroom.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStackPointerForMaybeMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #stackPointerForMaybeMarriedContext:.
	illiAST := self
		generateIllicium: #stackPointerForMaybeMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStackPointerIndexForFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPointerIndexForFrame:.
	illiAST := self generateIllicium: #stackPointerIndexForFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStackPositiveMachineIntegerValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPositiveMachineIntegerValue:.
	illiAST := self generateIllicium: #stackPositiveMachineIntegerValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStackSignedMachineIntegerValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackSignedMachineIntegerValue:.
	illiAST := self generateIllicium: #stackSignedMachineIntegerValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStackTopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackTop.
	illiAST := self generateIllicium: #stackTop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStackValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackValue:.
	illiAST := self generateIllicium: #stackValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStartOfAlienDataStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #startOfAlienData:.
	illiAST := self generateIllicium: #startOfAlienData:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStartPCOfMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #startPCOfMethod:.
	illiAST := self generateIllicium: #startPCOfMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStoreIntegerofObjectwithValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #storeInteger:ofObject:withValue:.
	illiAST := self generateIllicium: #storeInteger:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testStoreSenderOfFramewithValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #storeSenderOfFrame:withValue:.
	illiAST := self generateIllicium: #storeSenderOfFrame:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSuccessStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #success:.
	illiAST := self generateIllicium: #success:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSuperclassOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #superclassOf:.
	illiAST := self generateIllicium: #superclassOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testSynchronousSignalStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #synchronousSignal:.
	illiAST := self generateIllicium: #synchronousSignal:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testTempCountOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #tempCountOf:.
	illiAST := self generateIllicium: #tempCountOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testTemporaryCountOfMethodHeaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #temporaryCountOfMethodHeader:.
	illiAST := self generateIllicium: #temporaryCountOfMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testTransferToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #transferTo:.
	illiAST := self generateIllicium: #transferTo:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testUltimateLiteralOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #ultimateLiteralOf:.
	illiAST := self generateIllicium: #ultimateLiteralOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testUnfollowatIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #unfollow:atIndex:.
	illiAST := self generateIllicium: #unfollow:atIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testUnmarkAfterPathToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #unmarkAfterPathTo.
	illiAST := self generateIllicium: #unmarkAfterPathTo.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testUnmarkAllFramesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #unmarkAllFrames.
	illiAST := self generateIllicium: #unmarkAllFrames.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testUpdateDisplayLeftTopRightBottomStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #updateDisplayLeft:Top:Right:Bottom:.
	illiAST := self
		generateIllicium: #updateDisplayLeft:Top:Right:Bottom:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testUpdateStateOfSpouseContextForFrameWithSPStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #updateStateOfSpouseContextForFrame:WithSP:.
	illiAST := self
		generateIllicium: #updateStateOfSpouseContextForFrame:WithSP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testValidInstructionPointerinFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validInstructionPointer:inFrame:.
	illiAST := self generateIllicium: #validInstructionPointer:inFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testValidInstructionPointerinMethodframePointerStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #validInstructionPointer:inMethod:framePointer:.
	illiAST := self
		generateIllicium: #validInstructionPointer:inMethod:framePointer:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testValidStackPageBaseFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validStackPageBaseFrame:.
	illiAST := self generateIllicium: #validStackPageBaseFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testValidStackPageBaseFramesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validStackPageBaseFrames.
	illiAST := self generateIllicium: #validStackPageBaseFrames.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testVoidLongRunningPrimitiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #voidLongRunningPrimitive:.
	illiAST := self generateIllicium: #voidLongRunningPrimitive:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testVoidVMStateForSnapshotFlushingExternalPrimitivesIfStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #voidVMStateForSnapshotFlushingExternalPrimitivesIf:.
	illiAST := self
		generateIllicium: #voidVMStateForSnapshotFlushingExternalPrimitivesIf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testWakeHighestPriorityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #wakeHighestPriority.
	illiAST := self generateIllicium: #wakeHighestPriority.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testWhereIsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #whereIs:.
	illiAST := self generateIllicium: #whereIs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testWriteImageFileIOStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #writeImageFileIO.
	illiAST := self generateIllicium: #writeImageFileIO.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompStackInterpreterPrimitivesTranslationTest >> translator [
	^ MAStackInterpreterPrimitivesRessource current translator
]
