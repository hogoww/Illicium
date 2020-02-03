Class {
	#name : #ANSpur64BitMemoryManagerTranslationTest,
	#superclass : #ANSlangToCGeneratedTests,
	#category : #'Angler-Slang-Tests'
}

{ #category : #running }
ANSpur64BitMemoryManagerTranslationTest >> setUp [
	super setUp.
	testedClass := Spur64BitMemoryManager.
	translator addClass: Spur64BitMemoryManager.
	translator addMethod: StackInterpreter >> #cr.
	translator addClass: SpurMemoryManager
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAccessibleObjectAfterStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #accessibleObjectAfter:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #accessibleObjectAfter:.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testActiveAndDeferredScanStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #activeAndDeferredScan:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #activeAndDeferredScan:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddFreeChunkWithBytesatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #addFreeChunkWithBytes:at:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #addFreeChunkWithBytes:at:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddFreeSubTreeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #addFreeSubTree:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #addFreeSubTree:.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddGCRootStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #addGCRoot:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #addGCRoot:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddToFreeListbytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #addToFreeList:bytes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #addToFreeList:bytes:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddToFreeTreebytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #addToFreeTree:bytes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #addToFreeTree:bytes:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddressAfterStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #addressAfter:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #addressAfter:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddressCouldBeObjStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #addressCouldBeObj:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #addressCouldBeObj:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddressCouldBeOldObjStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #addressCouldBeOldObj:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #addressCouldBeOldObj:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAddressCouldBeOopStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #addressCouldBeOop:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #addressCouldBeOop:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAdjustAllOopsByStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #adjustAllOopsBy:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #adjustAllOopsBy:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllExistingNewSpaceObjectsDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allExistingNewSpaceObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allExistingNewSpaceObjectsDo:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllExistingObjectsDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allExistingObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allExistingObjectsDo:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllExistingOldSpaceObjectsDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allExistingOldSpaceObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allExistingOldSpaceObjectsDo:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllFreeObjectsDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allFreeObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allFreeObjectsDo:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllHeapEntitiesDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allHeapEntitiesDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allHeapEntitiesDo:.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllInstancesOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allInstancesOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allInstancesOf:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllNewSpaceEntitiesDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allNewSpaceEntitiesDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allNewSpaceEntitiesDo:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllNewSpaceObjectsDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allNewSpaceObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allNewSpaceObjectsDo:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllObjectsDoSafelyStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allObjectsDoSafely:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allObjectsDoSafely:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllObjectsDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allObjectsDo:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllObjectsInFreeTreeDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allObjectsInFreeTreeDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allObjectsInFreeTreeDo:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllObjectsInFreeTreedoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allObjectsInFreeTree:do:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allObjectsInFreeTree:do:.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllObjectsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allObjects.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allObjects.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllObjectsUnmarkedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allObjectsUnmarked.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allObjectsUnmarked.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllOldMarkedWeakObjectsOnWeaklingStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #allOldMarkedWeakObjectsOnWeaklingStack.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #allOldMarkedWeakObjectsOnWeaklingStack.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allOldSpaceEntitiesDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allOldSpaceEntitiesDo:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesForCoalescingFromdoStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #allOldSpaceEntitiesForCoalescingFrom:do:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #allOldSpaceEntitiesForCoalescingFrom:do:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesForCompactingFromtodoStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #allOldSpaceEntitiesForCompactingFrom:to:do:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #allOldSpaceEntitiesForCompactingFrom:to:do:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesFromdoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allOldSpaceEntitiesFrom:do:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allOldSpaceEntitiesFrom:do:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesFromtodoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allOldSpaceEntitiesFrom:to:do:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allOldSpaceEntitiesFrom:to:do:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceObjectsDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allOldSpaceObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allOldSpaceObjectsDo:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceObjectsFromdoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allOldSpaceObjectsFrom:do:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allOldSpaceObjectsFrom:do:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllPastSpaceEntitiesDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allPastSpaceEntitiesDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allPastSpaceEntitiesDo:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllPastSpaceObjectsDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allPastSpaceObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allPastSpaceObjectsDo:.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllStrongSlotsOfWeaklingAreMarkedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allStrongSlotsOfWeaklingAreMarked:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #allStrongSlotsOfWeaklingAreMarked:.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllUnscannedEphemeronsAreActiveStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allUnscannedEphemeronsAreActive.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allUnscannedEphemeronsAreActive.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateBytesclassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allocateBytes:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allocateBytes:classIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateLargestFreeChunkStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allocateLargestFreeChunk.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allocateLargestFreeChunk.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateNewSpaceSlotsformatclassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #allocateNewSpaceSlots:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #allocateNewSpaceSlots:format:classIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateOldSpaceChunkOfBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allocateOldSpaceChunkOfBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allocateOldSpaceChunkOfBytes:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateOldSpaceChunkOfBytessuchThatStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #allocateOldSpaceChunkOfBytes:suchThat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #allocateOldSpaceChunkOfBytes:suchThat:.
	self assert: illiString equals: slangString
]

{ #category : #'sista support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocatePinnedSlotsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allocatePinnedSlots:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allocatePinnedSlots:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateSlotsForPinningInOldSpacebytesformatclassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #allocateSlotsForPinningInOldSpace:bytes:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #allocateSlotsForPinningInOldSpace:bytes:format:classIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateSlotsInOldSpacebytesformatclassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #allocateSlotsInOldSpace:bytes:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #allocateSlotsInOldSpace:bytes:format:classIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateSlotsInOldSpaceformatclassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #allocateSlotsInOldSpace:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #allocateSlotsInOldSpace:format:classIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateSlotsformatclassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allocateSlots:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allocateSlots:format:classIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocateSmallNewSpaceSlotsformatclassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #allocateSmallNewSpaceSlots:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #allocateSmallNewSpaceSlots:format:classIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAllocationUnitStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #allocationUnit.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #allocationUnit.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAmbiguousClassallInstancesIntolimitresultsIntoStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #ambiguousClass:allInstancesInto:limit:resultsInto:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #ambiguousClass:allInstancesInto:limit:resultsInto:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAreIntegersandStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #areIntegers:and:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #areIntegers:and:.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testArrayClassIndexPunStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #arrayClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #arrayClassIndexPun.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testArrayFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #arrayFormat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #arrayFormat.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAssertFreeChunkPrevHeadZeroStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #assertFreeChunkPrevHeadZero.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #assertFreeChunkPrevHeadZero.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAssertInnerValidFreeObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #assertInnerValidFreeObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #assertInnerValidFreeObject:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAssertValidFreeObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #assertValidFreeObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #assertValidFreeObject:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAssignClassIndicesAndPinFromtooutPointersfillingStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #assignClassIndicesAndPinFrom:to:outPointers:filling:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #assignClassIndicesAndPinFrom:to:outPointers:filling:.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAssimilateNewSegmentStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #assimilateNewSegment:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #assimilateNewSegment:.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAtLeastClassIndexHalfHeaderStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #atLeastClassIndexHalfHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #atLeastClassIndexHalfHeader:.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAttemptToShrinkStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #attemptToShrink.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #attemptToShrink.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testAverageObjectSizeInBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #averageObjectSizeInBytes.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #averageObjectSizeInBytes.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBaseAddressOfImageStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #baseAddressOfImage.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #baseAddressOfImage.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBaseHeaderSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #baseHeaderSize.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #baseHeaderSize.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBaseHeaderStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #baseHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #baseHeader:.
	self assert: illiString equals: slangString
]

{ #category : #'store check-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBeRootIfOldStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #beRootIfOld:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #beRootIfOld:.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBecomeEffectFlagsForStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #becomeEffectFlagsFor:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #becomeEffectFlagsFor:.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBecomewithStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #become:with:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #become:with:.
	self assert: illiString equals: slangString
]

{ #category : #'become api-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBecomewithtwoWaycopyHashStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #become:with:twoWay:copyHash:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #become:with:twoWay:copyHash:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBeginSlidingCompactionStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #beginSlidingCompaction.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #beginSlidingCompaction.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBitsSetInFreeSpaceMaskForAllFreeListsStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #bitsSetInFreeSpaceMaskForAllFreeLists.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #bitsSetInFreeSpaceMaskForAllFreeLists.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBooleanObjectOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #booleanObjectOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #booleanObjectOf:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBootstrappingStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #bootstrapping.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #bootstrapping.
	self assert: illiString equals: slangString
]

{ #category : #'segments-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBridgeSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #bridgeSize.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #bridgeSize.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testByteFormatForNumBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #byteFormatForNumBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #byteFormatForNumBytes:.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testByteFormatMaskStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #byteFormatMask.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #byteFormatMask.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testByteSizeOfInstanceOferrIntoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #byteSizeOfInstanceOf:errInto:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #byteSizeOfInstanceOf:errInto:.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testByteSizeOfInstanceOfwithIndexableSlotserrIntoStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #byteSizeOfInstanceOf:withIndexableSlots:errInto:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #byteSizeOfInstanceOf:withIndexableSlots:errInto:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testByteSizeOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #byteSizeOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #byteSizeOf:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testByteSwappedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #byteSwapped:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #byteSwapped:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBytesInObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #bytesInObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #bytesInObject:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBytesInObjectgivenStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #bytesInObject:given:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #bytesInObject:given:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBytesLeftInOldSpaceStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #bytesLeftInOldSpace.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #bytesLeftInOldSpace.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBytesLeftStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #bytesLeft:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #bytesLeft:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testBytesPerOopStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #bytesPerOop.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #bytesPerOop.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCapacityOfObjStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #capacityOfObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #capacityOfObjStack:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testChangeClassOftoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #changeClassOf:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #changeClassOf:to:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCharacterObjectOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #characterObjectOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #characterObjectOf:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCharacterTableStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #characterTable.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #characterTable.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCharacterTagStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #characterTag.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #characterTag.
	self assert: illiString equals: slangString
]

{ #category : #'immediates-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCharacterValueOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #characterValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #characterValueOf:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheapAddressCouldBeInHeapStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #cheapAddressCouldBeInHeap:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #cheapAddressCouldBeInHeap:.
	self assert: illiString equals: slangString
]

{ #category : #'initialization-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckCompactIndexisClassnamedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #checkCompactIndex:isClass:named:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #checkCompactIndex:isClass:named:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckForAvailableSlotsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #checkForAvailableSlots:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #checkForAvailableSlots:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckForLeaksStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #checkForLeaks.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #checkForLeaks.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckFreeSpaceStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #checkFreeSpace:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #checkFreeSpace:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckHeapFreeSpaceIntegrityStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #checkHeapFreeSpaceIntegrity.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #checkHeapFreeSpaceIntegrity.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckHeapIntegrityclassIndicesShouldBeValidStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #checkHeapIntegrity:classIndicesShouldBeValid:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #checkHeapIntegrity:classIndicesShouldBeValid:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckMemoryMapStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #checkMemoryMap.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #checkMemoryMap.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckOkayOopStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #checkOkayOop:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #checkOkayOop:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckOkayYoungReferrerStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #checkOkayYoungReferrer:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #checkOkayYoungReferrer:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckOopHasOkayClassStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #checkOopHasOkayClass:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #checkOopHasOkayClass:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckOopIntegritynamedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #checkOopIntegrity:named:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #checkOopIntegrity:named:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckOopIntegritynamedindexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #checkOopIntegrity:named:index:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #checkOopIntegrity:named:index:.
	self assert: illiString equals: slangString
]

{ #category : #'memory access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCheckedLongAtStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #checkedLongAt:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #checkedLongAt:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassAlienStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classAlien.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classAlien.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassArrayStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classArray.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classArray.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassAtIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classAtIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classAtIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassAtIndexputStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classAtIndex:put:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classAtIndex:put:.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassBitmapStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classBitmap.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classBitmap.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassByteArrayStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classByteArray.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classByteArray.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassCharacterStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classCharacter.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classCharacter.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassExternalAddressStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classExternalAddress.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classExternalAddress.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassExternalDataStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classExternalData.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classExternalData.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassExternalFunctionStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classExternalFunction.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classExternalFunction.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassExternalLibraryStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classExternalLibrary.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classExternalLibrary.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassExternalStructureStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classExternalStructure.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classExternalStructure.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassFloatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classFloat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classFloat.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassForClassTagStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classForClassTag:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classForClassTag:.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassFormatForInstanceFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classFormatForInstanceFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classFormatForInstanceFormat:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassFormatFromInstFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classFormatFromInstFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classFormatFromInstFormat:.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassIndexFieldWidthStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classIndexFieldWidth.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classIndexFieldWidth.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassIndexMaskStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classIndexMask.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classIndexMask.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassIndexOfHeaderStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classIndexOfHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classIndexOfHeader:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassIndexOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classIndexOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classIndexOf:.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassIsItselfClassIndexPunStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classIsItselfClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classIsItselfClassIndexPun.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassLargeNegativeIntegerStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classLargeNegativeInteger.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classLargeNegativeInteger.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassLargePositiveIntegerStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classLargePositiveInteger.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classLargePositiveInteger.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassMutexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classMutex.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classMutex.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassOrNilAtIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classOrNilAtIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classOrNilAtIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassPointStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classPoint.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classPoint.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassSemaphoreStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classSemaphore.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classSemaphore.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassSmallIntegerStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classSmallInteger.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classSmallInteger.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassStringStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classString.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classString.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTableEntriesDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classTableEntriesDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classTableEntriesDo:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTableFirstPageStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classTableFirstPage.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classTableFirstPage.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTableIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classTableIndex.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classTableIndex.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTableMajorIndexShiftStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classTableMajorIndexShift.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classTableMajorIndexShift.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTableMinorIndexMaskStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classTableMinorIndexMask.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classTableMinorIndexMask.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTablePageSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classTablePageSize.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classTablePageSize.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTableRootObjStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classTableRootObj.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classTableRootObj.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTableRootSlotsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classTableRootSlots.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classTableRootSlots.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTagForClassStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classTagForClass:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classTagForClass:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassTagForSpecialObjectsIndexcompactClassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #classTagForSpecialObjectsIndex:compactClassIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #classTagForSpecialObjectsIndex:compactClassIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClassUnsafeAlienStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #classUnsafeAlien.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #classUnsafeAlien.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClearLeakMapAndMapAccessibleFreeSpaceStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #clearLeakMapAndMapAccessibleFreeSpace.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #clearLeakMapAndMapAccessibleFreeSpace.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testClearLeakMapAndMapAccessibleObjectsStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #clearLeakMapAndMapAccessibleObjects.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #clearLeakMapAndMapAccessibleObjects.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCleverSwapHeadersandcopyHashFlagStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #cleverSwapHeaders:and:copyHashFlag:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #cleverSwapHeaders:and:copyHashFlag:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCloneInOldSpaceforPinningStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #cloneInOldSpace:forPinning:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #cloneInOldSpace:forPinning:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCloneStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #clone:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #clone:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCoalesceandStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #coalesce:and:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #coalesce:and:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCoallesceFreeChunkStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #coallesceFreeChunk:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #coallesceFreeChunk:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCompactClassIndexOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #compactClassIndexOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #compactClassIndexOf:.
	self assert: illiString equals: slangString
]

{ #category : #'class membership-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCompactIndexOfClassStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #compactIndexOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #compactIndexOfClass:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCompactorStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #compactor.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #compactor.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCompiledMethodFormatForNumBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #compiledMethodFormatForNumBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #compiledMethodFormatForNumBytes:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testComputeFreeSpacePostSwizzleStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #computeFreeSpacePostSwizzle.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #computeFreeSpacePostSwizzle.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testContainsOnlyValidBecomeObjectsandtwoWaycopyHashStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #containsOnlyValidBecomeObjects:and:twoWay:copyHash:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #containsOnlyValidBecomeObjects:and:twoWay:copyHash:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCopyObjtoAddrstopAtsavedFirstFieldsindexStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #copyObj:toAddr:stopAt:savedFirstFields:index:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #copyObj:toAddr:stopAt:savedFirstFields:index:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCountMarkedAndUnmarkdObjectsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #countMarkedAndUnmarkdObjects:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #countMarkedAndUnmarkdObjects:.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCountNumClassPagesPreSwizzleStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #countNumClassPagesPreSwizzle:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #countNumClassPagesPreSwizzle:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation accounting-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testCurrentAllocatedBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #currentAllocatedBytes.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #currentAllocatedBytes.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testDbgFloatValueOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #dbgFloatValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #dbgFloatValueOf:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testDefaultEdenBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #defaultEdenBytes.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #defaultEdenBytes.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testDequeueMournerStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #dequeueMourner.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #dequeueMourner.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testDetachFreeObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #detachFreeObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #detachFreeObject:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testDisplayObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #displayObject.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #displayObject.
	self assert: illiString equals: slangString
]

{ #category : #'allocation accounting-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testDoAllocationAccountingForScavengeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #doAllocationAccountingForScavenge.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #doAllocationAccountingForScavenge.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testDoBecomeandcopyHashStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #doBecome:and:copyHash:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #doBecome:and:copyHash:.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testDoBecometocopyHashStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #doBecome:to:copyHash:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #doBecome:to:copyHash:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testDoScavengeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #doScavenge:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #doScavenge:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEdenBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #edenBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #edenBytes:.
	self assert: illiString equals: slangString
]

{ #category : #'instantiation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEeInstantiateClassIndexformatnumSlotsStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #eeInstantiateClassIndex:format:numSlots:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #eeInstantiateClassIndex:format:numSlots:.
	self assert: illiString equals: slangString
]

{ #category : #'instantiation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEeInstantiateMethodContextSlotsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #eeInstantiateMethodContextSlots:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #eeInstantiateMethodContextSlots:.
	self assert: illiString equals: slangString
]

{ #category : #'instantiation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEeInstantiateSmallClassIndexformatnumSlotsStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #eeInstantiateSmallClassIndex:format:numSlots:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #eeInstantiateSmallClassIndex:format:numSlots:.
	self assert: illiString equals: slangString
]

{ #category : #'instantiation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEeInstantiateSmallClassnumSlotsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #eeInstantiateSmallClass:numSlots:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #eeInstantiateSmallClass:numSlots:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEekStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #eek.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #eek.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEmptyObjStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #emptyObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #emptyObjStack:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEndOfMemoryStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #endOfMemory.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #endOfMemory.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEndSlidingCompactionStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #endSlidingCompaction.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #endSlidingCompaction.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEnsureBehaviorHashStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #ensureBehaviorHash:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #ensureBehaviorHash:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEnsureHasOverflowHeaderforwardIfClonedStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #ensureHasOverflowHeader:forwardIfCloned:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #ensureHasOverflowHeader:forwardIfCloned:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEnsureNoNewObjectsInStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #ensureNoNewObjectsIn:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #ensureNoNewObjectsIn:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEnsureRoomOnObjStackAtStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #ensureRoomOnObjStackAt:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #ensureRoomOnObjStackAt:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEnsureSemaphoreUnforwardedThroughContextStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #ensureSemaphoreUnforwardedThroughContext:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #ensureSemaphoreUnforwardedThroughContext:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEnterClassesIntoClassTableFromtoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #enterClassesIntoClassTableFrom:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #enterClassesIntoClassTableFrom:to:.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEnterIntoClassTableStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #enterIntoClassTable:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #enterIntoClassTable:.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testEphemeronFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #ephemeronFormat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #ephemeronFormat.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testExistInstancesInNewSpaceOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #existInstancesInNewSpaceOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #existInstancesInNewSpaceOf:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testExponentOfSmallFloatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #exponentOfSmallFloat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #exponentOfSmallFloat:.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testExpungeDuplicateAndUnmarkedClassesStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #expungeDuplicateAndUnmarkedClasses:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #expungeDuplicateAndUnmarkedClasses:.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testExpungeFromClassTableStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #expungeFromClassTable:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #expungeFromClassTable:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFalseObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #falseObject.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #falseObject.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchByteofObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fetchByte:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fetchByte:ofObject:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchClassOfNonImmStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fetchClassOfNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fetchClassOfNonImm:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchClassOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fetchClassOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fetchClassOf:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchClassTagOfNonImmStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fetchClassTagOfNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fetchClassTagOfNonImm:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchClassTagOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fetchClassTagOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fetchClassTagOf:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchLongofFloatObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fetchLong32:ofFloatObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fetchLong32:ofFloatObject:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchLongofObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fetchLong32:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fetchLong32:ofObject:.
	self assert: illiString equals: slangString
]

{ #category : #'heap management-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchPointerofFreeChunkStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fetchPointer:ofFreeChunk:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fetchPointer:ofFreeChunk:.
	self assert: illiString equals: slangString
]

{ #category : #'heap management-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchPointerofMaybeForwardedObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #fetchPointer:ofMaybeForwardedObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #fetchPointer:ofMaybeForwardedObject:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchPointerofObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fetchPointer:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fetchPointer:ofObject:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchShortofObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fetchShort16:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fetchShort16:ofObject:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFetchUnsignedShortofObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fetchUnsignedShort16:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fetchUnsignedShort16:ofObject:.
	self assert: illiString equals: slangString
]

{ #category : #'instantiation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFillObjnumSlotswithStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fillObj:numSlots:with:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fillObj:numSlots:with:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFindLargestFreeChunkStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #findLargestFreeChunk.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #findLargestFreeChunk.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFindStringBeginningWithStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #findStringBeginningWith:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #findStringBeginningWith:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFindStringStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #findString:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #findString:.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFireAllUnscannedEphemeronsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fireAllUnscannedEphemerons.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fireAllUnscannedEphemerons.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstAccessibleObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #firstAccessibleObject.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #firstAccessibleObject.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstByteFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #firstByteFormat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #firstByteFormat.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstClassIndexPunStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #firstClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #firstClassIndexPun.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstCompiledMethodFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #firstCompiledMethodFormat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #firstCompiledMethodFormat.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstFixedFieldOfMaybeImmediateStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #firstFixedFieldOfMaybeImmediate:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #firstFixedFieldOfMaybeImmediate:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstFixedFieldStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #firstFixedField:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #firstFixedField:.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstIndexableFieldStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #firstIndexableField:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #firstIndexableField:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstLilliputianChunkStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #firstLilliputianChunk.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #firstLilliputianChunk.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstLongFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #firstLongFormat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #firstLongFormat.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #firstObject.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #firstObject.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstShortFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #firstShortFormat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #firstShortFormat.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstStringyFakeFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #firstStringyFakeFormat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #firstStringyFakeFormat.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFirstValidIndexOfIndexableObjectwithFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #firstValidIndexOfIndexableObject:withFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #firstValidIndexOfIndexableObject:withFormat:.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFixFollowedFieldofObjectwithInitialValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #fixFollowedField:ofObject:withInitialValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #fixFollowedField:ofObject:withInitialValue:.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFixedFieldsFieldWidthStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fixedFieldsFieldWidth.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fixedFieldsFieldWidth.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFixedFieldsOfClassFormatMaskStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fixedFieldsOfClassFormatMask.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fixedFieldsOfClassFormatMask.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFixedFieldsOfClassFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fixedFieldsOfClassFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fixedFieldsOfClassFormat:.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFixedFieldsOfClassStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fixedFieldsOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fixedFieldsOfClass:.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFixedFieldsOfformatlengthStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fixedFieldsOf:format:length:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fixedFieldsOf:format:length:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFloatObjectOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #floatObjectOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #floatObjectOf:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFloatValueOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #floatValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #floatValueOf:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFlushEdenStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #flushEden.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #flushEden.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFlushNewSpaceInstancesOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #flushNewSpaceInstancesOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #flushNewSpaceInstancesOf:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFlushNewSpaceStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #flushNewSpace.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #flushNewSpace.
	self assert: illiString equals: slangString
]

{ #category : #'selective compaction-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowClassTableStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #followClassTable.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #followClassTable.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowFieldofObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #followField:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #followField:ofObject:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowForwardedInObjStackatIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #followForwardedInObjStack:atIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #followForwardedInObjStack:atIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowForwardedObjStacksStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #followForwardedObjStacks.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #followForwardedObjStacks.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowForwardedObjectFieldstoDepthStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #followForwardedObjectFields:toDepth:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #followForwardedObjectFields:toDepth:.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowForwardedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #followForwarded:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #followForwarded:.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowMaybeForwardedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #followMaybeForwarded:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #followMaybeForwarded:.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowObjFieldofObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #followObjField:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #followObjField:ofObject:.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowOopFieldofObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #followOopField:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #followOopField:ofObject:.
	self assert: illiString equals: slangString
]

{ #category : #'selective compaction-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowProcessListStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #followProcessList.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #followProcessList.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowSpecialObjectsOopStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #followSpecialObjectsOop.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #followSpecialObjectsOop.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowedKeyOfEphemeronStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #followedKeyOfEphemeron:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #followedKeyOfEphemeron:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFollowedKeyOfMaybeFiredEphemeronStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #followedKeyOfMaybeFiredEphemeron:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #followedKeyOfMaybeFiredEphemeron:.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFormatFieldWidthShiftStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #formatFieldWidthShift.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #formatFieldWidthShift.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFormatMaskStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #formatMask.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #formatMask.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFormatOfClassStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #formatOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #formatOfClass:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFormatOfHeaderStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #formatOfHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #formatOfHeader:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFormatOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #formatOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #formatOf:.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFormatShiftStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #formatShift.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #formatShift.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testForwardSurvivortoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #forwardSurvivor:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #forwardSurvivor:to:.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testForwardUncheckedtoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #forwardUnchecked:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #forwardUnchecked:to:.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testForwardedFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #forwardedFormat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #forwardedFormat.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testForwardersInStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #forwardersIn:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #forwardersIn:.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testForwardtoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #forward:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #forward:to:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeChunkLargerIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #freeChunkLargerIndex.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #freeChunkLargerIndex.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeChunkNextIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #freeChunkNextIndex.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #freeChunkNextIndex.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeChunkParentIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #freeChunkParentIndex.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #freeChunkParentIndex.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeChunkPrevIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #freeChunkPrevIndex.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #freeChunkPrevIndex.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeChunkSmallerIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #freeChunkSmallerIndex.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #freeChunkSmallerIndex.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeChunkWithBytesatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #freeChunkWithBytes:at:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #freeChunkWithBytes:at:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeListHeadsEmptyStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #freeListHeadsEmpty.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #freeListHeadsEmpty.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeListsObjStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #freeListsObj.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #freeListsObj.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeListsObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #freeListsObject.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #freeListsObject.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #freeObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #freeObject:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeOldSpaceStartStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #freeOldSpaceStart.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #freeOldSpaceStart.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #freeSize.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #freeSize.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeStartStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #freeStart.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #freeStart.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFreeTreeNodesDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #freeTreeNodesDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #freeTreeNodesDo:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFullGCLockStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fullGCLock.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fullGCLock.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testFullGCStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #fullGC.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #fullGC.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testGarbageCollectForSnapshotStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #garbageCollectForSnapshot.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #garbageCollectForSnapshot.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testGcStartUsecsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #gcStartUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #gcStartUsecs.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testGetHeapGrowthToSizeGCRatioStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #getHeapGrowthToSizeGCRatio.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #getHeapGrowthToSizeGCRatio.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testGlobalGarbageCollectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #globalGarbageCollect.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #globalGarbageCollect.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testGoodContextSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #goodContextSize:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #goodContextSize:.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testGreyBitShiftStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #greyBitShift.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #greyBitShift.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testGrowHeadroomStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #growHeadroom:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #growHeadroom:.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testGrowOldSpaceByAtLeastStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #growOldSpaceByAtLeast:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #growOldSpaceByAtLeast:.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testGrowToAccomodateContainerWithNumSlotsStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #growToAccomodateContainerWithNumSlots:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #growToAccomodateContainerWithNumSlots:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHasIdentityHashStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #hasIdentityHash:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #hasIdentityHash:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHasOverflowHeaderStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #hasOverflowHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #hasOverflowHeader:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHasPointerFieldsNonImmStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #hasPointerFieldsNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #hasPointerFieldsNonImm:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHasPointerFieldsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #hasPointerFields:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #hasPointerFields:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHasSixtyFourBitImmediatesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #hasSixtyFourBitImmediates.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #hasSixtyFourBitImmediates.
	self assert: illiString equals: slangString
]

{ #category : #'api characterization-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHasSpurMemoryManagerAPIStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #hasSpurMemoryManagerAPI.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #hasSpurMemoryManagerAPI.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHasYoungReferentsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #hasYoungReferents:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #hasYoungReferents:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHashBitsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #hashBitsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #hashBitsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHeaderForSlotsformatclassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #headerForSlots:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #headerForSlots:format:classIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHeaderForSlotshashformatclassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #headerForSlots:hash:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #headerForSlots:hash:format:classIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'method access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHeaderIndicatesAlternateBytecodeSetStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #headerIndicatesAlternateBytecodeSet:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #headerIndicatesAlternateBytecodeSet:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHeapMapStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #heapMap.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #heapMap.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHiddenRootSlotsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #hiddenRootSlots.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #hiddenRootSlots.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testHiddenRootsObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #hiddenRootsObject.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #hiddenRootsObject.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIdentityHashFieldWidthStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #identityHashFieldWidth.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #identityHashFieldWidth.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIdentityHashFullWordMaskStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #identityHashFullWordMask.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #identityHashFullWordMask.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIdentityHashFullWordShiftStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #identityHashFullWordShift.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #identityHashFullWordShift.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIdentityHashHalfWordMaskStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #identityHashHalfWordMask.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #identityHashHalfWordMask.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIfAProxyupdateCopyStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #ifAProxy:updateCopy:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #ifAProxy:updateCopy:.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIfOopInvalidForBecomeerrorCodeIntoStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #ifOopInvalidForBecome:errorCodeInto:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #ifOopInvalidForBecome:errorCodeInto:.
	self assert: illiString equals: slangString
]

{ #category : #'immediates-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testImageFormatVersionStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #imageFormatVersion.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #imageFormatVersion.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testImageSegmentVersionStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #imageSegmentVersion.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #imageSegmentVersion.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testImageSizeToWriteStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #imageSizeToWrite.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #imageSizeToWrite.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testImmutableBitMaskStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #immutableBitMask.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #immutableBitMask.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testImmutableBitShiftStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #immutableBitShift.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #immutableBitShift.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInFreeTreeReplacewithStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #inFreeTreeReplace:with:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #inFreeTreeReplace:with:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInLineRunLeakCheckerForexcludeUnmarkedObjsclassIndicesShouldBeValidStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #inLineRunLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #inLineRunLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInOrderPrintFreeTreeprintListStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #inOrderPrintFreeTree:printList:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #inOrderPrintFreeTree:printList:.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInPlaceBecomeandcopyHashFlagStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #inPlaceBecome:and:copyHashFlag:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #inPlaceBecome:and:copyHashFlag:.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInactiveOrFailedToDeferScanStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #inactiveOrFailedToDeferScan:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #inactiveOrFailedToDeferScan:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIncreaseFreeOldSpaceByStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #increaseFreeOldSpaceBy:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #increaseFreeOldSpaceBy:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIncrementalGCStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #incrementalGC.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #incrementalGC.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIndexOfinStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #indexOf:in:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #indexOf:in:.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIndexablePointersFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #indexablePointersFormat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #indexablePointersFormat.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitFreeChunkWithBytesatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #initFreeChunkWithBytes:at:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #initFreeChunkWithBytes:at:.
	self assert: illiString equals: slangString
]

{ #category : #'segments-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitSegmentBridgeWithBytesatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #initSegmentBridgeWithBytes:at:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #initSegmentBridgeWithBytes:at:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitSpaceForAllocationChecklimitStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #initSpaceForAllocationCheck:limit:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #initSpaceForAllocationCheck:limit:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitialHeadroomgivenFreeOldSpaceInImageStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #initialHeadroom:givenFreeOldSpaceInImage:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #initialHeadroom:givenFreeOldSpaceInImage:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitialInstanceOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #initialInstanceOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #initialInstanceOf:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitializeFreeSpacePostLoadStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #initializeFreeSpacePostLoad:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #initializeFreeSpacePostLoad:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitializeMarkStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #initializeMarkStack.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #initializeMarkStack.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitializeNewSpaceVariablesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #initializeNewSpaceVariables.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #initializeNewSpaceVariables.
	self assert: illiString equals: slangString
]

{ #category : #'initialization-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitializeObjectMemoryStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #initializeObjectMemory:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #initializeObjectMemory:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitializeOldSpaceFirstFreeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #initializeOldSpaceFirstFree:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #initializeOldSpaceFirstFree:.
	self assert: illiString equals: slangString
]

{ #category : #'spur bootstrap-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitializePostBootstrapStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #initializePostBootstrap.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #initializePostBootstrap.
	self assert: illiString equals: slangString
]

{ #category : #'initialization-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitializeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #initialize.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #initialize.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitializeUnscannedEphemeronsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #initializeUnscannedEphemerons.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #initializeUnscannedEphemerons.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInitializeWeaklingStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #initializeWeaklingStack.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #initializeWeaklingStack.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInnerBecomeObjectsInandcopyHashStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #innerBecomeObjectsIn:and:copyHash:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #innerBecomeObjectsIn:and:copyHash:.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInnerBecomeObjectsIntocopyHashStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #innerBecomeObjectsIn:to:copyHash:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #innerBecomeObjectsIn:to:copyHash:.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInstSpecForImmediateClassesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #instSpecForImmediateClasses.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #instSpecForImmediateClasses.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInstSpecOfClassFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #instSpecOfClassFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #instSpecOfClassFormat:.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInstSpecOfClassStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #instSpecOfClass:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #instSpecOfClass:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInstanceAfterStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #instanceAfter:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #instanceAfter:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInstanceSizeOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #instanceSizeOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #instanceSizeOf:.
	self assert: illiString equals: slangString
]

{ #category : #'instantiation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInstantiateClassStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #instantiateClass:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #instantiateClass:.
	self assert: illiString equals: slangString
]

{ #category : #'instantiation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInstantiateClassindexableSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #instantiateClass:indexableSize:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #instantiateClass:indexableSize:.
	self assert: illiString equals: slangString
]

{ #category : #'instantiation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testInstantiateCompiledMethodClassindexableSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #instantiateCompiledMethodClass:indexableSize:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #instantiateCompiledMethodClass:indexableSize:.
	self assert: illiString equals: slangString
]

{ #category : #'immediates-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIntegerObjectOfCharacterObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #integerObjectOfCharacterObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #integerObjectOfCharacterObject:.
	self assert: illiString equals: slangString
]

{ #category : #'immediates-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIntegerObjectOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #integerObjectOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #integerObjectOf:.
	self assert: illiString equals: slangString
]

{ #category : #'immediates-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #integerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #integerValueOf:.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsAnyPointerFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isAnyPointerFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isAnyPointerFormat:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsArrayNonImmStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isArrayNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isArrayNonImm:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsArrayStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isArray:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isArray:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsBytesNonImmStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isBytesNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isBytesNonImm:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isBytes:.
	self assert: illiString equals: slangString
]

{ #category : #'immediates-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsCharacterObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isCharacterObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isCharacterObject:.
	self assert: illiString equals: slangString
]

{ #category : #'immediates-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsCharacterValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isCharacterValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isCharacterValue:.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsClassAtUniqueIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isClassAtUniqueIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isClassAtUniqueIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsClassOfNonImmequalToStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isClassOfNonImm:equalTo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isClassOfNonImm:equalTo:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsClassOfNonImmequalTocompactClassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #isClassOfNonImm:equalTo:compactClassIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #isClassOfNonImm:equalTo:compactClassIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsCompactInstanceStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isCompactInstance:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isCompactInstance:.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsCompiledMethodFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isCompiledMethodFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isCompiledMethodFormat:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsCompiledMethodHeaderStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isCompiledMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isCompiledMethodHeader:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsCompiledMethodStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isCompiledMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isCompiledMethod:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsContextHeaderStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isContextHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isContextHeader:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsContextNonImmStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isContextNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isContextNonImm:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsContextStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isContext:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isContext:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsCopiedIntoSegmentStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isCopiedIntoSegment:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isCopiedIntoSegment:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsEmptyObjStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isEmptyObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isEmptyObjStack:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsEnumerableObjectNoAssertStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isEnumerableObjectNoAssert:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isEnumerableObjectNoAssert:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsEnumerableObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isEnumerableObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isEnumerableObject:.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsEphemeronFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isEphemeronFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isEphemeronFormat:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsEphemeronStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isEphemeron:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isEphemeron:.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsFixedSizePointerFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isFixedSizePointerFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isFixedSizePointerFormat:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsFloatInstanceStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isFloatInstance:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isFloatInstance:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsFloatOrIntStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isFloatOrInt:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isFloatOrInt:.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsForwardedClassTagStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isForwardedClassTag:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isForwardedClassTag:.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsForwardedObjectClassIndexPunStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isForwardedObjectClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isForwardedObjectClassIndexPun.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsForwardedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isForwarded:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isForwarded:.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsFreeObjectClassIndexPunStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isFreeObjectClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isFreeObjectClassIndexPun.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsFreeObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isFreeObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isFreeObject:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsFreeOopStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isFreeOop:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isFreeOop:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsGreyStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isGrey:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isGrey:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsHiddenObjStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isHiddenObj:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isHiddenObj:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsImmediateCharacterStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isImmediateCharacter:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isImmediateCharacter:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsImmediateFloatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isImmediateFloat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isImmediateFloat:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsImmediateStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isImmediate:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isImmediate:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsImmutableStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isImmutable:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isImmutable:.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInClassTableStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isInClassTable:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isInClassTable:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInEdenStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isInEden:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isInEden:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInFutureSpaceStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isInFutureSpace:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isInFutureSpace:.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInMemoryStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isInMemory:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isInMemory:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInNewSpaceStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isInNewSpace:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isInNewSpace:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInOldSpaceStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isInOldSpace:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isInOldSpace:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInPastSpaceStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isInPastSpace:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isInPastSpace:.
	self assert: illiString equals: slangString
]

{ #category : #'immediates-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInRangeCharacterCodeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isInRangeCharacterCode:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isInRangeCharacterCode:.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsIndexableFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isIndexableFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isIndexableFormat:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsIndexableStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isIndexable:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isIndexable:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInstanceOfClassLargeNegativeIntegerStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #isInstanceOfClassLargeNegativeInteger:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #isInstanceOfClassLargeNegativeInteger:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsInstanceOfClassLargePositiveIntegerStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #isInstanceOfClassLargePositiveInteger:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #isInstanceOfClassLargePositiveInteger:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsIntegerObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isIntegerObject:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsIntegerValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isIntegerValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isIntegerValue:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsLargeFreeObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isLargeFreeObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isLargeFreeObject:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsLargeIntegerInstanceStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isLargeIntegerInstance:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isLargeIntegerInstance:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsLilliputianSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isLilliputianSize:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isLilliputianSize:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsLongsNonImmStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isLong64sNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isLong64sNonImm:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsLongsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isLong64s:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isLong64s:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsMarkedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isMarked:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isMarked:.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsMaybeFiredEphemeronFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isMaybeFiredEphemeronFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isMaybeFiredEphemeronFormat:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsMaybeFiredEphemeronStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isMaybeFiredEphemeron:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isMaybeFiredEphemeron:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsMobileObjectHeaderStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isMobileObjectHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isMobileObjectHeader:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsMobileObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isMobileObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isMobileObject:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsNegativeSmallFloatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isNegativeSmallFloat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isNegativeSmallFloat:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsNonImmediateStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isNonImmediate:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isNonImmediate:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsNonIntegerImmediateStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isNonIntegerImmediate:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isNonIntegerImmediate:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsNonIntegerNonImmediateStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isNonIntegerNonImmediate:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isNonIntegerNonImmediate:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsNonIntegerObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isNonIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isNonIntegerObject:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsNormalObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isNormalObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isNormalObject:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsObjEphemeronStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isObjEphemeron:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isObjEphemeron:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsObjImmutableStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isObjImmutable:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isObjImmutable:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsOldObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isOldObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isOldObject:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsOopCompiledMethodStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isOopCompiledMethod:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isOopCompiledMethod:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsOopForwardedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isOopForwarded:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isOopForwarded:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsOopImmutableStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isOopImmutable:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isOopImmutable:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsOopMutableStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isOopMutable:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isOopMutable:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsPinnedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isPinned:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isPinned:.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsPointersFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isPointersFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isPointersFormat:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsPointersNonImmStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isPointersNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isPointersNonImm:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsPointersStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isPointers:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isPointers:.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsPureBitsFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isPureBitsFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isPureBitsFormat:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsPureBitsNonImmStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isPureBitsNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isPureBitsNonImm:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsReallyYoungObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isReallyYoungObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isReallyYoungObject:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsReallyYoungStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isReallyYoung:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isReallyYoung:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsRememberedObjectHeaderStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isRememberedObjectHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isRememberedObjectHeader:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsRememberedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isRemembered:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isRemembered:.
	self assert: illiString equals: slangString
]

{ #category : #'segments-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsSegmentBridgeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isSegmentBridge:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isSegmentBridge:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsSemaphoreObjStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isSemaphoreObj:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isSemaphoreObj:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsSemaphoreOopStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isSemaphoreOop:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isSemaphoreOop:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsShortsNonImmStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isShortsNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isShortsNonImm:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsShortsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isShorts:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isShorts:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsSmallFloatValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isSmallFloatValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isSmallFloatValue:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsSmallFloatZeroStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isSmallFloatZero:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isSmallFloatZero:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsUnambiguouslyForwarderStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isUnambiguouslyForwarder:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isUnambiguouslyForwarder:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsUnmarkedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isUnmarked:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isUnmarked:.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsValidClassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isValidClassIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isValidClassIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsValidClassTagStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isValidClassTag:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isValidClassTag:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsValidObjStackAtStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isValidObjStackAt:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isValidObjStackAt:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsValidObjStackPagemyIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isValidObjStackPage:myIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isValidObjStackPage:myIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsValidObjStackPagemyIndexfirstPageStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #isValidObjStackPage:myIndex:firstPage:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #isValidObjStackPage:myIndex:firstPage:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsValidObjStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isValidObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isValidObjStack:.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsWeakFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isWeakFormat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isWeakFormat:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsWeakNonImmStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isWeakNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isWeakNonImm:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsWeakStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isWeak:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isWeak:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsWordsNonImmStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isWordsNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isWordsNonImm:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsWordsOrBytesNonImmStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isWordsOrBytesNonImm:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isWordsOrBytesNonImm:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsWordsOrBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isWordsOrBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isWordsOrBytes:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsWordsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isWords:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isWords:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsYoungObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isYoungObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isYoungObject:.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsYoungStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #isYoung:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #isYoung:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsinstanceOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #is:instanceOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #is:instanceOf:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsinstanceOfcompactClassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #is:instanceOf:compactClassIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #is:instanceOf:compactClassIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsonObjStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #is:onObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #is:onObjStack:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testIsoutPointerClassHashForinlimitStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #is:outPointerClassHashFor:in:limit:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #is:outPointerClassHashFor:in:limit:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testKeyOfEphemeronStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #keyOfEphemeron:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #keyOfEphemeron:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testKeyOfMaybeFiredEphemeronStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #keyOfMaybeFiredEphemeron:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #keyOfMaybeFiredEphemeron:.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testKnownClassAtIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #knownClassAtIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #knownClassAtIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLargeObjectBytesForSlotsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #largeObjectBytesForSlots:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #largeObjectBytesForSlots:.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLastClassIndexPunStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #lastClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #lastClassIndexPun.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLastHashStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #lastHash.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #lastHash.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLastPointerFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #lastPointerFormat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #lastPointerFormat.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLastPointerOfArrayStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #lastPointerOfArray:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #lastPointerOfArray:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLastPointerOfMethodHeaderStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #lastPointerOfMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #lastPointerOfMethodHeader:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLastPointerOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #lastPointerOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #lastPointerOf:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLastPointerOfWhileSwizzlingStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #lastPointerOfWhileSwizzling:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #lastPointerOfWhileSwizzling:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLeakCheckBecomeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #leakCheckBecome.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #leakCheckBecome.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLeakCheckFullGCStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #leakCheckFullGC.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #leakCheckFullGC.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLeakCheckImageSegmentsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #leakCheckImageSegments.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #leakCheckImageSegments.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLeakCheckIncrementalStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #leakCheckIncremental.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #leakCheckIncremental.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLeakCheckNewSpaceGCStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #leakCheckNewSpaceGC.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #leakCheckNewSpaceGC.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLengthOfMaybeImmediateStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #lengthOfMaybeImmediate:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #lengthOfMaybeImmediate:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLengthOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #lengthOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #lengthOf:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLengthOfbaseHeaderformatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #lengthOf:baseHeader:format:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #lengthOf:baseHeader:format:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLengthOfformatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #lengthOf:format:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #lengthOf:format:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLilliputianChunkIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #lilliputianChunkIndex.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #lilliputianChunkIndex.
	self assert: illiString equals: slangString
]

{ #category : #'method access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLiteralCountOfMethodHeaderStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #literalCountOfMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #literalCountOfMethodHeader:.
	self assert: illiString equals: slangString
]

{ #category : #'method access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLiteralCountOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #literalCountOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #literalCountOf:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLoadFloatOrIntFromStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #loadFloatOrIntFrom:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #loadFloatOrIntFrom:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLoadImageSegmentFromoutPointersStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #loadImageSegmentFrom:outPointers:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #loadImageSegmentFrom:outPointers:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLogBytesPerOopStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #logBytesPerOop.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #logBytesPerOop.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLongPrintInstancesOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #longPrintInstancesOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #longPrintInstancesOf:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLongPrintInstancesWithClassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #longPrintInstancesWithClassIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #longPrintInstancesWithClassIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLongPrintReferencesToStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #longPrintReferencesTo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #longPrintReferencesTo:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testLowSpaceThresholdStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #lowSpaceThreshold:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #lowSpaceThreshold:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMapExtraRootsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #mapExtraRoots.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #mapExtraRoots.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMapMournQueueStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #mapMournQueue.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #mapMournQueue.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMapOopsAndValidateClassRefsFromtooutPointersStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #mapOopsAndValidateClassRefsFrom:to:outPointers:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #mapOopsAndValidateClassRefsFrom:to:outPointers:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMapOopsFromtooutPointersoutHashesStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #mapOopsFrom:to:outPointers:outHashes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #mapOopsFrom:to:outPointers:outHashes:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMapSignedSmallFloatToSignedSmallFloatZeroStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #mapSignedSmallFloatToSignedSmallFloatZero:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #mapSignedSmallFloatToSignedSmallFloatZero:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkAccessibleObjectsAndFireEphemeronsStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #markAccessibleObjectsAndFireEphemerons.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #markAccessibleObjectsAndFireEphemerons.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkAllUnscannedEphemeronsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markAllUnscannedEphemerons.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markAllUnscannedEphemerons.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkAndShouldScanStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markAndShouldScan:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markAndShouldScan:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceClassOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markAndTraceClassOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markAndTraceClassOf:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceExtraRootsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markAndTraceExtraRoots.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markAndTraceExtraRoots.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceHiddenRootsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markAndTraceHiddenRoots.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markAndTraceHiddenRoots.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceObjStackandContentsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markAndTraceObjStack:andContents:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markAndTraceObjStack:andContents:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markAndTrace:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markAndTrace:.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceWeaklingsFromStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markAndTraceWeaklingsFrom:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markAndTraceWeaklingsFrom:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkAsCopiedIntoSegmentStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markAsCopiedIntoSegment:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markAsCopiedIntoSegment:.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkInactiveEphemeronsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markInactiveEphemerons.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markInactiveEphemerons.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkLoopFromStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markLoopFrom:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markLoopFrom:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkObjectsInStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markObjectsIn:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markObjectsIn:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkObjectsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markObjects:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markObjects:.
	self assert: illiString equals: slangString
]

{ #category : #'spur bootstrap-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markStack.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markStack.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #mark:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #mark:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkWeaklingsAndMarkAndFireEphemeronsStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #markWeaklingsAndMarkAndFireEphemerons.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #markWeaklingsAndMarkAndFireEphemerons.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkedBitFullShiftStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markedBitFullShift.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markedBitFullShift.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMarkedBitHalfShiftStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #markedBitHalfShift.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #markedBitHalfShift.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMaxCIntegerStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #maxCInteger.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #maxCInteger.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMaxIdentityHashStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #maxIdentityHash.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #maxIdentityHash.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMaxOldSpaceSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #maxOldSpaceSize.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #maxOldSpaceSize.
	self assert: illiString equals: slangString
]

{ #category : #'instantiation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMaxSlotsForAllocStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #maxSlotsForAlloc.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #maxSlotsForAlloc.
	self assert: illiString equals: slangString
]

{ #category : #'instantiation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMaxSlotsForNewSpaceAllocStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #maxSlotsForNewSpaceAlloc.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #maxSlotsForNewSpaceAlloc.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMaxSmallIntegerStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #maxSmallInteger.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #maxSmallInteger.
	self assert: illiString equals: slangString
]

{ #category : #'object testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMaybeMethodClassOfseemsToBeInstantiatingStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #maybeMethodClassOf:seemsToBeInstantiating:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #maybeMethodClassOf:seemsToBeInstantiating:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMaybeSplObjStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #maybeSplObj:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #maybeSplObj:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMemoryActiveProcessStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #memoryActiveProcess.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #memoryActiveProcess.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMemoryBaseForImageReadStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #memoryBaseForImageRead.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #memoryBaseForImageRead.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMemoryLimitStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #memoryLimit.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #memoryLimit.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMemorySchedulerPointerStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #memorySchedulerPointer.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #memorySchedulerPointer.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMemoryStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #memory:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #memory:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMethodCacheHashOfwithStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #methodCacheHashOf:with:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #methodCacheHashOf:with:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMethodDictionaryHashmaskStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #methodDictionaryHash:mask:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #methodDictionaryHash:mask:.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMethodHeaderFromSavedFirstFieldStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #methodHeaderFromSavedFirstField:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #methodHeaderFromSavedFirstField:.
	self assert: illiString equals: slangString
]

{ #category : #'memory access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMethodHeaderOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #methodHeaderOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #methodHeaderOf:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMinSlotsForShorteningStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #minSlotsForShortening.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #minSlotsForShortening.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMinSmallIntegerStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #minSmallInteger.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #minSmallInteger.
	self assert: illiString equals: slangString
]

{ #category : #'spur bootstrap-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMournQueueStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #mournQueue.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #mournQueue.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testMoveClassesForwardsInStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #moveClassesForwardsIn:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #moveClassesForwardsIn:.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNaiveSwapHeadersandcopyHashFlagStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #naiveSwapHeaders:and:copyHashFlag:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #naiveSwapHeaders:and:copyHashFlag:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNeedGCFlagStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #needGCFlag.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #needGCFlag.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNegativeSmallFloatZeroStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #negativeSmallFloatZero.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #negativeSmallFloatZero.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNewHashBitsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #newHashBitsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #newHashBitsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNewObjectHashStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #newObjectHash.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #newObjectHash.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNewOutPointeratinhashesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #newOutPointer:at:in:hashes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #newOutPointer:at:in:hashes:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNewSpaceBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #newSpaceBytes.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #newSpaceBytes.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNewSpaceIsEmptyStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #newSpaceIsEmpty.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #newSpaceIsEmpty.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNewSpaceLimitStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #newSpaceLimit.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #newSpaceLimit.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNewSpaceRefCountMaskStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #newSpaceRefCountMask.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #newSpaceRefCountMask.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNewSpaceSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #newSpaceSize.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #newSpaceSize.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNewSpaceStartStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #newSpaceStart.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #newSpaceStart.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNilFieldsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #nilFieldsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #nilFieldsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNilObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #nilObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #nilObject:.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNilUnmarkedWeaklingSlotsInStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #nilUnmarkedWeaklingSlotsIn:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #nilUnmarkedWeaklingSlotsIn:.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNilUnmarkedWeaklingSlotsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #nilUnmarkedWeaklingSlots.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #nilUnmarkedWeaklingSlots.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNoCheckClassAtIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #noCheckClassAtIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #noCheckClassAtIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNoCheckPushonObjStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #noCheckPush:onObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #noCheckPush:onObjStack:.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNoFixupFollowFieldofObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #noFixupFollowField:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #noFixupFollowField:ofObject:.
	self assert: illiString equals: slangString
]

{ #category : #'forwarding-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNoInlineFollowForwardedStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #noInlineFollowForwarded:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #noInlineFollowForwarded:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNoInlineObjectAfterlimitStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #noInlineObjectAfter:limit:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #noInlineObjectAfter:limit:.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNoUnscannedEphemeronsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #noUnscannedEphemerons.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #noUnscannedEphemerons.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNonIndexablePointerFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #nonIndexablePointerFormat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #nonIndexablePointerFormat.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumBitUnitsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #num16BitUnitsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #num16BitUnitsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumBytesOfBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numBytesOfBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numBytesOfBytes:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumBytesOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numBytesOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numBytesOf:.
	self assert: illiString equals: slangString
]

{ #category : #'object format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumFixedSlotsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numFixedSlotsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numFixedSlotsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumFreeListsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numFreeLists.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numFreeLists.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumPointerSlotsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numPointerSlotsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numPointerSlotsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSlotsForBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numSlotsForBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numSlotsForBytes:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSlotsForShorteningtoIndexableSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #numSlotsForShortening:toIndexableSize:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #numSlotsForShortening:toIndexableSize:.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSlotsFullShiftStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numSlotsFullShift.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numSlotsFullShift.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSlotsHalfShiftStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numSlotsHalfShift.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numSlotsHalfShift.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSlotsMaskStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numSlotsMask.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numSlotsMask.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSlotsOfAnyStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numSlotsOfAny:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numSlotsOfAny:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSlotsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numSlotsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numSlotsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSmallIntegerBitsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numSmallIntegerBits.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numSmallIntegerBits.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSmallIntegerTagBitsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numSmallIntegerTagBits.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numSmallIntegerTagBits.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumStrongSlotsOfInephemeralStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numStrongSlotsOfInephemeral:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numStrongSlotsOfInephemeral:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumStrongSlotsOfWeaklingStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numStrongSlotsOfWeakling:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numStrongSlotsOfWeakling:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumStrongSlotsOfformatephemeronInactiveIfStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #numStrongSlotsOf:format:ephemeronInactiveIf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #numStrongSlotsOf:format:ephemeronInactiveIf:.
	self assert: illiString equals: slangString
]

{ #category : #'scavenger-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumSurvivorSpacesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numSurvivorSpaces.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numSurvivorSpaces.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumTagBitsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numTagBits.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numTagBits.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testNumberOfForwardersStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #numberOfForwarders.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #numberOfForwarders.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObjStackdoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #objStack:do:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #objStack:do:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObjStackfromdoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #objStack:from:do:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #objStack:from:do:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObjectAfterStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #objectAfter:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #objectAfter:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObjectAfterlimitStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #objectAfter:limit:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #objectAfter:limit:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObjectBeforeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #objectBefore:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #objectBefore:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObjectBytesForSlotsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #objectBytesForSlots:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #objectBytesForSlots:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObjectStartingAtStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #objectStartingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #objectStartingAt:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObjectWithRawSlotsHasOverflowHeaderStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #objectWithRawSlotsHasOverflowHeader:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #objectWithRawSlotsHasOverflowHeader:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObjectsReachableFromRootsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #objectsReachableFromRoots:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #objectsReachableFromRoots:.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testObsoleteDontUseThisFetchWordofObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #obsoleteDontUseThisFetchWord:ofObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #obsoleteDontUseThisFetchWord:ofObject:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testOkayOopStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #okayOop:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #okayOop:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testOldRawNumSlotsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #oldRawNumSlotsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #oldRawNumSlotsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'cog jit support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testOldSmallFloatTagStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #oldSmallFloatTag.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #oldSmallFloatTag.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testOldSpaceObjectAfterStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #oldSpaceObjectAfter:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #oldSpaceObjectAfter:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testOldSpaceSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #oldSpaceSize.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #oldSpaceSize.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testOldSpaceStartStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #oldSpaceStart.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #oldSpaceStart.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testOutOfPlaceBecomeandcopyHashFlagStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #outOfPlaceBecome:and:copyHashFlag:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #outOfPlaceBecome:and:copyHashFlag:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPastSpaceStartStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #pastSpaceStart.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #pastSpaceStart.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPinObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #pinObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #pinObject:.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPinnedBitShiftStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #pinnedBitShift.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #pinnedBitShift.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPopObjStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #popObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #popObjStack:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPopRemappableOopStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #popRemappableOop.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #popRemappableOop.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPositiveSmallFloatZeroStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #positiveSmallFloatZero.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #positiveSmallFloatZero.
	self assert: illiString equals: slangString
]

{ #category : #'store check-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPossibleRootStoreIntoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #possibleRootStoreInto:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #possibleRootStoreInto:.
	self assert: illiString equals: slangString
]

{ #category : #'become implementation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPostBecomeScanClassTableStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #postBecomeScanClassTable:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #postBecomeScanClassTable:.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrepareObjStackForPlanningCompactorStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #prepareObjStackForPlanningCompactor:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #prepareObjStackForPlanningCompactor:.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrepareObjStacksForPlanningCompactorStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #prepareObjStacksForPlanningCompactor.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #prepareObjStacksForPlanningCompactor.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrimitiveErrorTableStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveErrorTable.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveErrorTable.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintActivationsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printActivationsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printActivationsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintBogonsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printBogons.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printBogons.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintContextReferencesToStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printContextReferencesTo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printContextReferencesTo:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintEntityStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printEntity:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printEntity:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintForwardersStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printForwarders.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printForwarders.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintFreeChunkStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printFreeChunk:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printFreeChunk:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintFreeChunkprintAsTreeNodeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printFreeChunk:printAsTreeNode:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printFreeChunk:printAsTreeNode:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintFreeChunksStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printFreeChunks.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printFreeChunks.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintFreeListHeadsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printFreeListHeads.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printFreeListHeads.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintFreeListStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printFreeList:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printFreeList:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintFreeTreeChunkStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printFreeTreeChunk:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printFreeTreeChunk:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintFreeTreeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printFreeTree.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printFreeTree.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintHeaderOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printHeaderOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printHeaderOf:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintHeaderTypeOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printHeaderTypeOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printHeaderTypeOf:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintInstancesOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printInstancesOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printInstancesOf:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintInstancesWithClassIndexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printInstancesWithClassIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printInstancesWithClassIndex:.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintInvalidClassTableEntriesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printInvalidClassTableEntries.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printInvalidClassTableEntries.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintInvalidClassTableHashesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printInvalidClassTableHashes.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printInvalidClassTableHashes.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintMarkedOopsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printMarkedOops.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printMarkedOops.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintMethodImplementorsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printMethodImplementorsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printMethodImplementorsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintMethodReferencesToStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printMethodReferencesTo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printMethodReferencesTo:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintObjStackPagemyIndexpageTypeStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #printObjStackPage:myIndex:pageType:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #printObjStackPage:myIndex:pageType:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintObjStackPagemyIndextagStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printObjStackPage:myIndex:tag:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printObjStackPage:myIndex:tag:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintObjStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printObjStack:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintObjectsFromtoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printObjectsFrom:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printObjectsFrom:to:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintObjectsWithHashStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printObjectsWithHash:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printObjectsWithHash:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintOopsExceptStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printOopsExcept:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printOopsExcept:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintOopsFromtoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printOopsFrom:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printOopsFrom:to:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintOopsSuchThatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printOopsSuchThat:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printOopsSuchThat:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintReferencesToStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printReferencesTo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printReferencesTo:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPrintUnmarkedOopsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #printUnmarkedOops.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #printUnmarkedOops.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPurgeDuplicateClassTableEntriesForStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #purgeDuplicateClassTableEntriesFor:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #purgeDuplicateClassTableEntriesFor:.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPushOnUnscannedEphemeronsStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #pushOnUnscannedEphemeronsStack:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #pushOnUnscannedEphemeronsStack:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPushRemappableOopStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #pushRemappableOop:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #pushRemappableOop:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testPushonObjStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #push:onObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #push:onObjStack:.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testQueueMournerStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #queueMourner:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #queueMourner:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRawClassTagForClassStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rawClassTagForClass:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rawClassTagForClass:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRawHashBitsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rawHashBitsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rawHashBitsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRawNumSlotsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rawNumSlotsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rawNumSlotsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRawNumSlotsOfputStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rawNumSlotsOf:put:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rawNumSlotsOf:put:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRawOverflowSlotsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rawOverflowSlotsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rawOverflowSlotsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRawOverflowSlotsOfputStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rawOverflowSlotsOf:put:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rawOverflowSlotsOf:put:.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRelocateObjStackForPlanningCompactorStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #relocateObjStackForPlanningCompactor:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #relocateObjStackForPlanningCompactor:.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRelocateObjStacksForPlanningCompactorStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #relocateObjStacksForPlanningCompactor.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #relocateObjStacksForPlanningCompactor.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRemapBufferCountStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #remapBufferCount.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #remapBufferCount.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRemapBufferStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #remapBuffer.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #remapBuffer.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRemapStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #remap:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #remap:.
	self assert: illiString equals: slangString
]

{ #category : #'header format-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRememberedBitShiftStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rememberedBitShift.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rememberedBitShift.
	self assert: illiString equals: slangString
]

{ #category : #'scavenger-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRememberedSetObjStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rememberedSetObj.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rememberedSetObj.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRemoveGCRootStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #removeGCRoot:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #removeGCRoot:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation accounting-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testResetAllocationAccountingAfterGCStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #resetAllocationAccountingAfterGC.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #resetAllocationAccountingAfterGC.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testResetFreeListHeadsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #resetFreeListHeads.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #resetFreeListHeads.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRestoreObjectsInsavedHashesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #restoreObjectsIn:savedHashes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #restoreObjectsIn:savedHashes:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRestoreObjectsInupTosavedFirstFieldsStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #restoreObjectsIn:upTo:savedFirstFields:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #restoreObjectsIn:upTo:savedFirstFields:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testReturnrestoringObjectsInsavedFirstFieldsandsavedHashesStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #return:restoringObjectsIn:savedFirstFields:and:savedHashes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #return:restoringObjectsIn:savedFirstFields:and:savedHashes:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testReturnrestoringObjectsInupTosavedFirstFieldsStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #return:restoringObjectsIn:upTo:savedFirstFields:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #return:restoringObjectsIn:upTo:savedFirstFields:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testReverseBytesFromtoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #reverseBytesFrom:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #reverseBytesFrom:to:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testReverseBytesInBitWordsFromtoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #reverseBytesIn32BitWordsFrom:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #reverseBytesIn32BitWordsFrom:to:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testReverseBytesInBitWordsInStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #reverseBytesIn32BitWordsIn:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #reverseBytesIn32BitWordsIn:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testReverseBytesInMemoryStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #reverseBytesInMemory.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #reverseBytesInMemory.
	self assert: illiString equals: slangString
]

{ #category : #'scavenger-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRootTableCapacityStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rootTableCapacity.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rootTableCapacity.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRootTableCountStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rootTableCount.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rootTableCount.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRotateLeftStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rotateLeft:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rotateLeft:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRotateRightStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rotateRight:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rotateRight:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRotatedFloatBitsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rotatedFloatBitsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rotatedFloatBitsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRoundBytesToAllocationUnitStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #roundBytesToAllocationUnit:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #roundBytesToAllocationUnit:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRoundUpHeapSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #roundUpHeapSize:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #roundUpHeapSize:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRtRefCountOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rtRefCountOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rtRefCountOf:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRtRefCountOfputStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #rtRefCountOf:put:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #rtRefCountOf:put:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRunLeakCheckerForFreeSpaceStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #runLeakCheckerForFreeSpace:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #runLeakCheckerForFreeSpace:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRunLeakCheckerForStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #runLeakCheckerFor:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #runLeakCheckerFor:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testRunLeakCheckerForexcludeUnmarkedObjsclassIndicesShouldBeValidStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #runLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #runLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSafePrintStringOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #safePrintStringOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #safePrintStringOf:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSavedOutHashFillValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #savedOutHashFillValue.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #savedOutHashFillValue.
	self assert: illiString equals: slangString
]

{ #category : #'testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testScavengeInProgressStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #scavengeInProgress.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #scavengeInProgress.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testScavengeThresholdAsExtentStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #scavengeThresholdAsExtent.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #scavengeThresholdAsExtent.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testScavengeThresholdStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #scavengeThreshold.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #scavengeThreshold.
	self assert: illiString equals: slangString
]

{ #category : #'scavenger-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testScavengerDenominatorStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #scavengerDenominator.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #scavengerDenominator.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testScavengingGCStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #scavengingGC.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #scavengingGC.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testScavengingGCTenuringIfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #scavengingGCTenuringIf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #scavengingGCTenuringIf:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testScheduleScavengeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #scheduleScavenge.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #scheduleScavenge.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSegmentBridgePunStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #segmentBridgePun.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #segmentBridgePun.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSegmentManagerStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #segmentManager.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #segmentManager.
	self assert: illiString equals: slangString
]

{ #category : #'spur bootstrap-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetCheckForLeaksStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setCheckForLeaks:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setCheckForLeaks:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetClassIndexOftoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setClassIndexOf:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setClassIndexOf:to:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation accounting-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetCurrentAllocatedBytesToStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setCurrentAllocatedBytesTo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setCurrentAllocatedBytesTo:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetEndOfMemoryStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setEndOfMemory:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setEndOfMemory:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetFormatOftoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setFormatOf:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setFormatOf:to:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetFreeOldSpaceStartStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setFreeOldSpaceStart:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setFreeOldSpaceStart:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetFreeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setFree:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setFree:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetHashBitsOftoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setHashBitsOf:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setHashBitsOf:to:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetHeapBasememoryLimitendOfMemoryStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #setHeapBase:memoryLimit:endOfMemory:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #setHeapBase:memoryLimit:endOfMemory:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetHeapGrowthToSizeGCRatioStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setHeapGrowthToSizeGCRatio:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setHeapGrowthToSizeGCRatio:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation accounting-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetHeapSizeAtPreviousGCStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setHeapSizeAtPreviousGC.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setHeapSizeAtPreviousGC.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetHiddenRootsObjStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setHiddenRootsObj:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setHiddenRootsObj:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetIsGreyOftoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setIsGreyOf:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setIsGreyOf:to:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetIsImmutableOftoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setIsImmutableOf:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setIsImmutableOf:to:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetIsMarkedOftoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setIsMarkedOf:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setIsMarkedOf:to:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetIsPinnedOftoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setIsPinnedOf:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setIsPinnedOf:to:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetIsRememberedOftoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setIsRememberedOf:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setIsRememberedOf:to:.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetLastSegmentStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setLastSegment:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setLastSegment:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetMaxOldSpaceSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setMaxOldSpaceSize:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setMaxOldSpaceSize:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetNextFreeChunkOfwithValuechunkBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #setNextFreeChunkOf:withValue:chunkBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #setNextFreeChunkOf:withValue:chunkBytes:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetNextFreeChunkOfwithValueisLilliputianSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #setNextFreeChunkOf:withValue:isLilliputianSize:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #setNextFreeChunkOf:withValue:isLilliputianSize:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetObjectFreeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #setObjectFree:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #setObjectFree:.
	self assert: illiString equals: slangString
]

{ #category : #'header access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSetclassIndexToformatToStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #set:classIndexTo:formatTo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #set:classIndexTo:formatTo:.
	self assert: illiString equals: slangString
]

{ #category : #'word size-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testShiftForAllocationUnitStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #shiftForAllocationUnit.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #shiftForAllocationUnit.
	self assert: illiString equals: slangString
]

{ #category : #'word size-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testShiftForWordStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #shiftForWord.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #shiftForWord.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testShortPrintObjectsFromtoStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #shortPrintObjectsFrom:to:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #shortPrintObjectsFrom:to:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testShortentoIndexableSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #shorten:toIndexableSize:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #shorten:toIndexableSize:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testShouldBreakForLookupIngivenStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #shouldBreakForLookupIn:given:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #shouldBreakForLookupIn:given:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testShouldRemapOopStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #shouldRemapOop:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #shouldRemapOop:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testShrinkThresholdStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #shrinkThreshold:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #shrinkThreshold:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - incremental-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testShutDownIncrementalGCStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #shutDownIncrementalGC:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #shutDownIncrementalGC:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSignalLowSpaceStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #signalLowSpace.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #signalLowSpace.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSixtyFourBitIndexableFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #sixtyFourBitIndexableFormat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #sixtyFourBitIndexableFormat.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSixtyFourBitLongsClassIndexPunStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #sixtyFourBitLongsClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #sixtyFourBitLongsClassIndexPun.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSizeBitsOfSafeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #sizeBitsOfSafe:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #sizeBitsOfSafe:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSizeBitsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #sizeBitsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #sizeBitsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSizeOfFreeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #sizeOfFree:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #sizeOfFree:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSizeOfLargestFreeChunkStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #sizeOfLargestFreeChunk.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #sizeOfLargestFreeChunk.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSizeOfObjStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #sizeOfObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #sizeOfObjStack:.
	self assert: illiString equals: slangString
]

{ #category : #'testing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSlidingCompactionInProgressStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #slidingCompactionInProgress.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #slidingCompactionInProgress.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSlidingCompactionRemapObjStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #slidingCompactionRemapObj:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #slidingCompactionRemapObj:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSlidingCompactionShouldRemapObjStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #slidingCompactionShouldRemapObj:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #slidingCompactionShouldRemapObj:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSlotSizeOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #slotSizeOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #slotSizeOf:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallFloatBitsOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #smallFloatBitsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #smallFloatBitsOf:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallFloatExponentBitsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #smallFloatExponentBits.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #smallFloatExponentBits.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallFloatExponentOffsetStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #smallFloatExponentOffset.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #smallFloatExponentOffset.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallFloatMantissaBitsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #smallFloatMantissaBits.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #smallFloatMantissaBits.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallFloatObjectOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #smallFloatObjectOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #smallFloatObjectOf:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallFloatSignBitStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #smallFloatSignBit.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #smallFloatSignBit.
	self assert: illiString equals: slangString
]

{ #category : #'cog jit support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallFloatTagStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #smallFloatTag.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #smallFloatTag.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallFloatValueOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #smallFloatValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #smallFloatValueOf:.
	self assert: illiString equals: slangString
]

{ #category : #'cog jit support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallIntegerTagStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #smallIntegerTag.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #smallIntegerTag.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSmallObjectBytesForSlotsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #smallObjectBytesForSlots:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #smallObjectBytesForSlots:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSpecialObjectsOopStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #specialObjectsOop.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #specialObjectsOop.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSplObjStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #splObj:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #splObj:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSplObjputStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #splObj:put:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #splObj:put:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStackValueofObjStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #stackValue:ofObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #stackValue:ofObjStack:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStartOfMemoryStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #startOfMemory.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #startOfMemory.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStartOfObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #startOfObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #startOfObject:.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStartOfObjectgivenStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #startOfObject:given:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #startOfObject:given:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatCompMoveCountStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statCompMoveCount.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statCompMoveCount.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatCompactPassCountStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statCompactPassCount.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statCompactPassCount.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatCompactionUsecsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statCompactionUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statCompactionUsecs.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatFGCDeltaUsecsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statFGCDeltaUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statFGCDeltaUsecs.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatFullGCUsecsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statFullGCUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statFullGCUsecs.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatFullGCsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statFullGCs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statFullGCs.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatGCEndUsecsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statGCEndUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statGCEndUsecs.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatGrowMemoryStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statGrowMemory.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statGrowMemory.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatIGCDeltaUsecsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statIGCDeltaUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statIGCDeltaUsecs.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatIncrGCUsecsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statIncrGCUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statIncrGCUsecs.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatIncrGCsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statIncrGCs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statIncrGCs.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatMarkCountStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statMarkCount.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statMarkCount.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatMarkUsecsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statMarkUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statMarkUsecs.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatMaxAllocSegmentTimeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statMaxAllocSegmentTime:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statMaxAllocSegmentTime:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatMkFwdCountStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statMkFwdCount.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statMkFwdCount.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatNumGCsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statNumGCs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statNumGCs.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatRootTableCountStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statRootTableCount.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statRootTableCount.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatRootTableOverflowsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statRootTableOverflows.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statRootTableOverflows.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatSGCDeltaUsecsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statSGCDeltaUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statSGCDeltaUsecs.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatScavengeGCUsecsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statScavengeGCUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statScavengeGCUsecs.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatScavengesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statScavenges.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statScavenges.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatShrinkMemoryStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statShrinkMemory.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statShrinkMemory.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatSpecialMarkCountStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statSpecialMarkCount.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statSpecialMarkCount.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatSweepCountStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statSweepCount.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statSweepCount.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStatSweepUsecsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #statSweepUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #statSweepUsecs.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStoreByteofObjectwithValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #storeByte:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #storeByte:ofObject:withValue:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStoreCheckBoundaryStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #storeCheckBoundary.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #storeCheckBoundary.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStoreImageSegmentIntooutPointersrootsStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #storeImageSegmentInto:outPointers:roots:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #storeImageSegmentInto:outPointers:roots:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStoreLongofObjectwithValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #storeLong32:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #storeLong32:ofObject:withValue:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStorePointerImmutabilityCheckofObjectwithValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #storePointerImmutabilityCheck:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #storePointerImmutabilityCheck:ofObject:withValue:.
	self assert: illiString equals: slangString
]

{ #category : #'heap management-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStorePointerNoAssertofFreeChunkwithValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #storePointerNoAssert:ofFreeChunk:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #storePointerNoAssert:ofFreeChunk:withValue:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStorePointerUncheckedofMaybeForwardedObjectwithValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #storePointerUnchecked:ofMaybeForwardedObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #storePointerUnchecked:ofMaybeForwardedObject:withValue:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStorePointerUncheckedofObjectwithValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #storePointerUnchecked:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #storePointerUnchecked:ofObject:withValue:.
	self assert: illiString equals: slangString
]

{ #category : #'heap management-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStorePointerofForwarderwithValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #storePointer:ofForwarder:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #storePointer:ofForwarder:withValue:.
	self assert: illiString equals: slangString
]

{ #category : #'heap management-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStorePointerofFreeChunkwithUncheckedValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #storePointer:ofFreeChunk:withUncheckedValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #storePointer:ofFreeChunk:withUncheckedValue:.
	self assert: illiString equals: slangString
]

{ #category : #'heap management-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStorePointerofFreeChunkwithValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #storePointer:ofFreeChunk:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #storePointer:ofFreeChunk:withValue:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStorePointerofObjStackwithValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #storePointer:ofObjStack:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #storePointer:ofObjStack:withValue:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStorePointerofObjectwithValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #storePointer:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #storePointer:ofObject:withValue:.
	self assert: illiString equals: slangString
]

{ #category : #'object access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStoreShortofObjectwithValueStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #storeShort16:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #storeShort16:ofObject:withValue:.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testStringForCStringStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #stringForCString:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #stringForCString:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSufficientSpaceAfterGCStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #sufficientSpaceAfterGC:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #sufficientSpaceAfterGC:.
	self assert: illiString equals: slangString
]

{ #category : #'allocation-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSufficientSpaceToInstantiateindexableSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #sufficientSpaceToInstantiate:indexableSize:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #sufficientSpaceToInstantiate:indexableSize:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSwizzleFieldsOfFreeChunkStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #swizzleFieldsOfFreeChunk:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #swizzleFieldsOfFreeChunk:.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSwizzleFieldsOfObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #swizzleFieldsOfObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #swizzleFieldsOfObject:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testSwizzleObjStackAtStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #swizzleObjStackAt:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #swizzleObjStackAt:.
	self assert: illiString equals: slangString
]

{ #category : #'word size-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTagMaskStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #tagMask.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #tagMask.
	self assert: illiString equals: slangString
]

{ #category : #'plugin support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTenuringIncrementalGCStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #tenuringIncrementalGC.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #tenuringIncrementalGC.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTenuringThresholdStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #tenuringThreshold:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #tenuringThreshold:.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testThirtyTwoBitLongsClassIndexPunStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #thirtyTwoBitLongsClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #thirtyTwoBitLongsClassIndexPun.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTopOfObjStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #topOfObjStack:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #topOfObjStack:.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTopRemappableOopStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #topRemappableOop.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #topRemappableOop.
	self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTotalByteSizeOfStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #totalByteSizeOf:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #totalByteSizeOf:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTotalFreeListBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #totalFreeListBytes.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #totalFreeListBytes.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTotalFreeOldSpaceStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #totalFreeOldSpace:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #totalFreeOldSpace:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTotalMemorySizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #totalMemorySize.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #totalMemorySize.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTraceImmediatelySlotLimitStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #traceImmediatelySlotLimit.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #traceImmediatelySlotLimit.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testTrueObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #trueObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #trueObject:.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUniqueIndexallInstancesIntolimitresultsIntoStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #uniqueIndex:allInstancesInto:limit:resultsInto:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #uniqueIndex:allInstancesInto:limit:resultsInto:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUnlinkFreeChunkatIndexchunkBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #unlinkFreeChunk:atIndex:chunkBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #unlinkFreeChunk:atIndex:chunkBytes:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUnlinkFreeChunkatIndexisLilliputianSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #unlinkFreeChunk:atIndex:isLilliputianSize:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #unlinkFreeChunk:atIndex:isLilliputianSize:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUnlinkFreeChunkchunkBytesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #unlinkFreeChunk:chunkBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #unlinkFreeChunk:chunkBytes:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUnlinkLilliputianChunkindexStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #unlinkLilliputianChunk:index:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #unlinkLilliputianChunk:index:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUnlinkSolitaryFreeTreeNodeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #unlinkSolitaryFreeTreeNode:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #unlinkSolitaryFreeTreeNode:.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUnmarkAllObjectsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #unmarkAllObjects.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #unmarkAllObjects.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUnmarkObjectsInStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #unmarkObjectsIn:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #unmarkObjectsIn:.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUnmarkSurvivingObjectsForCompactStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #unmarkSurvivingObjectsForCompact.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #unmarkSurvivingObjectsForCompact.
	self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUnpinObjectStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #unpinObject:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #unpinObject:.
	self assert: illiString equals: slangString
]

{ #category : #'initialization-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUpdateFreeListsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #updateFreeLists.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #updateFreeLists.
	self assert: illiString equals: slangString
]

{ #category : #'gc - global-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUpdateFullGCStatsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #updateFullGCStats.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #updateFullGCStats.
	self assert: illiString equals: slangString
]

{ #category : #'initialization-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUpdateListStartingAtStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #updateListStartingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #updateListStartingAt:.
	self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUpdatePostScavengeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #updatePostScavenge:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #updatePostScavenge:.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUpdateRootOfObjStackAtwithStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #updateRootOfObjStackAt:with:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #updateRootOfObjStackAt:with:.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testUpdateSweepEndUsecsStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #updateSweepEndUsecs.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #updateSweepEndUsecs.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testValidClassTableHashesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #validClassTableHashes.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #validClassTableHashes.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testValidClassTableRootPagesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #validClassTableRootPages.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #validClassTableRootPages.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testValidFreeTreeChunkStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #validFreeTreeChunk:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #validFreeTreeChunk:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testValidFreeTreeChunkparentStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #validFreeTreeChunk:parent:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #validFreeTreeChunk:parent:.
	self assert: illiString equals: slangString
]

{ #category : #'free space-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testValidFreeTreeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #validFreeTree.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #validFreeTree.
	self assert: illiString equals: slangString
]

{ #category : #'obj stacks-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testValidObjStacksStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #validObjStacks.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #validObjStacks.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testVanillaRemapObjStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #vanillaRemapObj:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #vanillaRemapObj:.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testVanillaShouldRemapObjStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #vanillaShouldRemapObj:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #vanillaShouldRemapObj:.
	self assert: illiString equals: slangString
]

{ #category : #'memory access-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testVmEndiannessStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #vmEndianness.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #vmEndianness.
	self assert: illiString equals: slangString
]

{ #category : #'class table puns-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testWeakArrayClassIndexPunStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #weakArrayClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #weakArrayClassIndexPun.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testWeakArrayFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #weakArrayFormat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #weakArrayFormat.
	self assert: illiString equals: slangString
]

{ #category : #'spur bootstrap-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testWeaklingStackStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #weaklingStack.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #weaklingStack.
	self assert: illiString equals: slangString
]

{ #category : #'debug printing-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testWhereIsMaybeHeapThingStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #whereIsMaybeHeapThing:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #whereIsMaybeHeapThing:.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testWithSimulatorFetchPointerMovedAsideDoStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #withSimulatorFetchPointerMovedAsideDo:.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #withSimulatorFetchPointerMovedAsideDo:.
	self assert: illiString equals: slangString
]

{ #category : #'header formats-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testWordIndexableFormatStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #wordIndexableFormat.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #wordIndexableFormat.
	self assert: illiString equals: slangString
]

{ #category : #'class table-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testWordSizeClassIndexPunStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #wordSizeClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #wordSizeClassIndexPun.
	self assert: illiString equals: slangString
]

{ #category : #'word size-equaliy-test' }
ANSpur64BitMemoryManagerTranslationTest >> testWordSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #wordSize.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #wordSize.
	self assert: illiString equals: slangString
]
