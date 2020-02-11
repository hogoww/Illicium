Class {
	#name : #ANSpur64BitMemoryManagerTranslationTest,
	#superclass : #ANVMTranslationTests,
	#category : #'Angler-Slang-Tests'
}

{ #category : #running }
ANSpur64BitMemoryManagerTranslationTest >> setUp [
	super setUp.
	testedClass := Spur64BitMemoryManager
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAccessibleObjectAfterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #accessibleObjectAfter:.
	illiAST := self generateIllicium: #accessibleObjectAfter:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testActiveAndDeferredScanStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #activeAndDeferredScan:.
	illiAST := self generateIllicium: #activeAndDeferredScan:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddFreeSubTreeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addFreeSubTree:.
	illiAST := self generateIllicium: #addFreeSubTree:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddGCRootStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addGCRoot:.
	illiAST := self generateIllicium: #addGCRoot:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddToFreeListbytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addToFreeList:bytes:.
	illiAST := self generateIllicium: #addToFreeList:bytes:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddressAfterStringComparison [
	| illiAST slangString illiString |
	<skip>
	self skip.
	slangString := self generateSlang: #addressAfter:.
	illiAST := self generateIllicium: #addressAfter:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddressCouldBeObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addressCouldBeObj:.
	illiAST := self generateIllicium: #addressCouldBeObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddressCouldBeOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addressCouldBeOop:.
	illiAST := self generateIllicium: #addressCouldBeOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllInstancesOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allInstancesOf:.
	illiAST := self generateIllicium: #allInstancesOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllObjectsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allObjects.
	illiAST := self generateIllicium: #allObjects.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllObjectsUnmarkedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allObjectsUnmarked.
	illiAST := self generateIllicium: #allObjectsUnmarked.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllOldMarkedWeakObjectsOnWeaklingStackStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #allOldMarkedWeakObjectsOnWeaklingStack.
	illiAST := self
		generateIllicium: #allOldMarkedWeakObjectsOnWeaklingStack.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllStrongSlotsOfWeaklingAreMarkedStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #allStrongSlotsOfWeaklingAreMarked:.
	illiAST := self generateIllicium: #allStrongSlotsOfWeaklingAreMarked:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllUnscannedEphemeronsAreActiveStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allUnscannedEphemeronsAreActive.
	illiAST := self generateIllicium: #allUnscannedEphemeronsAreActive.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateLargestFreeChunkStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allocateLargestFreeChunk.
	illiAST := self generateIllicium: #allocateLargestFreeChunk.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateNewSpaceSlotsformatclassIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #allocateNewSpaceSlots:format:classIndex:.
	illiAST := self
		generateIllicium: #allocateNewSpaceSlots:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateOldSpaceChunkOfBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allocateOldSpaceChunkOfBytes:.
	illiAST := self generateIllicium: #allocateOldSpaceChunkOfBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'sista support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocatePinnedSlotsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allocatePinnedSlots:.
	illiAST := self generateIllicium: #allocatePinnedSlots:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateSlotsForPinningInOldSpacebytesformatclassIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #allocateSlotsForPinningInOldSpace:bytes:format:classIndex:.
	illiAST := self
		generateIllicium: #allocateSlotsForPinningInOldSpace:bytes:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateSlotsInOldSpacebytesformatclassIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #allocateSlotsInOldSpace:bytes:format:classIndex:.
	illiAST := self
		generateIllicium: #allocateSlotsInOldSpace:bytes:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocationUnitStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allocationUnit.
	illiAST := self generateIllicium: #allocationUnit.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testArrayClassIndexPunStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #arrayClassIndexPun.
	illiAST := self generateIllicium: #arrayClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testArrayFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #arrayFormat.
	illiAST := self generateIllicium: #arrayFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAssertInnerValidFreeObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #assertInnerValidFreeObject:.
	illiAST := self generateIllicium: #assertInnerValidFreeObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBaseHeaderSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #baseHeaderSize.
	illiAST := self generateIllicium: #baseHeaderSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'store check-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBeRootIfOldStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #beRootIfOld:.
	illiAST := self generateIllicium: #beRootIfOld:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBecomeEffectFlagsForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #becomeEffectFlagsFor:.
	illiAST := self generateIllicium: #becomeEffectFlagsFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBecomewithStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #become:with:.
	illiAST := self generateIllicium: #become:with:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'become api-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBecomewithtwoWaycopyHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #become:with:twoWay:copyHash:.
	illiAST := self generateIllicium: #become:with:twoWay:copyHash:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBitsSetInFreeSpaceMaskForAllFreeListsStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #bitsSetInFreeSpaceMaskForAllFreeLists.
	illiAST := self
		generateIllicium: #bitsSetInFreeSpaceMaskForAllFreeLists.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'segments-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBridgeSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #bridgeSize.
	illiAST := self generateIllicium: #bridgeSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testByteFormatMaskStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #byteFormatMask.
	illiAST := self generateIllicium: #byteFormatMask.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testByteSizeOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #byteSizeOf:.
	illiAST := self generateIllicium: #byteSizeOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testByteSwappedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #byteSwapped:.
	illiAST := self generateIllicium: #byteSwapped:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBytesInObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #bytesInObject:.
	illiAST := self generateIllicium: #bytesInObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBytesPerOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #bytesPerOop.
	illiAST := self generateIllicium: #bytesPerOop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testChangeClassOftoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #changeClassOf:to:.
	illiAST := self generateIllicium: #changeClassOf:to:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCharacterObjectOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #characterObjectOf:.
	illiAST := self generateIllicium: #characterObjectOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCharacterTableStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #characterTable.
	illiAST := self generateIllicium: #characterTable.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCharacterTagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #characterTag.
	illiAST := self generateIllicium: #characterTag.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'immediates-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCharacterValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #characterValueOf:.
	illiAST := self generateIllicium: #characterValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckHeapFreeSpaceIntegrityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkHeapFreeSpaceIntegrity.
	illiAST := self generateIllicium: #checkHeapFreeSpaceIntegrity.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckHeapIntegrityclassIndicesShouldBeValidStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #checkHeapIntegrity:classIndicesShouldBeValid:.
	illiAST := self
		generateIllicium: #checkHeapIntegrity:classIndicesShouldBeValid:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckOkayOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOkayOop:.
	illiAST := self generateIllicium: #checkOkayOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckOopHasOkayClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOopHasOkayClass:.
	illiAST := self generateIllicium: #checkOopHasOkayClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckOopIntegritynamedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOopIntegrity:named:.
	illiAST := self generateIllicium: #checkOopIntegrity:named:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckOopIntegritynamedindexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkOopIntegrity:named:index:.
	illiAST := self generateIllicium: #checkOopIntegrity:named:index:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckedLongAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkedLongAt:.
	illiAST := self generateIllicium: #checkedLongAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassAlienStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classAlien.
	illiAST := self generateIllicium: #classAlien.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassArrayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classArray.
	illiAST := self generateIllicium: #classArray.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassAtIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classAtIndex:.
	illiAST := self generateIllicium: #classAtIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassAtIndexputStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classAtIndex:put:.
	illiAST := self generateIllicium: #classAtIndex:put:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassBitmapStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classBitmap.
	illiAST := self generateIllicium: #classBitmap.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassByteArrayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classByteArray.
	illiAST := self generateIllicium: #classByteArray.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassCharacterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classCharacter.
	illiAST := self generateIllicium: #classCharacter.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassExternalAddressStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classExternalAddress.
	illiAST := self generateIllicium: #classExternalAddress.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassExternalDataStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classExternalData.
	illiAST := self generateIllicium: #classExternalData.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassExternalFunctionStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classExternalFunction.
	illiAST := self generateIllicium: #classExternalFunction.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassExternalLibraryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classExternalLibrary.
	illiAST := self generateIllicium: #classExternalLibrary.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassExternalStructureStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classExternalStructure.
	illiAST := self generateIllicium: #classExternalStructure.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassFloatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classFloat.
	illiAST := self generateIllicium: #classFloat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassFormatForInstanceFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classFormatForInstanceFormat:.
	illiAST := self generateIllicium: #classFormatForInstanceFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassIndexFieldWidthStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classIndexFieldWidth.
	illiAST := self generateIllicium: #classIndexFieldWidth.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassIndexMaskStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classIndexMask.
	illiAST := self generateIllicium: #classIndexMask.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassIndexOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classIndexOf:.
	illiAST := self generateIllicium: #classIndexOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassIsItselfClassIndexPunStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classIsItselfClassIndexPun.
	illiAST := self generateIllicium: #classIsItselfClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassLargeNegativeIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classLargeNegativeInteger.
	illiAST := self generateIllicium: #classLargeNegativeInteger.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassLargePositiveIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classLargePositiveInteger.
	illiAST := self generateIllicium: #classLargePositiveInteger.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassOrNilAtIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classOrNilAtIndex:.
	illiAST := self generateIllicium: #classOrNilAtIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassPointStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classPoint.
	illiAST := self generateIllicium: #classPoint.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassSemaphoreStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classSemaphore.
	illiAST := self generateIllicium: #classSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassSmallIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classSmallInteger.
	illiAST := self generateIllicium: #classSmallInteger.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassStringStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classString.
	illiAST := self generateIllicium: #classString.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTableFirstPageStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classTableFirstPage.
	illiAST := self generateIllicium: #classTableFirstPage.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTableMajorIndexShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classTableMajorIndexShift.
	illiAST := self generateIllicium: #classTableMajorIndexShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTableMinorIndexMaskStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classTableMinorIndexMask.
	illiAST := self generateIllicium: #classTableMinorIndexMask.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTablePageSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classTablePageSize.
	illiAST := self generateIllicium: #classTablePageSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTableRootObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classTableRootObj.
	illiAST := self generateIllicium: #classTableRootObj.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTableRootSlotsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classTableRootSlots.
	illiAST := self generateIllicium: #classTableRootSlots.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTagForClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classTagForClass:.
	illiAST := self generateIllicium: #classTagForClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassUnsafeAlienStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #classUnsafeAlien.
	illiAST := self generateIllicium: #classUnsafeAlien.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClearLeakMapAndMapAccessibleFreeSpaceStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #clearLeakMapAndMapAccessibleFreeSpace.
	illiAST := self
		generateIllicium: #clearLeakMapAndMapAccessibleFreeSpace.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClearLeakMapAndMapAccessibleObjectsStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #clearLeakMapAndMapAccessibleObjects.
	illiAST := self
		generateIllicium: #clearLeakMapAndMapAccessibleObjects.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCloneInOldSpaceforPinningStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #cloneInOldSpace:forPinning:.
	illiAST := self generateIllicium: #cloneInOldSpace:forPinning:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCloneStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #clone:.
	illiAST := self generateIllicium: #clone:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCompactClassIndexOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #compactClassIndexOf:.
	illiAST := self generateIllicium: #compactClassIndexOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCopyObjtoAddrstopAtsavedFirstFieldsindexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #copyObj:toAddr:stopAt:savedFirstFields:index:.
	illiAST := self
		generateIllicium: #copyObj:toAddr:stopAt:savedFirstFields:index:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCountMarkedAndUnmarkdObjectsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #countMarkedAndUnmarkdObjects:.
	illiAST := self generateIllicium: #countMarkedAndUnmarkdObjects:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'allocation accounting-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCurrentAllocatedBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #currentAllocatedBytes.
	illiAST := self generateIllicium: #currentAllocatedBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testDbgFloatValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #dbgFloatValueOf:.
	illiAST := self generateIllicium: #dbgFloatValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testDefaultEdenBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #defaultEdenBytes.
	illiAST := self generateIllicium: #defaultEdenBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testDisplayObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #displayObject.
	illiAST := self generateIllicium: #displayObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testDoScavengeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #doScavenge:.
	illiAST := self generateIllicium: #doScavenge:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'instantiation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEeInstantiateClassIndexformatnumSlotsStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #eeInstantiateClassIndex:format:numSlots:.
	illiAST := self
		generateIllicium: #eeInstantiateClassIndex:format:numSlots:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEmptyObjStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #emptyObjStack:.
	illiAST := self generateIllicium: #emptyObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEndOfMemoryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #endOfMemory.
	illiAST := self generateIllicium: #endOfMemory.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEnsureRoomOnObjStackAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #ensureRoomOnObjStackAt:.
	illiAST := self generateIllicium: #ensureRoomOnObjStackAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEnterIntoClassTableStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #enterIntoClassTable:.
	illiAST := self generateIllicium: #enterIntoClassTable:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEphemeronFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #ephemeronFormat.
	illiAST := self generateIllicium: #ephemeronFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testExistInstancesInNewSpaceOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #existInstancesInNewSpaceOf:.
	illiAST := self generateIllicium: #existInstancesInNewSpaceOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testExpungeFromClassTableStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #expungeFromClassTable:.
	illiAST := self generateIllicium: #expungeFromClassTable:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFalseObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #falseObject.
	illiAST := self generateIllicium: #falseObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchByteofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchByte:ofObject:.
	illiAST := self generateIllicium: #fetchByte:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchClassOfNonImmStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchClassOfNonImm:.
	illiAST := self generateIllicium: #fetchClassOfNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchClassOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchClassOf:.
	illiAST := self generateIllicium: #fetchClassOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchClassTagOfNonImmStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchClassTagOfNonImm:.
	illiAST := self generateIllicium: #fetchClassTagOfNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchClassTagOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchClassTagOf:.
	illiAST := self generateIllicium: #fetchClassTagOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchLongofFloatObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchLong32:ofFloatObject:.
	illiAST := self generateIllicium: #fetchLong32:ofFloatObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchLongofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchLong32:ofObject:.
	illiAST := self generateIllicium: #fetchLong32:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'heap management-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchPointerofFreeChunkStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchPointer:ofFreeChunk:.
	illiAST := self generateIllicium: #fetchPointer:ofFreeChunk:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchPointerofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchPointer:ofObject:.
	illiAST := self generateIllicium: #fetchPointer:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFindLargestFreeChunkStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findLargestFreeChunk.
	illiAST := self generateIllicium: #findLargestFreeChunk.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFindStringBeginningWithStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findStringBeginningWith:.
	illiAST := self generateIllicium: #findStringBeginningWith:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFindStringStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #findString:.
	illiAST := self generateIllicium: #findString:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstAccessibleObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #firstAccessibleObject.
	illiAST := self generateIllicium: #firstAccessibleObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstByteFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #firstByteFormat.
	illiAST := self generateIllicium: #firstByteFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstClassIndexPunStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #firstClassIndexPun.
	illiAST := self generateIllicium: #firstClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstCompiledMethodFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #firstCompiledMethodFormat.
	illiAST := self generateIllicium: #firstCompiledMethodFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstFixedFieldOfMaybeImmediateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #firstFixedFieldOfMaybeImmediate:.
	illiAST := self generateIllicium: #firstFixedFieldOfMaybeImmediate:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstFixedFieldStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #firstFixedField:.
	illiAST := self generateIllicium: #firstFixedField:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstIndexableFieldStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #firstIndexableField:.
	illiAST := self generateIllicium: #firstIndexableField:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstLongFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #firstLongFormat.
	illiAST := self generateIllicium: #firstLongFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstShortFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #firstShortFormat.
	illiAST := self generateIllicium: #firstShortFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstStringyFakeFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #firstStringyFakeFormat.
	illiAST := self generateIllicium: #firstStringyFakeFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFixFollowedFieldofObjectwithInitialValueStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #fixFollowedField:ofObject:withInitialValue:.
	illiAST := self
		generateIllicium: #fixFollowedField:ofObject:withInitialValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFixedFieldsFieldWidthStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fixedFieldsFieldWidth.
	illiAST := self generateIllicium: #fixedFieldsFieldWidth.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFixedFieldsOfClassFormatMaskStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fixedFieldsOfClassFormatMask.
	illiAST := self generateIllicium: #fixedFieldsOfClassFormatMask.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFixedFieldsOfClassFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fixedFieldsOfClassFormat:.
	illiAST := self generateIllicium: #fixedFieldsOfClassFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFixedFieldsOfClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fixedFieldsOfClass:.
	illiAST := self generateIllicium: #fixedFieldsOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFixedFieldsOfformatlengthStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fixedFieldsOf:format:length:.
	illiAST := self generateIllicium: #fixedFieldsOf:format:length:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFloatObjectOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #floatObjectOf:.
	illiAST := self generateIllicium: #floatObjectOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFloatValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #floatValueOf:.
	illiAST := self generateIllicium: #floatValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowFieldofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #followField:ofObject:.
	illiAST := self generateIllicium: #followField:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowForwardedObjectFieldstoDepthStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #followForwardedObjectFields:toDepth:.
	illiAST := self
		generateIllicium: #followForwardedObjectFields:toDepth:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowForwardedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #followForwarded:.
	illiAST := self generateIllicium: #followForwarded:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowObjFieldofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #followObjField:ofObject:.
	illiAST := self generateIllicium: #followObjField:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFormatFieldWidthShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #formatFieldWidthShift.
	illiAST := self generateIllicium: #formatFieldWidthShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFormatMaskStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #formatMask.
	illiAST := self generateIllicium: #formatMask.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFormatOfClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #formatOfClass:.
	illiAST := self generateIllicium: #formatOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFormatOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #formatOf:.
	illiAST := self generateIllicium: #formatOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFormatShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #formatShift.
	illiAST := self generateIllicium: #formatShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testForwardedFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #forwardedFormat.
	illiAST := self generateIllicium: #forwardedFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testForwardersInStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #forwardersIn:.
	illiAST := self generateIllicium: #forwardersIn:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeChunkNextIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeChunkNextIndex.
	illiAST := self generateIllicium: #freeChunkNextIndex.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeChunkParentIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeChunkParentIndex.
	illiAST := self generateIllicium: #freeChunkParentIndex.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeChunkPrevIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeChunkPrevIndex.
	illiAST := self generateIllicium: #freeChunkPrevIndex.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeChunkWithBytesatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeChunkWithBytes:at:.
	illiAST := self generateIllicium: #freeChunkWithBytes:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeObject:.
	illiAST := self generateIllicium: #freeObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeStartStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeStart.
	illiAST := self generateIllicium: #freeStart.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFullGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fullGC.
	illiAST := self generateIllicium: #fullGC.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testGetHeapGrowthToSizeGCRatioStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #getHeapGrowthToSizeGCRatio.
	illiAST := self generateIllicium: #getHeapGrowthToSizeGCRatio.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testGoodContextSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #goodContextSize:.
	illiAST := self generateIllicium: #goodContextSize:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testGreyBitShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #greyBitShift.
	illiAST := self generateIllicium: #greyBitShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testGrowOldSpaceByAtLeastStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #growOldSpaceByAtLeast:.
	illiAST := self generateIllicium: #growOldSpaceByAtLeast:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHeaderForSlotsformatclassIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #headerForSlots:format:classIndex:.
	illiAST := self generateIllicium: #headerForSlots:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHeaderForSlotshashformatclassIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #headerForSlots:hash:format:classIndex:.
	illiAST := self
		generateIllicium: #headerForSlots:hash:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHeaderIndicatesAlternateBytecodeSetStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #headerIndicatesAlternateBytecodeSet:.
	illiAST := self
		generateIllicium: #headerIndicatesAlternateBytecodeSet:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHiddenRootSlotsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #hiddenRootSlots.
	illiAST := self generateIllicium: #hiddenRootSlots.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHiddenRootsObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #hiddenRootsObject.
	illiAST := self generateIllicium: #hiddenRootsObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIdentityHashFullWordShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #identityHashFullWordShift.
	illiAST := self generateIllicium: #identityHashFullWordShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIdentityHashHalfWordMaskStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #identityHashHalfWordMask.
	illiAST := self generateIllicium: #identityHashHalfWordMask.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testImageSegmentVersionStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #imageSegmentVersion.
	illiAST := self generateIllicium: #imageSegmentVersion.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testImmutableBitMaskStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #immutableBitMask.
	illiAST := self generateIllicium: #immutableBitMask.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testImmutableBitShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #immutableBitShift.
	illiAST := self generateIllicium: #immutableBitShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInFreeTreeReplacewithStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #inFreeTreeReplace:with:.
	illiAST := self generateIllicium: #inFreeTreeReplace:with:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInOrderPrintFreeTreeprintListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #inOrderPrintFreeTree:printList:.
	illiAST := self generateIllicium: #inOrderPrintFreeTree:printList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInPlaceBecomeandcopyHashFlagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #inPlaceBecome:and:copyHashFlag:.
	illiAST := self generateIllicium: #inPlaceBecome:and:copyHashFlag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIncrementalGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #incrementalGC.
	illiAST := self generateIllicium: #incrementalGC.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIndexOfinStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #indexOf:in:.
	illiAST := self generateIllicium: #indexOf:in:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIndexablePointersFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #indexablePointersFormat.
	illiAST := self generateIllicium: #indexablePointersFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitFreeChunkWithBytesatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #initFreeChunkWithBytes:at:.
	illiAST := self generateIllicium: #initFreeChunkWithBytes:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'segments-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitSegmentBridgeWithBytesatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #initSegmentBridgeWithBytes:at:.
	illiAST := self generateIllicium: #initSegmentBridgeWithBytes:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitialInstanceOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #initialInstanceOf:.
	illiAST := self generateIllicium: #initialInstanceOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitializeNewSpaceVariablesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #initializeNewSpaceVariables.
	illiAST := self generateIllicium: #initializeNewSpaceVariables.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'initialization-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitializeObjectMemoryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #initializeObjectMemory:.
	illiAST := self generateIllicium: #initializeObjectMemory:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInstSpecOfClassFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #instSpecOfClassFormat:.
	illiAST := self generateIllicium: #instSpecOfClassFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInstSpecOfClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #instSpecOfClass:.
	illiAST := self generateIllicium: #instSpecOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInstanceSizeOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #instanceSizeOf:.
	illiAST := self generateIllicium: #instanceSizeOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'instantiation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInstantiateClassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #instantiateClass:.
	illiAST := self generateIllicium: #instantiateClass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'instantiation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInstantiateClassindexableSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #instantiateClass:indexableSize:.
	illiAST := self generateIllicium: #instantiateClass:indexableSize:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'immediates-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIntegerObjectOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #integerObjectOf:.
	illiAST := self generateIllicium: #integerObjectOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'immediates-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #integerValueOf:.
	illiAST := self generateIllicium: #integerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsAnyPointerFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isAnyPointerFormat:.
	illiAST := self generateIllicium: #isAnyPointerFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsArrayNonImmStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isArrayNonImm:.
	illiAST := self generateIllicium: #isArrayNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsArrayStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isArray:.
	illiAST := self generateIllicium: #isArray:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isBytes:.
	illiAST := self generateIllicium: #isBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'immediates-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsCharacterObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isCharacterObject:.
	illiAST := self generateIllicium: #isCharacterObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'immediates-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsCharacterValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isCharacterValue:.
	illiAST := self generateIllicium: #isCharacterValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsClassAtUniqueIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isClassAtUniqueIndex:.
	illiAST := self generateIllicium: #isClassAtUniqueIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsCompiledMethodFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isCompiledMethodFormat:.
	illiAST := self generateIllicium: #isCompiledMethodFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsCompiledMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isCompiledMethod:.
	illiAST := self generateIllicium: #isCompiledMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsContextHeaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isContextHeader:.
	illiAST := self generateIllicium: #isContextHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsContextNonImmStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isContextNonImm:.
	illiAST := self generateIllicium: #isContextNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsContextStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isContext:.
	illiAST := self generateIllicium: #isContext:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsCopiedIntoSegmentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isCopiedIntoSegment:.
	illiAST := self generateIllicium: #isCopiedIntoSegment:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsEmptyObjStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isEmptyObjStack:.
	illiAST := self generateIllicium: #isEmptyObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsEnumerableObjectNoAssertStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isEnumerableObjectNoAssert:.
	illiAST := self generateIllicium: #isEnumerableObjectNoAssert:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsEnumerableObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isEnumerableObject:.
	illiAST := self generateIllicium: #isEnumerableObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsEphemeronFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isEphemeronFormat:.
	illiAST := self generateIllicium: #isEphemeronFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsEphemeronStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isEphemeron:.
	illiAST := self generateIllicium: #isEphemeron:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsFixedSizePointerFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isFixedSizePointerFormat:.
	illiAST := self generateIllicium: #isFixedSizePointerFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsForwardedClassTagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isForwardedClassTag:.
	illiAST := self generateIllicium: #isForwardedClassTag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsForwardedObjectClassIndexPunStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isForwardedObjectClassIndexPun.
	illiAST := self generateIllicium: #isForwardedObjectClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsForwardedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isForwarded:.
	illiAST := self generateIllicium: #isForwarded:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsFreeObjectClassIndexPunStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isFreeObjectClassIndexPun.
	illiAST := self generateIllicium: #isFreeObjectClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsFreeObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isFreeObject:.
	illiAST := self generateIllicium: #isFreeObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsFreeOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isFreeOop:.
	illiAST := self generateIllicium: #isFreeOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsImmediateFloatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isImmediateFloat:.
	illiAST := self generateIllicium: #isImmediateFloat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsImmediateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isImmediate:.
	illiAST := self generateIllicium: #isImmediate:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInClassTableStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isInClassTable:.
	illiAST := self generateIllicium: #isInClassTable:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInEdenStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isInEden:.
	illiAST := self generateIllicium: #isInEden:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInFutureSpaceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isInFutureSpace:.
	illiAST := self generateIllicium: #isInFutureSpace:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInMemoryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isInMemory:.
	illiAST := self generateIllicium: #isInMemory:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInNewSpaceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isInNewSpace:.
	illiAST := self generateIllicium: #isInNewSpace:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInOldSpaceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isInOldSpace:.
	illiAST := self generateIllicium: #isInOldSpace:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInPastSpaceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isInPastSpace:.
	illiAST := self generateIllicium: #isInPastSpace:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsIndexableStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isIndexable:.
	illiAST := self generateIllicium: #isIndexable:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsIntegerObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isIntegerObject:.
	illiAST := self generateIllicium: #isIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsIntegerValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isIntegerValue:.
	illiAST := self generateIllicium: #isIntegerValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsLargeFreeObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLargeFreeObject:.
	illiAST := self generateIllicium: #isLargeFreeObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsLilliputianSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLilliputianSize:.
	illiAST := self generateIllicium: #isLilliputianSize:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsMarkedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isMarked:.
	illiAST := self generateIllicium: #isMarked:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsMaybeFiredEphemeronStringComparison [
	| illiAST slangString illiString |
	true ifTrue: [ ^ self skip ].
	slangString := self generateSlang: #isMaybeFiredEphemeron:.
	illiAST := self generateIllicium: #isMaybeFiredEphemeron:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsNonImmediateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isNonImmediate:.
	illiAST := self generateIllicium: #isNonImmediate:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsObjEphemeronStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isObjEphemeron:.
	illiAST := self generateIllicium: #isObjEphemeron:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsObjImmutableStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isObjImmutable:.
	illiAST := self generateIllicium: #isObjImmutable:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsOldObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isOldObject:.
	illiAST := self generateIllicium: #isOldObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsOopCompiledMethodStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isOopCompiledMethod:.
	illiAST := self generateIllicium: #isOopCompiledMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsOopForwardedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isOopForwarded:.
	illiAST := self generateIllicium: #isOopForwarded:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsOopImmutableStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isOopImmutable:.
	illiAST := self generateIllicium: #isOopImmutable:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsOopMutableStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isOopMutable:.
	illiAST := self generateIllicium: #isOopMutable:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsPinnedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isPinned:.
	illiAST := self generateIllicium: #isPinned:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsPointersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isPointers:.
	illiAST := self generateIllicium: #isPointers:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsPureBitsFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isPureBitsFormat:.
	illiAST := self generateIllicium: #isPureBitsFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsReallyYoungObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isReallyYoungObject:.
	illiAST := self generateIllicium: #isReallyYoungObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsReallyYoungStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isReallyYoung:.
	illiAST := self generateIllicium: #isReallyYoung:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsRememberedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isRemembered:.
	illiAST := self generateIllicium: #isRemembered:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'segments-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsSegmentBridgeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isSegmentBridge:.
	illiAST := self generateIllicium: #isSegmentBridge:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsSmallFloatValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isSmallFloatValue:.
	illiAST := self generateIllicium: #isSmallFloatValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsUnambiguouslyForwarderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isUnambiguouslyForwarder:.
	illiAST := self generateIllicium: #isUnambiguouslyForwarder:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsUnmarkedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isUnmarked:.
	illiAST := self generateIllicium: #isUnmarked:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsValidClassTagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isValidClassTag:.
	illiAST := self generateIllicium: #isValidClassTag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsValidObjStackAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isValidObjStackAt:.
	illiAST := self generateIllicium: #isValidObjStackAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsValidObjStackPagemyIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isValidObjStackPage:myIndex:.
	illiAST := self generateIllicium: #isValidObjStackPage:myIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsValidObjStackPagemyIndexfirstPageStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #isValidObjStackPage:myIndex:firstPage:.
	illiAST := self
		generateIllicium: #isValidObjStackPage:myIndex:firstPage:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsValidObjStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isValidObjStack:.
	illiAST := self generateIllicium: #isValidObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsWeakFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isWeakFormat:.
	illiAST := self generateIllicium: #isWeakFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsWeakNonImmStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isWeakNonImm:.
	illiAST := self generateIllicium: #isWeakNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsWeakStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isWeak:.
	illiAST := self generateIllicium: #isWeak:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsWordsOrBytesStringComparison [
	| illiAST slangString illiString |
	true ifTrue: [ ^ self skip ].
	slangString := self generateSlang: #isWordsOrBytes:.
	illiAST := self generateIllicium: #isWordsOrBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsWordsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isWords:.
	illiAST := self generateIllicium: #isWords:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsYoungObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isYoungObject:.
	illiAST := self generateIllicium: #isYoungObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsYoungStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isYoung:.
	illiAST := self generateIllicium: #isYoung:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsinstanceOfcompactClassIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #is:instanceOf:compactClassIndex:.
	illiAST := self generateIllicium: #is:instanceOf:compactClassIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsonObjStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #is:onObjStack:.
	illiAST := self generateIllicium: #is:onObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testKeyOfEphemeronStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #keyOfEphemeron:.
	illiAST := self generateIllicium: #keyOfEphemeron:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testKnownClassAtIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #knownClassAtIndex:.
	illiAST := self generateIllicium: #knownClassAtIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLastClassIndexPunStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lastClassIndexPun.
	illiAST := self generateIllicium: #lastClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLastPointerFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lastPointerFormat.
	illiAST := self generateIllicium: #lastPointerFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLastPointerOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lastPointerOf:.
	illiAST := self generateIllicium: #lastPointerOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLastPointerOfWhileSwizzlingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lastPointerOfWhileSwizzling:.
	illiAST := self generateIllicium: #lastPointerOfWhileSwizzling:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLeakCheckBecomeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #leakCheckBecome.
	illiAST := self generateIllicium: #leakCheckBecome.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLeakCheckFullGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #leakCheckFullGC.
	illiAST := self generateIllicium: #leakCheckFullGC.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLeakCheckIncrementalStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #leakCheckIncremental.
	illiAST := self generateIllicium: #leakCheckIncremental.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLeakCheckNewSpaceGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #leakCheckNewSpaceGC.
	illiAST := self generateIllicium: #leakCheckNewSpaceGC.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLengthOfMaybeImmediateStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lengthOfMaybeImmediate:.
	illiAST := self generateIllicium: #lengthOfMaybeImmediate:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLengthOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lengthOf:.
	illiAST := self generateIllicium: #lengthOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLengthOfformatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lengthOf:format:.
	illiAST := self generateIllicium: #lengthOf:format:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLiteralCountOfMethodHeaderStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #literalCountOfMethodHeader:.
	illiAST := self generateIllicium: #literalCountOfMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLiteralCountOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #literalCountOf:.
	illiAST := self generateIllicium: #literalCountOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLoadImageSegmentFromoutPointersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #loadImageSegmentFrom:outPointers:.
	illiAST := self generateIllicium: #loadImageSegmentFrom:outPointers:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLongPrintInstancesOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #longPrintInstancesOf:.
	illiAST := self generateIllicium: #longPrintInstancesOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLongPrintInstancesWithClassIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #longPrintInstancesWithClassIndex:.
	illiAST := self generateIllicium: #longPrintInstancesWithClassIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLongPrintReferencesToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #longPrintReferencesTo:.
	illiAST := self generateIllicium: #longPrintReferencesTo:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMapExtraRootsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #mapExtraRoots.
	illiAST := self generateIllicium: #mapExtraRoots.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMapMournQueueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #mapMournQueue.
	illiAST := self generateIllicium: #mapMournQueue.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMapOopsFromtooutPointersoutHashesStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #mapOopsFrom:to:outPointers:outHashes:.
	illiAST := self
		generateIllicium: #mapOopsFrom:to:outPointers:outHashes:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceClassOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markAndTraceClassOf:.
	illiAST := self generateIllicium: #markAndTraceClassOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceObjStackandContentsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markAndTraceObjStack:andContents:.
	illiAST := self generateIllicium: #markAndTraceObjStack:andContents:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markAndTrace:.
	illiAST := self generateIllicium: #markAndTrace:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkInactiveEphemeronsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markInactiveEphemerons.
	illiAST := self generateIllicium: #markInactiveEphemerons.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkObjectsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markObjects:.
	illiAST := self generateIllicium: #markObjects:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkWeaklingsAndMarkAndFireEphemeronsStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #markWeaklingsAndMarkAndFireEphemerons.
	illiAST := self
		generateIllicium: #markWeaklingsAndMarkAndFireEphemerons.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkedBitFullShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markedBitFullShift.
	illiAST := self generateIllicium: #markedBitFullShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkedBitHalfShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #markedBitHalfShift.
	illiAST := self generateIllicium: #markedBitHalfShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMaxOldSpaceSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #maxOldSpaceSize.
	illiAST := self generateIllicium: #maxOldSpaceSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'instantiation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMaxSlotsForAllocStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #maxSlotsForAlloc.
	illiAST := self generateIllicium: #maxSlotsForAlloc.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMaxSmallIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #maxSmallInteger.
	illiAST := self generateIllicium: #maxSmallInteger.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMaybeMethodClassOfseemsToBeInstantiatingStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #maybeMethodClassOf:seemsToBeInstantiating:.
	illiAST := self
		generateIllicium: #maybeMethodClassOf:seemsToBeInstantiating:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMaybeSplObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #maybeSplObj:.
	illiAST := self generateIllicium: #maybeSplObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMemoryActiveProcessStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #memoryActiveProcess.
	illiAST := self generateIllicium: #memoryActiveProcess.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMemoryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #memory.
	illiAST := self generateIllicium: #memory.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMethodHeaderOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #methodHeaderOf:.
	illiAST := self generateIllicium: #methodHeaderOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMinSlotsForShorteningStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #minSlotsForShortening.
	illiAST := self generateIllicium: #minSlotsForShortening.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMinSmallIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #minSmallInteger.
	illiAST := self generateIllicium: #minSmallInteger.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNewObjectHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #newObjectHash.
	illiAST := self generateIllicium: #newObjectHash.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNewSpaceIsEmptyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #newSpaceIsEmpty.
	illiAST := self generateIllicium: #newSpaceIsEmpty.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNewSpaceLimitStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #newSpaceLimit.
	illiAST := self generateIllicium: #newSpaceLimit.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNilObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #nilObject.
	illiAST := self generateIllicium: #nilObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNilUnmarkedWeaklingSlotsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #nilUnmarkedWeaklingSlots.
	illiAST := self generateIllicium: #nilUnmarkedWeaklingSlots.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNoCheckClassAtIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noCheckClassAtIndex:.
	illiAST := self generateIllicium: #noCheckClassAtIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNoCheckPushonObjStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noCheckPush:onObjStack:.
	illiAST := self generateIllicium: #noCheckPush:onObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNoFixupFollowFieldofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noFixupFollowField:ofObject:.
	illiAST := self generateIllicium: #noFixupFollowField:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNoInlineObjectAfterlimitStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noInlineObjectAfter:limit:.
	illiAST := self generateIllicium: #noInlineObjectAfter:limit:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNoUnscannedEphemeronsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #noUnscannedEphemerons.
	illiAST := self generateIllicium: #noUnscannedEphemerons.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNonIndexablePointerFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #nonIndexablePointerFormat.
	illiAST := self generateIllicium: #nonIndexablePointerFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumBytesOfBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numBytesOfBytes:.
	illiAST := self generateIllicium: #numBytesOfBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumBytesOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numBytesOf:.
	illiAST := self generateIllicium: #numBytesOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumFreeListsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numFreeLists.
	illiAST := self generateIllicium: #numFreeLists.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumPointerSlotsOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numPointerSlotsOf:.
	illiAST := self generateIllicium: #numPointerSlotsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSlotsFullShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numSlotsFullShift.
	illiAST := self generateIllicium: #numSlotsFullShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSlotsHalfShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numSlotsHalfShift.
	illiAST := self generateIllicium: #numSlotsHalfShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSlotsMaskStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numSlotsMask.
	illiAST := self generateIllicium: #numSlotsMask.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSlotsOfAnyStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numSlotsOfAny:.
	illiAST := self generateIllicium: #numSlotsOfAny:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSlotsOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numSlotsOf:.
	illiAST := self generateIllicium: #numSlotsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumStrongSlotsOfInephemeralStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numStrongSlotsOfInephemeral:.
	illiAST := self generateIllicium: #numStrongSlotsOfInephemeral:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumStrongSlotsOfWeaklingStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numStrongSlotsOfWeakling:.
	illiAST := self generateIllicium: #numStrongSlotsOfWeakling:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumTagBitsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numTagBits.
	illiAST := self generateIllicium: #numTagBits.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObjectAfterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #objectAfter:.
	illiAST := self generateIllicium: #objectAfter:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObjectBeforeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #objectBefore:.
	illiAST := self generateIllicium: #objectBefore:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObjectStartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #objectStartingAt:.
	illiAST := self generateIllicium: #objectStartingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObjectsReachableFromRootsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #objectsReachableFromRoots:.
	illiAST := self generateIllicium: #objectsReachableFromRoots:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObsoleteDontUseThisFetchWordofObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #obsoleteDontUseThisFetchWord:ofObject:.
	illiAST := self
		generateIllicium: #obsoleteDontUseThisFetchWord:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testOkayOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #okayOop:.
	illiAST := self generateIllicium: #okayOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testOldSpaceObjectAfterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #oldSpaceObjectAfter:.
	illiAST := self generateIllicium: #oldSpaceObjectAfter:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testOldSpaceStartStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #oldSpaceStart.
	illiAST := self generateIllicium: #oldSpaceStart.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testOutOfPlaceBecomeandcopyHashFlagStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #outOfPlaceBecome:and:copyHashFlag:.
	illiAST := self generateIllicium: #outOfPlaceBecome:and:copyHashFlag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPastSpaceStartStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pastSpaceStart.
	illiAST := self generateIllicium: #pastSpaceStart.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPinObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pinObject:.
	illiAST := self generateIllicium: #pinObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPinnedBitShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pinnedBitShift.
	illiAST := self generateIllicium: #pinnedBitShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPopObjStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #popObjStack:.
	illiAST := self generateIllicium: #popObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPopRemappableOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #popRemappableOop.
	illiAST := self generateIllicium: #popRemappableOop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPostBecomeScanClassTableStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #postBecomeScanClassTable:.
	illiAST := self generateIllicium: #postBecomeScanClassTable:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrimitiveErrorTableStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #primitiveErrorTable.
	illiAST := self generateIllicium: #primitiveErrorTable.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintActivationsOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printActivationsOf:.
	illiAST := self generateIllicium: #printActivationsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintBogonsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printBogons.
	illiAST := self generateIllicium: #printBogons.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintContextReferencesToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printContextReferencesTo:.
	illiAST := self generateIllicium: #printContextReferencesTo:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintEntityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printEntity:.
	illiAST := self generateIllicium: #printEntity:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintForwardersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printForwarders.
	illiAST := self generateIllicium: #printForwarders.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintFreeChunkStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFreeChunk:.
	illiAST := self generateIllicium: #printFreeChunk:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintFreeChunkprintAsTreeNodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFreeChunk:printAsTreeNode:.
	illiAST := self generateIllicium: #printFreeChunk:printAsTreeNode:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintFreeChunksStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFreeChunks.
	illiAST := self generateIllicium: #printFreeChunks.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintFreeListHeadsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFreeListHeads.
	illiAST := self generateIllicium: #printFreeListHeads.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintFreeListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFreeList:.
	illiAST := self generateIllicium: #printFreeList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintFreeTreeChunkStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFreeTreeChunk:.
	illiAST := self generateIllicium: #printFreeTreeChunk:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintFreeTreeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printFreeTree.
	illiAST := self generateIllicium: #printFreeTree.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintHeaderOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printHeaderOf:.
	illiAST := self generateIllicium: #printHeaderOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintHeaderTypeOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printHeaderTypeOf:.
	illiAST := self generateIllicium: #printHeaderTypeOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintInstancesOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printInstancesOf:.
	illiAST := self generateIllicium: #printInstancesOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintInstancesWithClassIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printInstancesWithClassIndex:.
	illiAST := self generateIllicium: #printInstancesWithClassIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintInvalidClassTableEntriesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printInvalidClassTableEntries.
	illiAST := self generateIllicium: #printInvalidClassTableEntries.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintMarkedOopsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMarkedOops.
	illiAST := self generateIllicium: #printMarkedOops.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintMethodImplementorsOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMethodImplementorsOf:.
	illiAST := self generateIllicium: #printMethodImplementorsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintMethodReferencesToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printMethodReferencesTo:.
	illiAST := self generateIllicium: #printMethodReferencesTo:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintObjStackPagemyIndexpageTypeStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #printObjStackPage:myIndex:pageType:.
	illiAST := self
		generateIllicium: #printObjStackPage:myIndex:pageType:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintObjStackPagemyIndextagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printObjStackPage:myIndex:tag:.
	illiAST := self generateIllicium: #printObjStackPage:myIndex:tag:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintObjStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printObjStack:.
	illiAST := self generateIllicium: #printObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintObjectsFromtoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printObjectsFrom:to:.
	illiAST := self generateIllicium: #printObjectsFrom:to:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintObjectsWithHashStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printObjectsWithHash:.
	illiAST := self generateIllicium: #printObjectsWithHash:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintOopsExceptStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printOopsExcept:.
	illiAST := self generateIllicium: #printOopsExcept:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintOopsFromtoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printOopsFrom:to:.
	illiAST := self generateIllicium: #printOopsFrom:to:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintOopsSuchThatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printOopsSuchThat:.
	illiAST := self generateIllicium: #printOopsSuchThat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintReferencesToStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printReferencesTo:.
	illiAST := self generateIllicium: #printReferencesTo:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintUnmarkedOopsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printUnmarkedOops.
	illiAST := self generateIllicium: #printUnmarkedOops.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPushOnUnscannedEphemeronsStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pushOnUnscannedEphemeronsStack:.
	illiAST := self generateIllicium: #pushOnUnscannedEphemeronsStack:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPushRemappableOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pushRemappableOop:.
	illiAST := self generateIllicium: #pushRemappableOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testQueueMournerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #queueMourner:.
	illiAST := self generateIllicium: #queueMourner:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRawHashBitsOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #rawHashBitsOf:.
	illiAST := self generateIllicium: #rawHashBitsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRelocateObjStackForPlanningCompactorStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #relocateObjStackForPlanningCompactor:.
	illiAST := self
		generateIllicium: #relocateObjStackForPlanningCompactor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRemapBufferCountStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #remapBufferCount.
	illiAST := self generateIllicium: #remapBufferCount.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRememberedBitShiftStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #rememberedBitShift.
	illiAST := self generateIllicium: #rememberedBitShift.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRemoveGCRootStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #removeGCRoot:.
	illiAST := self generateIllicium: #removeGCRoot:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testReturnrestoringObjectsInsavedFirstFieldsandsavedHashesStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #return:restoringObjectsIn:savedFirstFields:and:savedHashes:.
	illiAST := self
		generateIllicium: #return:restoringObjectsIn:savedFirstFields:and:savedHashes:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testReturnrestoringObjectsInupTosavedFirstFieldsStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #return:restoringObjectsIn:upTo:savedFirstFields:.
	illiAST := self
		generateIllicium: #return:restoringObjectsIn:upTo:savedFirstFields:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testReverseBytesInBitWordsInStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #reverseBytesIn32BitWordsIn:.
	illiAST := self generateIllicium: #reverseBytesIn32BitWordsIn:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'scavenger-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRootTableCapacityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #rootTableCapacity.
	illiAST := self generateIllicium: #rootTableCapacity.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRootTableCountStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #rootTableCount.
	illiAST := self generateIllicium: #rootTableCount.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRunLeakCheckerForFreeSpaceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #runLeakCheckerForFreeSpace:.
	illiAST := self generateIllicium: #runLeakCheckerForFreeSpace:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRunLeakCheckerForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #runLeakCheckerFor:.
	illiAST := self generateIllicium: #runLeakCheckerFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRunLeakCheckerForexcludeUnmarkedObjsclassIndicesShouldBeValidStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #runLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
	illiAST := self
		generateIllicium: #runLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testScavengingGCTenuringIfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #scavengingGCTenuringIf:.
	illiAST := self generateIllicium: #scavengingGCTenuringIf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSegmentBridgePunStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #segmentBridgePun.
	illiAST := self generateIllicium: #segmentBridgePun.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetHeapBasememoryLimitendOfMemoryStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #setHeapBase:memoryLimit:endOfMemory:.
	illiAST := self
		generateIllicium: #setHeapBase:memoryLimit:endOfMemory:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'word size-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testShiftForWordStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shiftForWord.
	illiAST := self generateIllicium: #shiftForWord.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testShortPrintObjectsFromtoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shortPrintObjectsFrom:to:.
	illiAST := self generateIllicium: #shortPrintObjectsFrom:to:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testShortentoIndexableSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shorten:toIndexableSize:.
	illiAST := self generateIllicium: #shorten:toIndexableSize:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testShouldRemapOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shouldRemapOop:.
	illiAST := self generateIllicium: #shouldRemapOop:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSixtyFourBitIndexableFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sixtyFourBitIndexableFormat.
	illiAST := self generateIllicium: #sixtyFourBitIndexableFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSixtyFourBitLongsClassIndexPunStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sixtyFourBitLongsClassIndexPun.
	illiAST := self generateIllicium: #sixtyFourBitLongsClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSizeOfObjStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sizeOfObjStack:.
	illiAST := self generateIllicium: #sizeOfObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSlidingCompactionInProgressStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #slidingCompactionInProgress.
	illiAST := self generateIllicium: #slidingCompactionInProgress.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSlotSizeOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #slotSizeOf:.
	illiAST := self generateIllicium: #slotSizeOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallFloatExponentBitsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #smallFloatExponentBits.
	illiAST := self generateIllicium: #smallFloatExponentBits.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallFloatExponentOffsetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #smallFloatExponentOffset.
	illiAST := self generateIllicium: #smallFloatExponentOffset.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallFloatMantissaBitsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #smallFloatMantissaBits.
	illiAST := self generateIllicium: #smallFloatMantissaBits.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'cog jit support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallFloatTagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #smallFloatTag.
	illiAST := self generateIllicium: #smallFloatTag.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallFloatValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #smallFloatValueOf:.
	illiAST := self generateIllicium: #smallFloatValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'cog jit support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallIntegerTagStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #smallIntegerTag.
	illiAST := self generateIllicium: #smallIntegerTag.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallObjectBytesForSlotsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #smallObjectBytesForSlots:.
	illiAST := self generateIllicium: #smallObjectBytesForSlots:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSplObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #splObj:.
	illiAST := self generateIllicium: #splObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStartOfMemoryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #startOfMemory.
	illiAST := self generateIllicium: #startOfMemory.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStartOfObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #startOfObject:.
	illiAST := self generateIllicium: #startOfObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatNumGCsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #statNumGCs.
	illiAST := self generateIllicium: #statNumGCs.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStoreCheckBoundaryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #storeCheckBoundary.
	illiAST := self generateIllicium: #storeCheckBoundary.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStoreImageSegmentIntooutPointersrootsStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #storeImageSegmentInto:outPointers:roots:.
	illiAST := self
		generateIllicium: #storeImageSegmentInto:outPointers:roots:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStorePointerUncheckedofObjectwithValueStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #storePointerUnchecked:ofObject:withValue:.
	illiAST := self
		generateIllicium: #storePointerUnchecked:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStorePointerofObjectwithValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #storePointer:ofObject:withValue:.
	illiAST := self generateIllicium: #storePointer:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStringForCStringStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #stringForCString:.
	illiAST := self generateIllicium: #stringForCString:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSufficientSpaceAfterGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #sufficientSpaceAfterGC:.
	illiAST := self generateIllicium: #sufficientSpaceAfterGC:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSwizzleObjStackAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #swizzleObjStackAt:.
	illiAST := self generateIllicium: #swizzleObjStackAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'word size-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTagMaskStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #tagMask.
	illiAST := self generateIllicium: #tagMask.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTenuringIncrementalGCStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #tenuringIncrementalGC.
	illiAST := self generateIllicium: #tenuringIncrementalGC.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testThirtyTwoBitLongsClassIndexPunStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #thirtyTwoBitLongsClassIndexPun.
	illiAST := self generateIllicium: #thirtyTwoBitLongsClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTopOfObjStackStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #topOfObjStack:.
	illiAST := self generateIllicium: #topOfObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTopRemappableOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #topRemappableOop.
	illiAST := self generateIllicium: #topRemappableOop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTotalFreeListBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #totalFreeListBytes.
	illiAST := self generateIllicium: #totalFreeListBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTrueObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #trueObject.
	illiAST := self generateIllicium: #trueObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUnlinkFreeChunkchunkBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #unlinkFreeChunk:chunkBytes:.
	illiAST := self generateIllicium: #unlinkFreeChunk:chunkBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUnlinkLilliputianChunkindexStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #unlinkLilliputianChunk:index:.
	illiAST := self generateIllicium: #unlinkLilliputianChunk:index:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUnlinkSolitaryFreeTreeNodeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #unlinkSolitaryFreeTreeNode:.
	illiAST := self generateIllicium: #unlinkSolitaryFreeTreeNode:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUnpinObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #unpinObject:.
	illiAST := self generateIllicium: #unpinObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'initialization-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUpdateListStartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #updateListStartingAt:.
	illiAST := self generateIllicium: #updateListStartingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testValidClassTableHashesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validClassTableHashes.
	illiAST := self generateIllicium: #validClassTableHashes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testValidClassTableRootPagesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validClassTableRootPages.
	illiAST := self generateIllicium: #validClassTableRootPages.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testValidFreeTreeChunkStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validFreeTreeChunk:.
	illiAST := self generateIllicium: #validFreeTreeChunk:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testValidFreeTreeChunkparentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validFreeTreeChunk:parent:.
	illiAST := self generateIllicium: #validFreeTreeChunk:parent:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testValidFreeTreeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validFreeTree.
	illiAST := self generateIllicium: #validFreeTree.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testValidObjStacksStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validObjStacks.
	illiAST := self generateIllicium: #validObjStacks.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'memory access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testVmEndiannessStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #vmEndianness.
	illiAST := self generateIllicium: #vmEndianness.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testWeakArrayClassIndexPunStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #weakArrayClassIndexPun.
	illiAST := self generateIllicium: #weakArrayClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testWeakArrayFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #weakArrayFormat.
	illiAST := self generateIllicium: #weakArrayFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testWordIndexableFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #wordIndexableFormat.
	illiAST := self generateIllicium: #wordIndexableFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'word size-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testWordSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #wordSize.
	illiAST := self generateIllicium: #wordSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
ANSpur64BitMemoryManagerTranslationTest >> translator [
	^ ANSpur64BitMemoryManagerRessource current translator
]
