Class {
	#name : #StackInterpreterPrimitivesTranslationTests,
	#superclass : #ILPluginSlangToCGeneratedTests,
	#category : #'Illicium-Plugins-Tests'
}

{ #category : #running }
StackInterpreterPrimitivesTranslationTests >> setUp [
  super setUp.
  testedClass := StackInterpreterPrimitives.
  translator := ASTCSlangPluginTranslator new
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveCloneSmoke [
  self testMethod: #primitiveClone
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveCloneStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveClone.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveClone.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveClosureCopyWithCopiedValuesSmoke [
  self testMethod: #primitiveClosureCopyWithCopiedValues
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveClosureCopyWithCopiedValuesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveClosureCopyWithCopiedValues.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveClosureCopyWithCopiedValues.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveContextAtPutSmoke [
  self testMethod: #primitiveContextAtPut
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveContextAtPutStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveContextAtPut.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveContextAtPut.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveContextAtSmoke [
  self testMethod: #primitiveContextAt
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveContextAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveContextAt.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveContextAt.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveContextSizeSmoke [
  self testMethod: #primitiveContextSize
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveContextSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveContextSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveContextSize.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveContextXraySmoke [
  self testMethod: #primitiveContextXray
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveContextXrayStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveContextXray.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveContextXray.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveDeferDisplayUpdatesSmoke [
  self testMethod: #primitiveDeferDisplayUpdates
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveDeferDisplayUpdatesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDeferDisplayUpdates.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDeferDisplayUpdates.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveDoNamedPrimitiveWithArgsSmoke [
  self testMethod: #primitiveDoNamedPrimitiveWithArgs
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveDoNamedPrimitiveWithArgsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDoNamedPrimitiveWithArgs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDoNamedPrimitiveWithArgs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveDoPrimitiveWithArgsSmoke [
  self testMethod: #primitiveDoPrimitiveWithArgs
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveDoPrimitiveWithArgsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDoPrimitiveWithArgs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDoPrimitiveWithArgs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveExecuteMethodArgsArraySmoke [
  self testMethod: #primitiveExecuteMethodArgsArray
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveExecuteMethodArgsArrayStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveExecuteMethodArgsArray.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveExecuteMethodArgsArray.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveExecuteMethodSmoke [
  self testMethod: #primitiveExecuteMethod
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveExecuteMethodStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveExecuteMethod.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveExecuteMethod.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveExternalCallSmoke [
  self testMethod: #primitiveExternalCall
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveExternalCallStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveExternalCall.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveExternalCall.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveFindHandlerContextSmoke [
  self testMethod: #primitiveFindHandlerContext
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveFindHandlerContextStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFindHandlerContext.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFindHandlerContext.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveFindNextUnwindContextSmoke [
  self testMethod: #primitiveFindNextUnwindContext
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveFindNextUnwindContextStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFindNextUnwindContext.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFindNextUnwindContext.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveFlushCacheByMethodSmoke [
  self testMethod: #primitiveFlushCacheByMethod
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveFlushCacheByMethodStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFlushCacheByMethod.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFlushCacheByMethod.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveFlushCacheBySelectorSmoke [
  self testMethod: #primitiveFlushCacheBySelector
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveFlushCacheBySelectorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFlushCacheBySelector.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFlushCacheBySelector.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveFullGCSmoke [
  self testMethod: #primitiveFullGC
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveFullGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFullGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFullGC.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveIncrementalGCSmoke [
  self testMethod: #primitiveIncrementalGC
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveIncrementalGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveIncrementalGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveIncrementalGC.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveInstVarAtPutSmoke [
  self testMethod: #primitiveInstVarAtPut
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveInstVarAtPutStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveInstVarAtPut.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveInstVarAtPut.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveInstVarAtSmoke [
  self testMethod: #primitiveInstVarAt
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveInstVarAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveInstVarAt.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveInstVarAt.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveLongRunningPrimitiveSemaphoreSmoke [
  self testMethod: #primitiveLongRunningPrimitiveSemaphore
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveLongRunningPrimitiveSemaphoreStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveLongRunningPrimitiveSemaphore.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveLongRunningPrimitiveSemaphore.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveLongRunningPrimitiveSmoke [
  self testMethod: #primitiveLongRunningPrimitive
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveLongRunningPrimitiveStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveLongRunningPrimitive.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveLongRunningPrimitive.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveObjectPointsToSmoke [
  self testMethod: #primitiveObjectPointsTo
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveObjectPointsToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveObjectPointsTo.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveObjectPointsTo.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitivePerformSmoke [
  self testMethod: #primitivePerform
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitivePerformStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitivePerform.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitivePerform.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitivePinSmoke [
  self testMethod: #primitivePin
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitivePinStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitivePin.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitivePin.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveSetGCSemaphoreSmoke [
  self testMethod: #primitiveSetGCSemaphore
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveSetGCSemaphoreStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveSetGCSemaphore.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveSetGCSemaphore.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveSignalAtMillisecondsSmoke [
  self testMethod: #primitiveSignalAtMilliseconds
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveSignalAtMillisecondsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveSignalAtMilliseconds.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveSignalAtMilliseconds.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveSignalAtUTCMicrosecondsSmoke [
  self testMethod: #primitiveSignalAtUTCMicroseconds
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveSignalAtUTCMicrosecondsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveSignalAtUTCMicroseconds.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveSignalAtUTCMicroseconds.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveSlotAtPutSmoke [
  self testMethod: #primitiveSlotAtPut
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveSlotAtPutStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveSlotAtPut.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveSlotAtPut.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveSlotAtSmoke [
  self testMethod: #primitiveSlotAt
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveSlotAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveSlotAt.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveSlotAt.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveStoreStackpSmoke [
  self testMethod: #primitiveStoreStackp
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveStoreStackpStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveStoreStackp.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveStoreStackp.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveTerminateToSmoke [
  self testMethod: #primitiveTerminateTo
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveTerminateToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveTerminateTo.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveTerminateTo.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveVMParameterSmoke [
  self testMethod: #primitiveVMParameter
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveVMParameterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveVMParameter.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveVMParameter.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveVoidReceiverSmoke [
  self testMethod: #primitiveVoidReceiver
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveVoidReceiverStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveVoidReceiver.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveVoidReceiver.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveVoidVMStateSmoke [
  self testMethod: #primitiveVoidVMState
]

{ #category : #'equaliy-test' }
StackInterpreterPrimitivesTranslationTests >> testPrimitiveVoidVMStateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveVoidVMState.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveVoidVMState.
  self assert: illiString equals: slangString
]
