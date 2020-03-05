Class {
	#name : #MAStackInterpreterPrimitivesTranslationTest,
	#superclass : #MAPluginTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MAStackInterpreterPrimitivesTranslationTest >> setUp [
	super setUp.
	testedClass := StackInterpreterPrimitives
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveCloneStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveClone.
	illiAST := self generateIllicium: #primitiveClone.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveClosureCopyWithCopiedValuesStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveClosureCopyWithCopiedValues.
	illiAST := self
		generateIllicium: #primitiveClosureCopyWithCopiedValues.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveContextAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveContextAtPut.
	illiAST := self generateIllicium: #primitiveContextAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveContextAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveContextAt.
	illiAST := self generateIllicium: #primitiveContextAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveContextSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveContextSize.
	illiAST := self generateIllicium: #primitiveContextSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveContextXrayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveContextXray.
	illiAST := self generateIllicium: #primitiveContextXray.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'I/O primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveDeferDisplayUpdatesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDeferDisplayUpdates.
	illiAST := self generateIllicium: #primitiveDeferDisplayUpdates.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveDoNamedPrimitiveWithArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDoNamedPrimitiveWithArgs.
	illiAST := self generateIllicium: #primitiveDoNamedPrimitiveWithArgs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveDoPrimitiveWithArgsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveDoPrimitiveWithArgs.
	illiAST := self generateIllicium: #primitiveDoPrimitiveWithArgs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveExecuteMethodArgsArrayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExecuteMethodArgsArray.
	illiAST := self generateIllicium: #primitiveExecuteMethodArgsArray.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveExecuteMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExecuteMethod.
	illiAST := self generateIllicium: #primitiveExecuteMethod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveExternalCallStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveExternalCall.
	illiAST := self generateIllicium: #primitiveExternalCall.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveFindHandlerContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFindHandlerContext.
	illiAST := self generateIllicium: #primitiveFindHandlerContext.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveFindNextUnwindContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFindNextUnwindContext.
	illiAST := self generateIllicium: #primitiveFindNextUnwindContext.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveFlushCacheByMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFlushCacheByMethod.
	illiAST := self generateIllicium: #primitiveFlushCacheByMethod.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveFlushCacheBySelectorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFlushCacheBySelector.
	illiAST := self generateIllicium: #primitiveFlushCacheBySelector.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveFullGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveFullGC.
	illiAST := self generateIllicium: #primitiveFullGC.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveIncrementalGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveIncrementalGC.
	illiAST := self generateIllicium: #primitiveIncrementalGC.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveInstVarAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInstVarAtPut.
	illiAST := self generateIllicium: #primitiveInstVarAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveInstVarAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveInstVarAt.
	illiAST := self generateIllicium: #primitiveInstVarAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveLongRunningPrimitiveSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #primitiveLongRunningPrimitiveSemaphore.
	illiAST := self
		generateIllicium: #primitiveLongRunningPrimitiveSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'process primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveLongRunningPrimitiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveLongRunningPrimitive.
	illiAST := self generateIllicium: #primitiveLongRunningPrimitive.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveObjectPointsToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveObjectPointsTo.
	illiAST := self generateIllicium: #primitiveObjectPointsTo.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitivePerformStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePerform.
	illiAST := self generateIllicium: #primitivePerform.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitivePinStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitivePin.
	illiAST := self generateIllicium: #primitivePin.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory space primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetGCSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSetGCSemaphore.
	illiAST := self generateIllicium: #primitiveSetGCSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveSignalAtMillisecondsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSignalAtMilliseconds.
	illiAST := self generateIllicium: #primitiveSignalAtMilliseconds.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveSignalAtUTCMicrosecondsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSignalAtUTCMicroseconds.
	illiAST := self generateIllicium: #primitiveSignalAtUTCMicroseconds.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveSlotAtPutStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSlotAtPut.
	illiAST := self generateIllicium: #primitiveSlotAtPut.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveSlotAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveSlotAt.
	illiAST := self generateIllicium: #primitiveSlotAt.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveStoreStackpStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveStoreStackp.
	illiAST := self generateIllicium: #primitiveStoreStackp.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveTerminateToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveTerminateTo.
	illiAST := self generateIllicium: #primitiveTerminateTo.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveVMParameterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveVMParameter.
	illiAST := self generateIllicium: #primitiveVMParameter.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveVoidReceiverStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveVoidReceiver.
	illiAST := self generateIllicium: #primitiveVoidReceiver.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'system control primitives-equaliy-test' }
MAStackInterpreterPrimitivesTranslationTest >> testPrimitiveVoidVMStateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveVoidVMState.
	illiAST := self generateIllicium: #primitiveVoidVMState.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStackInterpreterPrimitivesTranslationTest >> translator [
	^ MAStackInterpreterPrimitivesRessource current translator
]
