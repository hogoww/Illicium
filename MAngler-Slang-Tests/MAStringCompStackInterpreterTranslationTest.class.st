Class {
	#name : #MAStringCompStackInterpreterTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MAStringCompStackInterpreterTranslationTest >> setUp [
	super setUp.
	testedClass := StackInterpreter
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testActiveProcessStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #activeProcess.
	illiAST := self generateIllicium: #activeProcess.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testAddIdleUsecsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addIdleUsecs:.
	illiAST := self generateIllicium: #addIdleUsecs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testAddLastLinktoListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addLastLink:toList:.
	illiAST := self generateIllicium: #addLastLink:toList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method lookup cache' }
MAStringCompStackInterpreterTranslationTest >> testAddNewMethodToCacheStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addNewMethodToCache:.
	illiAST := self generateIllicium: #addNewMethodToCache:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testAddressCouldBeClassObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addressCouldBeClassObj:.
	illiAST := self generateIllicium: #addressCouldBeClassObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterTranslationTest >> testAllOnesAsCharStarStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allOnesAsCharStar.
	illiAST := self generateIllicium: #allOnesAsCharStar.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testArgumentCountOfClosureStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #argumentCountOfClosure:.
	illiAST := self generateIllicium: #argumentCountOfClosure:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testArgumentCountOfMethodHeaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #argumentCountOfMethodHeader:.
	illiAST := self generateIllicium: #argumentCountOfMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testArgumentCountOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #argumentCountOf:.
	illiAST := self generateIllicium: #argumentCountOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterTranslationTest >> testArrayValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #arrayValueOf:.
	illiAST := self generateIllicium: #arrayValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support' }
MAStringCompStackInterpreterTranslationTest >> testAsciiOfCharacterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #asciiOfCharacter:.
	illiAST := self generateIllicium: #asciiOfCharacter:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testAssertValidExecutionPointersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #assertValidExecutionPointe:r:s:.
	illiAST := self generateIllicium: #assertValidExecutionPointe:r:s:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testAssertValidExecutionPointersimbarlineStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #assertValidExecutionPointe:r:s:imbar:line:.
	illiAST := self
		generateIllicium: #assertValidExecutionPointe:r:s:imbar:line:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterTranslationTest >> testBooleanValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #booleanValueOf:.
	illiAST := self generateIllicium: #booleanValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support' }
MAStringCompStackInterpreterTranslationTest >> testCallbackEnterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #callbackEnter:.
	illiAST := self generateIllicium: #callbackEnter:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support' }
MAStringCompStackInterpreterTranslationTest >> testCallbackLeaveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #callbackLeave:.
	illiAST := self generateIllicium: #callbackLeave:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterTranslationTest >> testCanContextSwitchIfActivatingheaderStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #canContextSwitchIfActivating:header:.
	illiAST := self
		generateIllicium: #canContextSwitchIfActivating:header:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support' }
MAStringCompStackInterpreterTranslationTest >> testCharacterForAsciiStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #characterForAscii:.
	illiAST := self generateIllicium: #characterForAscii:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testCheckAllAccessibleObjectsOkayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkAllAccessibleObjectsOkay.
	illiAST := self generateIllicium: #checkAllAccessibleObjectsOkay.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testCheckCodeIntegrityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkCodeIntegrity:.
	illiAST := self generateIllicium: #checkCodeIntegrity:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testCheckDeliveryOfLongRunningPrimitiveSignalStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #checkDeliveryOfLongRunningPrimitiveSignal.
	illiAST := self
		generateIllicium: #checkDeliveryOfLongRunningPrimitiveSignal.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testCheckForEventsMayContextSwitchStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkForEventsMayContextSwitch:.
	illiAST := self generateIllicium: #checkForEventsMayContextSwitch:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterTranslationTest >> testCheckImageVersionFromstartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkImageVersionFrom:startingAt:.
	illiAST := self generateIllicium: #checkImageVersionFrom:startingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testCheckInterpreterIntegrityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkInterpreterIntegrity.
	illiAST := self generateIllicium: #checkInterpreterIntegrity.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testCheckIsStillMarriedContextcurrentFPStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #checkIsStillMarriedContext:currentFP:.
	illiAST := self
		generateIllicium: #checkIsStillMarriedContext:currentFP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testCheckOkayFieldsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOkayFields:.
	illiAST := self generateIllicium: #checkOkayFields:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testCheckOkayInterpreterObjectsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOkayInterpreterObjects:.
	illiAST := self generateIllicium: #checkOkayInterpreterObjects:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testCheckOkayStackPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOkayStackPage:.
	illiAST := self generateIllicium: #checkOkayStackPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testCheckOkayStackZoneStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOkayStackZone:.
	illiAST := self generateIllicium: #checkOkayStackZone:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testCheckProfileTickStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkProfileTick:.
	illiAST := self generateIllicium: #checkProfileTick:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testCheckStackIntegrityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkStackIntegrity.
	illiAST := self generateIllicium: #checkStackIntegrity.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testCheckStackPointerForMaybeMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #checkStackPointerForMaybeMarriedContext:.
	illiAST := self
		generateIllicium: #checkStackPointerForMaybeMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testCheckStackPointerIndexForFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkStackPointerIndexForFrame:.
	illiAST := self generateIllicium: #checkStackPointerIndexForFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterTranslationTest >> testCheckedIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkedIntegerValueOf:.
	illiAST := self generateIllicium: #checkedIntegerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testClassNameOfIsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classNameOf:Is:.
	illiAST := self generateIllicium: #classNameOf:Is:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testContexthasSenderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #context:hasSender:.
	illiAST := self generateIllicium: #context:hasSender:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testContexthasValidInversePCMappingOfinStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #context:hasValidInversePCMappingOf:in:.
	illiAST := self
		generateIllicium: #context:hasValidInversePCMappingOf:in:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testCopiedValueCountOfClosureStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copiedValueCountOfClosure:.
	illiAST := self generateIllicium: #copiedValueCountOfClosure:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testCopiedValueCountOfFullClosureStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copiedValueCountOfFullClosure:.
	illiAST := self generateIllicium: #copiedValueCountOfFullClosure:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'bitblt support' }
MAStringCompStackInterpreterTranslationTest >> testCopyBitsFromtoatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyBitsFrom:to:at:.
	illiAST := self generateIllicium: #copyBitsFrom:to:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'bitblt support' }
MAStringCompStackInterpreterTranslationTest >> testCopyBitsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyBits.
	illiAST := self generateIllicium: #copyBits.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testCouldBeProcessStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #couldBeProcess:.
	illiAST := self generateIllicium: #couldBeProcess:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testCrStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #cr.
	illiAST := self generateIllicium: #cr.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterTranslationTest >> testCreateActualMessageToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #createActualMessageTo:.
	illiAST := self generateIllicium: #createActualMessageTo:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #initialization }
MAStringCompStackInterpreterTranslationTest >> testDefaultNumStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #defaultNumStackPages.
	illiAST := self generateIllicium: #defaultNumStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'vm scheduling' }
MAStringCompStackInterpreterTranslationTest >> testDisownVMStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #disownVM:.
	illiAST := self generateIllicium: #disownVM:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testDivorceAllFramesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #divorceAllFrames.
	illiAST := self generateIllicium: #divorceAllFrames.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testDivorceFramesInStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #divorceFramesIn:.
	illiAST := self generateIllicium: #divorceFramesIn:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic primitive support' }
MAStringCompStackInterpreterTranslationTest >> testDoPrimitiveDivbyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #doPrimitiveDiv:by:.
	illiAST := self generateIllicium: #doPrimitiveDiv:by:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'arithmetic primitive support' }
MAStringCompStackInterpreterTranslationTest >> testDoPrimitiveModbyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #doPrimitiveMod:by:.
	illiAST := self generateIllicium: #doPrimitiveMod:by:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testDoSignalSemaphoreWithIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #doSignalSemaphoreWithIndex:.
	illiAST := self generateIllicium: #doSignalSemaphoreWithIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #initialization }
MAStringCompStackInterpreterTranslationTest >> testDummyReferToProxyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #dummyReferToProxy.
	illiAST := self generateIllicium: #dummyReferToProxy.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testDumpPrimTraceLogStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #dumpPrimTraceLog.
	illiAST := self generateIllicium: #dumpPrimTraceLog.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testEnsureCallerContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #ensureCallerContext:.
	illiAST := self generateIllicium: #ensureCallerContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterTranslationTest >> testEnsureImageFormatIsUpToDateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #ensureImageFormatIsUpToDate:.
	illiAST := self generateIllicium: #ensureImageFormatIsUpToDate:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #initialization }
MAStringCompStackInterpreterTranslationTest >> testEnterSmalltalkExecutiveImplementationStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #enterSmalltalkExecutiveImplementation.
	illiAST := self
		generateIllicium: #enterSmalltalkExecutiveImplementation.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testExternalDivorceFrameandContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalDivorceFrame:andContext:.
	illiAST := self generateIllicium: #externalDivorceFrame:andContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testExternalEnsureIsBaseFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalEnsureIsBaseFrame:.
	illiAST := self generateIllicium: #externalEnsureIsBaseFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testExternalInstVarofContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalInstVar:ofContext:.
	illiAST := self generateIllicium: #externalInstVar:ofContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testExternalInstVarofContextputStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalInstVar:ofContext:put:.
	illiAST := self generateIllicium: #externalInstVar:ofContext:put:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testExternalQuickPrimitiveResponseStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #externalQuickPrimitiveResponse.
	illiAST := self generateIllicium: #externalQuickPrimitiveResponse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testFailUnbalancedPrimitiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #failUnbalancedPrimitive.
	illiAST := self generateIllicium: #failUnbalancedPrimitive.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterTranslationTest >> testFetchArrayofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchArray:ofObject:.
	illiAST := self generateIllicium: #fetchArray:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterTranslationTest >> testFetchFloatofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchFloat:ofObject:.
	illiAST := self generateIllicium: #fetchFloat:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterTranslationTest >> testFetchIntegerofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchInteger:ofObject:.
	illiAST := self generateIllicium: #fetchInteger:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testFetchPointerofMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchPointer:ofMarriedContext:.
	illiAST := self generateIllicium: #fetchPointer:ofMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testFetchStackPointerOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchStackPointerOf:.
	illiAST := self generateIllicium: #fetchStackPointerOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testFindClassContainingMethodstartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #findClassContainingMethod:startingAt:.
	illiAST := self
		generateIllicium: #findClassContainingMethod:startingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testFindClassOfMethodforReceiverStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findClassOfMethod:forReceiver:.
	illiAST := self generateIllicium: #findClassOfMethod:forReceiver:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testFindFrameAboveinPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findFrameAbove:inPage:.
	illiAST := self generateIllicium: #findFrameAbove:inPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testFindHomeForContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findHomeForContext:.
	illiAST := self generateIllicium: #findHomeForContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'handler search' }
MAStringCompStackInterpreterTranslationTest >> testFindMethodWithPrimitiveFromContextUpToContextStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #findMethodWithPrimitive:FromContext:UpToContext:.
	illiAST := self
		generateIllicium: #findMethodWithPrimitive:FromContext:UpToContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterTranslationTest >> testFindNewMethodInClassTagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findNewMethodInClassTag:.
	illiAST := self generateIllicium: #findNewMethodInClassTag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testFindSPOfonStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findSPOf:on:.
	illiAST := self generateIllicium: #findSPOf:on:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testFindSelectorOfMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findSelectorOfMethod:.
	illiAST := self generateIllicium: #findSelectorOfMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testFlushExternalPrimitiveOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #flushExternalPrimitiveOf:.
	illiAST := self generateIllicium: #flushExternalPrimitiveOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'lazy become' }
MAStringCompStackInterpreterTranslationTest >> testFollowForwardedFrameContentsstackPointerStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #followForwardedFrameContents:stackPointer:.
	illiAST := self
		generateIllicium: #followForwardedFrameContents:stackPointer:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testFollowForwardingPointersInStackZoneStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #followForwardingPointersInStackZone:.
	illiAST := self
		generateIllicium: #followForwardingPointersInStackZone:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testForceInterruptCheckFromHeartbeatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #forceInterruptCheckFromHeartbeat.
	illiAST := self generateIllicium: #forceInterruptCheckFromHeartbeat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testForceInterruptCheckStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #forceInterruptCheck.
	illiAST := self generateIllicium: #forceInterruptCheck.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testFrameCallerContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameCallerContext:.
	illiAST := self generateIllicium: #frameCallerContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testFrameContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameContext:.
	illiAST := self generateIllicium: #frameContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testFrameHasContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameHasContext:.
	illiAST := self generateIllicium: #frameHasContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testFrameIsBlockActivationStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameIsBlockActivation:.
	illiAST := self generateIllicium: #frameIsBlockActivation:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testFrameMethodObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameMethodObject:.
	illiAST := self generateIllicium: #frameMethodObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testFrameMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameMethod:.
	illiAST := self generateIllicium: #frameMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testFrameNumArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameNumArgs:.
	illiAST := self generateIllicium: #frameNumArgs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testFrameOfMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameOfMarriedContext:.
	illiAST := self generateIllicium: #frameOfMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testFrameReceiverStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameReceiver:.
	illiAST := self generateIllicium: #frameReceiver:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testFrameStackedReceiverOffsetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #frameStackedReceiverOffset:.
	illiAST := self generateIllicium: #frameStackedReceiverOffset:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testFreeUntracedStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeUntracedStackPages.
	illiAST := self generateIllicium: #freeUntracedStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitive support' }
MAStringCompStackInterpreterTranslationTest >> testFullDisplayUpdateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fullDisplayUpdate.
	illiAST := self generateIllicium: #fullDisplayUpdate.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method lookup cache' }
MAStringCompStackInterpreterTranslationTest >> testFunctionPointerForinClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #functionPointerFor:inClass:.
	illiAST := self generateIllicium: #functionPointerFor:inClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter shell' }
MAStringCompStackInterpreterTranslationTest >> testGetCurrentBytecodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getCurrentBytecode.
	illiAST := self generateIllicium: #getCurrentBytecode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testGetDesiredCogCodeSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getDesiredCogCodeSize.
	illiAST := self generateIllicium: #getDesiredCogCodeSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterTranslationTest >> testGetErrorObjectFromPrimFailCodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getErrorObjectFromPrimFailCode.
	illiAST := self generateIllicium: #getErrorObjectFromPrimFailCode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testGetFullScreenFlagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getFullScreenFlag.
	illiAST := self generateIllicium: #getFullScreenFlag.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testGetInterruptKeycodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getInterruptKeycode.
	illiAST := self generateIllicium: #getInterruptKeycode.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testGetInterruptPendingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getInterruptPending.
	illiAST := self generateIllicium: #getInterruptPending.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testGetNextWakeupUsecsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getNextWakeupUsecs.
	illiAST := self generateIllicium: #getNextWakeupUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testGetSavedWindowSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getSavedWindowSize.
	illiAST := self generateIllicium: #getSavedWindowSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testGetSnapshotScreenSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getSnapshotScreenSize.
	illiAST := self generateIllicium: #getSnapshotScreenSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testGetStackPointerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getStackPointer.
	illiAST := self generateIllicium: #getStackPointer.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support' }
MAStringCompStackInterpreterTranslationTest >> testGetThisSessionIDStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getThisSessionID.
	illiAST := self generateIllicium: #getThisSessionID.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterTranslationTest >> testGetWordFromFileswapStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getWord32FromFile:swap:.
	illiAST := self generateIllicium: #getWord32FromFile:swap:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterTranslationTest >> testHandleForwardedSelectorFaultForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #handleForwardedSelectorFaultFor:.
	illiAST := self generateIllicium: #handleForwardedSelectorFaultFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterTranslationTest >> testHandleForwardedSendFaultForTagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #handleForwardedSendFaultForTag:.
	illiAST := self generateIllicium: #handleForwardedSendFaultForTag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterTranslationTest >> testHandleSpecialSelectorSendFaultForfpspStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #handleSpecialSelectorSendFaultFor:fp:sp:.
	illiAST := self
		generateIllicium: #handleSpecialSelectorSendFaultFor:fp:sp:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterTranslationTest >> testHandleStackOverflowOrEventAllowContextSwitchStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #handleStackOverflowOrEventAllowContextSwitch:.
	illiAST := self
		generateIllicium: #handleStackOverflowOrEventAllowContextSwitch:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterTranslationTest >> testHandleStackOverflowStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #handleStackOverflow.
	illiAST := self generateIllicium: #handleStackOverflow.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterTranslationTest >> testHighBitStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #highBit:.
	illiAST := self generateIllicium: #highBit:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterTranslationTest >> testIfCurrentStackPageHasValidHeadPointersStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #ifCurrentStackPageHasValidHeadPointers:.
	illiAST := self
		generateIllicium: #ifCurrentStackPageHasValidHeadPointers:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testIfValidWriteBackStackPointersSaveToStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #ifValidWriteBackStack:Pointers:Save:To:.
	illiAST := self
		generateIllicium: #ifValidWriteBackStack:Pointers:Save:To:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testIframeMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #iframeMethod:.
	illiAST := self generateIllicium: #iframeMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testIncludesBehaviorThatOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #includesBehavior:ThatOf:.
	illiAST := self generateIllicium: #includesBehavior:ThatOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testInstructionPointerForFramecurrentFPcurrentIPStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #instructionPointerForFrame:currentFP:currentIP:.
	illiAST := self
		generateIllicium: #instructionPointerForFrame:currentFP:currentIP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter shell' }
MAStringCompStackInterpreterTranslationTest >> testInterpretStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #interpret.
	illiAST := self generateIllicium: #interpret.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterTranslationTest >> testInterpreterAllocationReserveBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #interpreterAllocationReserveBytes.
	illiAST := self generateIllicium: #interpreterAllocationReserveBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support' }
MAStringCompStackInterpreterTranslationTest >> testIoFilenamefromStringofLengthresolveAliasesStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #ioFilename:fromString:ofLength:resolveAliases:.
	illiAST := self
		generateIllicium: #ioFilename:fromString:ofLength:resolveAliases:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testIsBaseFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isBaseFrame:.
	illiAST := self generateIllicium: #isBaseFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testIsBooleanObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isBooleanObject:.
	illiAST := self generateIllicium: #isBooleanObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testIsFloatObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isFloatObject:.
	illiAST := self generateIllicium: #isFloatObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testIsFrameonPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isFrame:onPage:.
	illiAST := self generateIllicium: #isFrame:onPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testIsKindOfClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #is:KindOfClass:.
	illiAST := self generateIllicium: #is:KindOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testIsKindOfIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isKindOfInteger:.
	illiAST := self generateIllicium: #isKindOfInteger:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testIsKindOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #is:KindOf:.
	illiAST := self generateIllicium: #is:KindOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testIsLargeIntegerObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLargeIntegerObject:.
	illiAST := self generateIllicium: #isLargeIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testIsLargeNegativeIntegerObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLargeNegativeIntegerObject:.
	illiAST := self generateIllicium: #isLargeNegativeIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testIsLargePositiveIntegerObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLargePositiveIntegerObject:.
	illiAST := self generateIllicium: #isLargePositiveIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testIsLiveContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLiveContext:.
	illiAST := self generateIllicium: #isLiveContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testIsMarriedOrWidowedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isMarriedOrWidowedContext:.
	illiAST := self generateIllicium: #isMarriedOrWidowedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testIsMemberOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #is:MemberOf:.
	illiAST := self generateIllicium: #is:MemberOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testIsMetaPrimitiveIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isMetaPrimitiveIndex:.
	illiAST := self generateIllicium: #isMetaPrimitiveIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testIsPrimitiveFunctionPointerAnIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isPrimitiveFunctionPointerAnIndex.
	illiAST := self generateIllicium: #isPrimitiveFunctionPointerAnIndex.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testIsQuickPrimitiveIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isQuickPrimitiveIndex:.
	illiAST := self generateIllicium: #isQuickPrimitiveIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testIsReadMediatedContextInstVarIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #isReadMediatedContextInstVarIndex:.
	illiAST := self generateIllicium: #isReadMediatedContextInstVarIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testIsSingleContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isSingleContext:.
	illiAST := self generateIllicium: #isSingleContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testIsWidowedContextDuringGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isWidowedContextDuringGC:.
	illiAST := self generateIllicium: #isWidowedContextDuringGC:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testIsWidowedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isWidowedContext:.
	illiAST := self generateIllicium: #isWidowedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testIsWriteMediatedContextInstVarIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #isWriteMediatedContextInstVarIndex:.
	illiAST := self
		generateIllicium: #isWriteMediatedContextInstVarIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testLengthOfNameOfClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lengthOfNameOfClass:.
	illiAST := self generateIllicium: #lengthOfNameOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testLiteralofMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #literal:ofMethod:.
	illiAST := self generateIllicium: #literal:ofMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'bitblt support' }
MAStringCompStackInterpreterTranslationTest >> testLoadBitBltFromStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #loadBitBltFrom:.
	illiAST := self generateIllicium: #loadBitBltFrom:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #initialization }
MAStringCompStackInterpreterTranslationTest >> testLoadInitialContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #loadInitialContext.
	illiAST := self generateIllicium: #loadInitialContext.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testLongPrintOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #longPrintOop:.
	illiAST := self generateIllicium: #longPrintOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testLongStoreBytecodeForHeaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #longStoreBytecodeForHeader:.
	illiAST := self generateIllicium: #longStoreBytecodeForHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method lookup cache' }
MAStringCompStackInterpreterTranslationTest >> testLookupInMethodCacheSelclassTagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lookupInMethodCacheSel:classTag:.
	illiAST := self generateIllicium: #lookupInMethodCacheSel:classTag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterTranslationTest >> testLookupMethodInClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lookupMethodInClass:.
	illiAST := self generateIllicium: #lookupMethodInClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterTranslationTest >> testLookupOrdinaryNoMNUEtcInClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lookupOrdinaryNoMNUEtcInClass:.
	illiAST := self generateIllicium: #lookupOrdinaryNoMNUEtcInClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testLookupSelectorinClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lookupSelector:inClass:.
	illiAST := self generateIllicium: #lookupSelector:inClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testMakeBaseFrameForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #makeBaseFrameFor:.
	illiAST := self generateIllicium: #makeBaseFrameFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testMakeContextSnapshotSafeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #makeContextSnapshotSafe:.
	illiAST := self generateIllicium: #makeContextSnapshotSafe:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterTranslationTest >> testMakePointwithxValueyValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #makePointwithxValue:yValue:.
	illiAST := self generateIllicium: #makePointwithxValue:yValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testMapInterpreterOopsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #mapInterpreterOops.
	illiAST := self generateIllicium: #mapInterpreterOops.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testMapStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #mapStackPages.
	illiAST := self generateIllicium: #mapStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testMarkAndTraceStackPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markAndTraceStackPage:.
	illiAST := self generateIllicium: #markAndTraceStackPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testMarkAndTraceStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markAndTraceStackPages:.
	illiAST := self generateIllicium: #markAndTraceStackPages:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testMarkAndTraceUntracedReachableStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #markAndTraceUntracedReachableStackPages.
	illiAST := self
		generateIllicium: #markAndTraceUntracedReachableStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testMarriedContextpointsTostackDeltaForCurrentFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #marriedContext:pointsTo:stackDeltaForCurrentFrame:.
	illiAST := self
		generateIllicium: #marriedContext:pointsTo:stackDeltaForCurrentFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testMarryContextInNewStackPageAndInitializeInterpreterRegistersStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #marryContextInNewStackPageAndInitializeInterpreterRegisters:.
	illiAST := self
		generateIllicium: #marryContextInNewStackPageAndInitializeInterpreterRegisters:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testMarryFrameSPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #marryFrame:SP:.
	illiAST := self generateIllicium: #marryFrame:SP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testMaybeLeakCheckExternalPrimCallStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #maybeLeakCheckExternalPrimCall:.
	illiAST := self generateIllicium: #maybeLeakCheckExternalPrimCall:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testMaybeSelectorOfMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #maybeSelectorOfMethod:.
	illiAST := self generateIllicium: #maybeSelectorOfMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testMethodArgumentCountStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodArgumentCount.
	illiAST := self generateIllicium: #methodArgumentCount.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testMethodClassAssociationOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodClassAssociationOf:.
	illiAST := self generateIllicium: #methodClassAssociationOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testMethodClassOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodClassOf:.
	illiAST := self generateIllicium: #methodClassOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testMethodHeaderIndicatesLargeFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodHeaderIndicatesLargeFrame:.
	illiAST := self generateIllicium: #methodHeaderIndicatesLargeFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testMethodPrimitiveIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodPrimitiveIndex.
	illiAST := self generateIllicium: #methodPrimitiveIndex.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testMethodReturnBoolStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnBool:.
	illiAST := self generateIllicium: #methodReturnBool:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testMethodReturnFloatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnFloat:.
	illiAST := self generateIllicium: #methodReturnFloat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testMethodReturnIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnInteger:.
	illiAST := self generateIllicium: #methodReturnInteger:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testMethodReturnReceiverStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnReceiver.
	illiAST := self generateIllicium: #methodReturnReceiver.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testMethodReturnStringStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnString:.
	illiAST := self generateIllicium: #methodReturnString:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testMethodReturnValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodReturnValue:.
	illiAST := self generateIllicium: #methodReturnValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testMethodUsesAlternateBytecodeSetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodUsesAlternateBytecodeSet:.
	illiAST := self generateIllicium: #methodUsesAlternateBytecodeSet:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testMethodUsesPrimitiveErrorCodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodUsesPrimitiveErrorCode:.
	illiAST := self generateIllicium: #methodUsesPrimitiveErrorCode:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #initialization }
MAStringCompStackInterpreterTranslationTest >> testModuleUnloadedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #moduleUnloaded:.
	illiAST := self generateIllicium: #moduleUnloaded:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testMoveFramesInthroughtoPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #moveFramesIn:through:toPage:.
	illiAST := self generateIllicium: #moveFramesIn:through:toPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testNameOfClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #nameOfClass:.
	illiAST := self generateIllicium: #nameOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testNoInlineTemporaryinStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noInlineTemporary:in:.
	illiAST := self generateIllicium: #noInlineTemporary:in:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testNoInlineTemporaryinputStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noInlineTemporary:in:put:.
	illiAST := self generateIllicium: #noInlineTemporary:in:put:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testNoMarkedContextsOnPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noMarkedContextsOnPage:.
	illiAST := self generateIllicium: #noMarkedContextsOnPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testNumSlotsOfMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numSlotsOfMarriedContext:.
	illiAST := self generateIllicium: #numSlotsOfMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterTranslationTest >> testNumStkPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numStkPages.
	illiAST := self generateIllicium: #numStkPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testObjCouldBeClassObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #objCouldBeClassObj:.
	illiAST := self generateIllicium: #objCouldBeClassObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'vm scheduling' }
MAStringCompStackInterpreterTranslationTest >> testOwnVMStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #ownVM:.
	illiAST := self generateIllicium: #ownVM:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPenultimateLiteralOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #penultimateLiteralOf:.
	illiAST := self generateIllicium: #penultimateLiteralOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testPopStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #popStack.
	illiAST := self generateIllicium: #popStack.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testPopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pop:.
	illiAST := self generateIllicium: #pop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testPopthenPushStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pop:thenPush:.
	illiAST := self generateIllicium: #pop:thenPush:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testPositiveBitIntegerForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #positive32BitIntegerFor:.
	illiAST := self generateIllicium: #positive32BitIntegerFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support' }
MAStringCompStackInterpreterTranslationTest >> testPositiveMachineIntegerForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #positiveMachineIntegerFor:.
	illiAST := self generateIllicium: #positiveMachineIntegerFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testPostGCUpdateDisplayBitsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #postGCUpdateDisplayBits.
	illiAST := self generateIllicium: #postGCUpdateDisplayBits.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterTranslationTest >> testPrimitiveEventProcessingControlStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveEventProcessingControl.
	illiAST := self generateIllicium: #primitiveEventProcessingControl.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testPrimitiveIndexOfMethodheaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIndexOfMethod:header:.
	illiAST := self generateIllicium: #primitiveIndexOfMethod:header:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testPrimitiveIndexOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIndexOf:.
	illiAST := self generateIllicium: #primitiveIndexOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintActivationNameForSelectorstartClassStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #printActivationNameForSelector:startClass:.
	illiAST := self
		generateIllicium: #printActivationNameForSelector:startClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintActivationNameForreceiverisBlockfirstTemporaryStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #printActivationNameFor:receiver:isBlock:firstTemporary:.
	illiAST := self
		generateIllicium: #printActivationNameFor:receiver:isBlock:firstTemporary:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintAllStacksStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printAllStacks.
	illiAST := self generateIllicium: #printAllStacks.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintCallStackFPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printCallStackFP:.
	illiAST := self generateIllicium: #printCallStackFP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintCallStackOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printCallStackOf:.
	illiAST := self generateIllicium: #printCallStackOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintCallStackOfcurrentFPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printCallStackOf:currentFP:.
	illiAST := self generateIllicium: #printCallStackOf:currentFP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintCallStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printCallStack.
	illiAST := self generateIllicium: #printCallStack.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintCharStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printChar:.
	illiAST := self generateIllicium: #printChar:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintContextCallStackOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printContextCallStackOf:.
	illiAST := self generateIllicium: #printContextCallStackOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printContext:.
	illiAST := self generateIllicium: #printContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintExternalHeadFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printExternalHeadFrame.
	illiAST := self generateIllicium: #printExternalHeadFrame.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintFrameAndCallersSPshortStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameAndCallers:SP:short:.
	illiAST := self generateIllicium: #printFrameAndCallers:SP:short:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintFrameFlagsForFPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameFlagsForFP:.
	illiAST := self generateIllicium: #printFrameFlagsForFP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintFrameOopatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameOop:at:.
	illiAST := self generateIllicium: #printFrameOop:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrame:.
	illiAST := self generateIllicium: #printFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintFrameThingandFrameatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameThing:andFrame:at:.
	illiAST := self generateIllicium: #printFrameThing:andFrame:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintFrameThingatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrameThing:at:.
	illiAST := self generateIllicium: #printFrameThing:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintFrameWithSPStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFrame:WithSP:.
	illiAST := self generateIllicium: #printFrame:WithSP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintFramesInPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFramesInPage:.
	illiAST := self generateIllicium: #printFramesInPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintFramesOnStackPageListInUseStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFramesOnStackPageListInUse.
	illiAST := self generateIllicium: #printFramesOnStackPageListInUse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintHexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printHex:.
	illiAST := self generateIllicium: #printHex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintHexnpStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printHexnp:.
	illiAST := self generateIllicium: #printHexnp:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintLikelyImplementorsOfSelectorStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #printLikelyImplementorsOfSelector:.
	illiAST := self generateIllicium: #printLikelyImplementorsOfSelector:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintMethodCacheForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMethodCacheFor:.
	illiAST := self generateIllicium: #printMethodCacheFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintMethodCacheStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMethodCache.
	illiAST := self generateIllicium: #printMethodCache.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintMethodDictionaryOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMethodDictionaryOf:.
	illiAST := self generateIllicium: #printMethodDictionaryOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintMethodDictionaryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMethodDictionary:.
	illiAST := self generateIllicium: #printMethodDictionary:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintNameOfClasscountStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printNameOfClass:count:.
	illiAST := self generateIllicium: #printNameOfClass:count:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintNumStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printNum:.
	illiAST := self generateIllicium: #printNum:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintOopShortStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printOopShort:.
	illiAST := self generateIllicium: #printOopShort:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printOop:.
	illiAST := self generateIllicium: #printOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintProcessStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printProcessStack:.
	illiAST := self generateIllicium: #printProcessStack:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintProcsOnListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printProcsOnList:.
	illiAST := self generateIllicium: #printProcsOnList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintStackCallStackOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackCallStackOf:.
	illiAST := self generateIllicium: #printStackCallStackOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintStackPageListInUseStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPageListInUse.
	illiAST := self generateIllicium: #printStackPageListInUse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintStackPageListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPageList.
	illiAST := self generateIllicium: #printStackPageList.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintStackPagesInUseStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPagesInUse.
	illiAST := self generateIllicium: #printStackPagesInUse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintStackPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPages.
	illiAST := self generateIllicium: #printStackPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintStackPageuseCountStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackPage:useCount:.
	illiAST := self generateIllicium: #printStackPage:useCount:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testPrintStackReferencesToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStackReferencesTo:.
	illiAST := self generateIllicium: #printStackReferencesTo:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #print:.
	illiAST := self generateIllicium: #print:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testPrintStringOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printStringOf:.
	illiAST := self generateIllicium: #printStringOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testPushBoolStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pushBool:.
	illiAST := self generateIllicium: #pushBool:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testPushFloatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pushFloat:.
	illiAST := self generateIllicium: #pushFloat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testPushIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pushInteger:.
	illiAST := self generateIllicium: #pushInteger:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testPushStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #push:.
	illiAST := self generateIllicium: #push:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testPushedReceiverOrClosureOfFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pushedReceiverOrClosureOfFrame:.
	illiAST := self generateIllicium: #pushedReceiverOrClosureOfFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterTranslationTest >> testPutLongtoFileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #putLong:toFile:.
	illiAST := self generateIllicium: #putLong:toFile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterTranslationTest >> testPutShorttoFileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #putShort:toFile:.
	illiAST := self generateIllicium: #putShort:toFile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testPutToSleepyieldingIfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #putToSleep:yieldingIf:.
	illiAST := self generateIllicium: #putToSleep:yieldingIf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterTranslationTest >> testPutWordtoFileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #putWord32:toFile:.
	illiAST := self generateIllicium: #putWord32:toFile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterTranslationTest >> testQuickFetchIntegerofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #quickFetchInteger:ofObject:.
	illiAST := self generateIllicium: #quickFetchInteger:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterTranslationTest >> testReadImageFromFileHeapSizeStartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #readImageFromFile:HeapSize:StartingAt:.
	illiAST := self
		generateIllicium: #readImageFromFile:HeapSize:StartingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterTranslationTest >> testReadableFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #readableFormat:.
	illiAST := self generateIllicium: #readableFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testReapAndResetErrorCodeToheaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #reapAndResetErrorCodeTo:header:.
	illiAST := self generateIllicium: #reapAndResetErrorCodeTo:header:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support' }
MAStringCompStackInterpreterTranslationTest >> testReestablishContextPriorToCallbackStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #reestablishContextPriorToCallback:.
	illiAST := self generateIllicium: #reestablishContextPriorToCallback:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testRemoveFirstLinkOfListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #removeFirstLinkOfList:.
	illiAST := self generateIllicium: #removeFirstLinkOfList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testResumepreemptedYieldingIfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #resume:preemptedYieldingIf:.
	illiAST := self generateIllicium: #resume:preemptedYieldingIf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testRetryPrimitiveOnFailureStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #retryPrimitiveOnFailure.
	illiAST := self generateIllicium: #retryPrimitiveOnFailure.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support' }
MAStringCompStackInterpreterTranslationTest >> testReturnAsThroughCallbackContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #returnAs:ThroughCallback:Context:.
	illiAST := self generateIllicium: #returnAs:ThroughCallback:Context:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitive support' }
MAStringCompStackInterpreterTranslationTest >> testReverseDisplayFromtoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #reverseDisplayFrom:to:.
	illiAST := self generateIllicium: #reverseDisplayFrom:to:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method lookup cache' }
MAStringCompStackInterpreterTranslationTest >> testRewriteMethodCacheEntryForExternalPrimitiveToFunctionStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #rewriteMethodCacheEntryForExternalPrimitiveToFunction:.
	illiAST := self
		generateIllicium: #rewriteMethodCacheEntryForExternalPrimitiveToFunction:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testRoomToPushNArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #roomToPushNArgs:.
	illiAST := self generateIllicium: #roomToPushNArgs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testSafeMethodClassOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #safeMethodClassOf:.
	illiAST := self generateIllicium: #safeMethodClassOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testSaneFunctionPointerForFailureOfPrimIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #saneFunctionPointerForFailureOfPrimIndex:.
	illiAST := self
		generateIllicium: #saneFunctionPointerForFailureOfPrimIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support' }
MAStringCompStackInterpreterTranslationTest >> testSendInvokeCallbackContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sendInvokeCallbackContext:.
	illiAST := self generateIllicium: #sendInvokeCallbackContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'callback support' }
MAStringCompStackInterpreterTranslationTest >> testSendInvokeCallbackStackRegistersJmpbufStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #sendInvokeCallback:Stack:Registers:Jmpbuf:.
	illiAST := self
		generateIllicium: #sendInvokeCallback:Stack:Registers:Jmpbuf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testSetBreakMNUSelectorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setBreakMNUSelector:.
	illiAST := self generateIllicium: #setBreakMNUSelector:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testSetBreakSelectorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setBreakSelector:.
	illiAST := self generateIllicium: #setBreakSelector:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testSetFullScreenFlagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setFullScreenFlag:.
	illiAST := self generateIllicium: #setFullScreenFlag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testSetInterruptCheckChainStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setInterruptCheckChain:.
	illiAST := self generateIllicium: #setInterruptCheckChain:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testSetInterruptKeycodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setInterruptKeycode:.
	illiAST := self generateIllicium: #setInterruptKeycode:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testSetInterruptPendingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setInterruptPending:.
	illiAST := self generateIllicium: #setInterruptPending:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testSetNextWakeupUsecsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setNextWakeupUsecs:.
	illiAST := self generateIllicium: #setNextWakeupUsecs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitive support' }
MAStringCompStackInterpreterTranslationTest >> testSetSavedWindowSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #setSavedWindowSize:.
	illiAST := self generateIllicium: #setSavedWindowSize:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testSetSignalLowSpaceFlagAndSaveProcessStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #setSignalLowSpaceFlagAndSaveProcess.
	illiAST := self
		generateIllicium: #setSignalLowSpaceFlagAndSaveProcess.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testSetTraceFlagOnContextsFramesPageIfNeededStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #setTraceFlagOnContextsFramesPageIfNeeded:.
	illiAST := self
		generateIllicium: #setTraceFlagOnContextsFramesPageIfNeeded:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testShortPrintContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintContext:.
	illiAST := self generateIllicium: #shortPrintContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testShortPrintFrameAndCallersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintFrameAndCallers:.
	illiAST := self generateIllicium: #shortPrintFrameAndCallers:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testShortPrintFrameAndNCallersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintFrame:AndNCallers:.
	illiAST := self generateIllicium: #shortPrintFrame:AndNCallers:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testShortPrintFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintFrame:.
	illiAST := self generateIllicium: #shortPrintFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testShortPrintFramesInPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintFramesInPage:.
	illiAST := self generateIllicium: #shortPrintFramesInPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testShortPrintFramesOnStackPageListInUseStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #shortPrintFramesOnStackPageListInUse.
	illiAST := self
		generateIllicium: #shortPrintFramesOnStackPageListInUse.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testShortPrintOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintOop:.
	illiAST := self generateIllicium: #shortPrintOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testShortReversePrintFrameAndCallersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortReversePrintFrameAndCallers:.
	illiAST := self generateIllicium: #shortReversePrintFrameAndCallers:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitive support' }
MAStringCompStackInterpreterTranslationTest >> testShowDisplayBitsLeftTopRightBottomStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #showDisplayBits:Left:Top:Right:Bottom:.
	illiAST := self
		generateIllicium: #showDisplayBits:Left:Top:Right:Bottom:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testSignalExternalSemaphoresStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signalExternalSemaphores.
	illiAST := self generateIllicium: #signalExternalSemaphores.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testSignedBitIntegerForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #signed32BitIntegerFor:.
	illiAST := self generateIllicium: #signed32BitIntegerFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testSizeOfCallPrimitiveBytecodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sizeOfCallPrimitiveBytecode:.
	illiAST := self generateIllicium: #sizeOfCallPrimitiveBytecode:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testSizeOfLongStoreTempBytecodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sizeOfLongStoreTempBytecode:.
	illiAST := self generateIllicium: #sizeOfLongStoreTempBytecode:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterTranslationTest >> testSizeOfSTArrayFromCPrimitiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sizeOfSTArrayFromCPrimitive:.
	illiAST := self generateIllicium: #sizeOfSTArrayFromCPrimitive:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterTranslationTest >> testSnapshotStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #snapshot:.
	illiAST := self generateIllicium: #snapshot:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testSpaceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #space.
	illiAST := self generateIllicium: #space.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterTranslationTest >> testSpecialSelectorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #specialSelector:.
	illiAST := self generateIllicium: #specialSelector:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object memory support' }
MAStringCompStackInterpreterTranslationTest >> testSpurPostBecomeActionStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #spurPostBecomeAction:.
	illiAST := self generateIllicium: #spurPostBecomeAction:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support' }
MAStringCompStackInterpreterTranslationTest >> testStObjectatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stObject:at:.
	illiAST := self generateIllicium: #stObject:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support' }
MAStringCompStackInterpreterTranslationTest >> testStObjectatputStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stObject:at:put:.
	illiAST := self generateIllicium: #stObject:at:put:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support' }
MAStringCompStackInterpreterTranslationTest >> testStSizeOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stSizeOf:.
	illiAST := self generateIllicium: #stSizeOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access' }
MAStringCompStackInterpreterTranslationTest >> testStackFloatValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackFloatValue:.
	illiAST := self generateIllicium: #stackFloatValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access' }
MAStringCompStackInterpreterTranslationTest >> testStackIntegerValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackIntegerValue:.
	illiAST := self generateIllicium: #stackIntegerValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterTranslationTest >> testStackLimitBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackLimitBytes.
	illiAST := self generateIllicium: #stackLimitBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterTranslationTest >> testStackLimitOffsetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackLimitOffset.
	illiAST := self generateIllicium: #stackLimitOffset.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access' }
MAStringCompStackInterpreterTranslationTest >> testStackObjectValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackObjectValue:.
	illiAST := self generateIllicium: #stackObjectValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterTranslationTest >> testStackPageByteSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPageByteSize.
	illiAST := self generateIllicium: #stackPageByteSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterTranslationTest >> testStackPageHeadroomStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPageHeadroom.
	illiAST := self generateIllicium: #stackPageHeadroom.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'internal interpreter access' }
MAStringCompStackInterpreterTranslationTest >> testStackPointerForMaybeMarriedContextStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #stackPointerForMaybeMarriedContext:.
	illiAST := self
		generateIllicium: #stackPointerForMaybeMarriedContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testStackPointerIndexForFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPointerIndexForFrame:.
	illiAST := self generateIllicium: #stackPointerIndexForFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access' }
MAStringCompStackInterpreterTranslationTest >> testStackPositiveMachineIntegerValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackPositiveMachineIntegerValue:.
	illiAST := self generateIllicium: #stackPositiveMachineIntegerValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access' }
MAStringCompStackInterpreterTranslationTest >> testStackSignedMachineIntegerValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackSignedMachineIntegerValue:.
	illiAST := self generateIllicium: #stackSignedMachineIntegerValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access' }
MAStringCompStackInterpreterTranslationTest >> testStackTopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackTop.
	illiAST := self generateIllicium: #stackTop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack access' }
MAStringCompStackInterpreterTranslationTest >> testStackValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stackValue:.
	illiAST := self generateIllicium: #stackValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testStartPCOfMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #startPCOfMethod:.
	illiAST := self generateIllicium: #startPCOfMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #utilities }
MAStringCompStackInterpreterTranslationTest >> testStoreIntegerofObjectwithValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #storeInteger:ofObject:withValue:.
	illiAST := self generateIllicium: #storeInteger:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testStoreSenderOfFramewithValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #storeSenderOfFrame:withValue:.
	illiAST := self generateIllicium: #storeSenderOfFrame:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'message sending' }
MAStringCompStackInterpreterTranslationTest >> testSuperclassOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #superclassOf:.
	illiAST := self generateIllicium: #superclassOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testSynchronousSignalStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #synchronousSignal:.
	illiAST := self generateIllicium: #synchronousSignal:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testTempCountOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #tempCountOf:.
	illiAST := self generateIllicium: #tempCountOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testTemporaryCountOfMethodHeaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #temporaryCountOfMethodHeader:.
	illiAST := self generateIllicium: #temporaryCountOfMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testTransferToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #transferTo:.
	illiAST := self generateIllicium: #transferTo:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testUltimateLiteralOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #ultimateLiteralOf:.
	illiAST := self generateIllicium: #ultimateLiteralOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compiled methods' }
MAStringCompStackInterpreterTranslationTest >> testUnfollowatIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #unfollow:atIndex:.
	illiAST := self generateIllicium: #unfollow:atIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitive support' }
MAStringCompStackInterpreterTranslationTest >> testUpdateDisplayLeftTopRightBottomStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #updateDisplayLeft:Top:Right:Bottom:.
	illiAST := self
		generateIllicium: #updateDisplayLeft:Top:Right:Bottom:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testUpdateStateOfSpouseContextForFrameWithSPStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #updateStateOfSpouseContextForFrame:WithSP:.
	illiAST := self
		generateIllicium: #updateStateOfSpouseContextForFrame:WithSP:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testValidInstructionPointerinFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validInstructionPointer:inFrame:.
	illiAST := self generateIllicium: #validInstructionPointer:inFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompStackInterpreterTranslationTest >> testValidInstructionPointerinMethodframePointerStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #validInstructionPointer:inMethod:framePointer:.
	illiAST := self
		generateIllicium: #validInstructionPointer:inMethod:framePointer:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterTranslationTest >> testValidStackPageBaseFrameStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validStackPageBaseFrame:.
	illiAST := self generateIllicium: #validStackPageBaseFrame:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'stack pages' }
MAStringCompStackInterpreterTranslationTest >> testValidStackPageBaseFramesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validStackPageBaseFrames.
	illiAST := self generateIllicium: #validStackPageBaseFrames.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support' }
MAStringCompStackInterpreterTranslationTest >> testVoidLongRunningPrimitiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #voidLongRunningPrimitive:.
	illiAST := self generateIllicium: #voidLongRunningPrimitive:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'frame access' }
MAStringCompStackInterpreterTranslationTest >> testVoidVMStateForSnapshotFlushingExternalPrimitivesIfStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #voidVMStateForSnapshotFlushingExternalPrimitivesIf:.
	illiAST := self
		generateIllicium: #voidVMStateForSnapshotFlushingExternalPrimitivesIf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitive support' }
MAStringCompStackInterpreterTranslationTest >> testWakeHighestPriorityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #wakeHighestPriority.
	illiAST := self generateIllicium: #wakeHighestPriority.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing' }
MAStringCompStackInterpreterTranslationTest >> testWhereIsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #whereIs:.
	illiAST := self generateIllicium: #whereIs:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image save/restore' }
MAStringCompStackInterpreterTranslationTest >> testWriteImageFileIOStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #writeImageFileIO.
	illiAST := self generateIllicium: #writeImageFileIO.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompStackInterpreterTranslationTest >> translator [
	^ MAStackInterpreterRessource current translator
]
