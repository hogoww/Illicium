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

{ #category : #'primitive support' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testCloneContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #cloneContext:.
	illiAST := self generateIllicium: #cloneContext:.
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

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testIsAppropriateForCopyObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isAppropriateForCopyObject:.
	illiAST := self generateIllicium: #isAppropriateForCopyObject:.
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

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveAllVMParametersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveAllVMParameters:.
	illiAST := self generateIllicium: #primitiveAllVMParameters:.
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

{ #category : #'I/O primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveDeferDisplayUpdatesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDeferDisplayUpdates.
	illiAST := self generateIllicium: #primitiveDeferDisplayUpdates.
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

{ #category : #'plugin primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveExternalCallStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExternalCall.
	illiAST := self generateIllicium: #primitiveExternalCall.
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

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveFullGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFullGC.
	illiAST := self generateIllicium: #primitiveFullGC.
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

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveIncrementalGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIncrementalGC.
	illiAST := self generateIllicium: #primitiveIncrementalGC.
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

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveObjectPointsToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveObjectPointsTo.
	illiAST := self generateIllicium: #primitiveObjectPointsTo.
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

{ #category : #'memory space primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitivePinStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePin.
	illiAST := self generateIllicium: #primitivePin.
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

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveStoreStackpStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStoreStackp.
	illiAST := self generateIllicium: #primitiveStoreStackp.
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

{ #category : #'system control primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPrimitiveVMParameterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveVMParameter.
	illiAST := self generateIllicium: #primitiveVMParameter.
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

{ #category : #'object access primitives' }
MAStringCompStackInterpreterPrimitivesTranslationTest >> testPruneStackstackpStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pruneStack:stackp:.
	illiAST := self generateIllicium: #pruneStack:stackp:.
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

{ #category : #accessing }
MAStringCompStackInterpreterPrimitivesTranslationTest >> translator [
	^ MAStackInterpreterPrimitivesRessource current translator
]
