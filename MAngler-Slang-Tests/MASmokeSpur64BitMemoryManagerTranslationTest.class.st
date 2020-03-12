Class {
	#name : #MASmokeSpur64BitMemoryManagerTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MASmokeSpur64BitMemoryManagerTranslationTest >> setUp [
	super setUp.
	testedClass := Spur64BitMemoryManager
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAddFreeChunkWithBytesatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #addFreeChunkWithBytes:at:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAddToFreeTreebytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #addToFreeTree:bytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAddressCouldBeOldObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #addressCouldBeOldObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAdjustAllOopsByStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #adjustAllOopsBy:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllExistingNewSpaceObjectsDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allExistingNewSpaceObjectsDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllExistingObjectsDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allExistingObjectsDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllExistingOldSpaceObjectsDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allExistingOldSpaceObjectsDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllFreeObjectsDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allFreeObjectsDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllHeapEntitiesDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allHeapEntitiesDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllNewSpaceEntitiesDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allNewSpaceEntitiesDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllNewSpaceObjectsDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allNewSpaceObjectsDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllObjectsDoSafelyStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allObjectsDoSafely:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllObjectsDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allObjectsDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllObjectsInFreeTreeDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allObjectsInFreeTreeDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllObjectsInFreeTreedoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allObjectsInFreeTree:do:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allOldSpaceEntitiesDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesForCoalescingFromdoStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #allOldSpaceEntitiesForCoalescingFrom:do:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesForCompactingFromtodoStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #allOldSpaceEntitiesForCompactingFrom:to:do:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesFromdoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allOldSpaceEntitiesFrom:do:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesFromtodoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allOldSpaceEntitiesFrom:to:do:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceObjectsDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allOldSpaceObjectsDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceObjectsFromdoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allOldSpaceObjectsFrom:do:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllPastSpaceEntitiesDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allPastSpaceEntitiesDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllPastSpaceObjectsDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allPastSpaceObjectsDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllocateBytesclassIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allocateBytes:classIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllocateOldSpaceChunkOfBytessuchThatStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #allocateOldSpaceChunkOfBytes:suchThat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllocateSlotsInOldSpaceformatclassIndexStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #allocateSlotsInOldSpace:format:classIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllocateSlotsformatclassIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allocateSlots:format:classIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllocateSmallNewSpaceSlotsformatclassIndexStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #allocateSmallNewSpaceSlots:format:classIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAmbiguousClassallInstancesIntolimitresultsIntoStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #ambiguousClass:allInstancesInto:limit:resultsInto:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAreIntegersandStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #areIntegers:and:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAssertFreeChunkPrevHeadZeroStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #assertFreeChunkPrevHeadZero.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAssertValidFreeObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #assertValidFreeObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAssignClassIndicesAndPinFromtooutPointersfillingStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #assignClassIndicesAndPinFrom:to:outPointers:filling:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAssimilateNewSegmentStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #assimilateNewSegment:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAtLeastClassIndexHalfHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #atLeastClassIndexHalfHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAttemptToShrinkStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #attemptToShrink.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAverageObjectSizeInBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #averageObjectSizeInBytes.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBaseAddressOfImageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #baseAddressOfImage.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBaseHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #baseHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBeginSlidingCompactionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #beginSlidingCompaction.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBooleanObjectOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanObjectOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBootstrappingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bootstrapping.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header format' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testByteFormatForNumBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #byteFormatForNumBytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testByteSizeOfInstanceOferrIntoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #byteSizeOfInstanceOf:errInto:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testByteSizeOfInstanceOfwithIndexableSlotserrIntoStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #byteSizeOfInstanceOf:withIndexableSlots:errInto:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBytesInObjectgivenStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytesInObject:given:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBytesLeftInOldSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytesLeftInOldSpace.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBytesLeftStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytesLeft:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCapacityOfObjStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #capacityOfObjStack:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCheapAddressCouldBeInHeapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #cheapAddressCouldBeInHeap:.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCheckCompactIndexisClassnamedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkCompactIndex:isClass:named:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCheckForAvailableSlotsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkForAvailableSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCheckForLeaksStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkForLeaks.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCheckFreeSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkFreeSpace:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCheckMemoryMapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkMemoryMap.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCheckOkayYoungReferrerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkOkayYoungReferrer:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testClassForClassTagStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #classForClassTag:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testClassFormatFromInstFormatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #classFormatFromInstFormat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testClassIndexOfHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #classIndexOfHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'plugin support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testClassMutexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #classMutex.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testClassTableEntriesDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #classTableEntriesDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testClassTableIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #classTableIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testClassTagForSpecialObjectsIndexcompactClassIndexStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #classTagForSpecialObjectsIndex:compactClassIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCleverSwapHeadersandcopyHashFlagStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #cleverSwapHeaders:and:copyHashFlag:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCoalesceandStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #coalesce:and:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCoallesceFreeChunkStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #coallesceFreeChunk:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class membership' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCompactIndexOfClassStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #compactIndexOfClass:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCompactorStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #compactor.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header format' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCompiledMethodFormatForNumBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #compiledMethodFormatForNumBytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testComputeFreeSpacePostSwizzleStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #computeFreeSpacePostSwizzle.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testContainsOnlyValidBecomeObjectsandtwoWaycopyHashStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #containsOnlyValidBecomeObjects:and:twoWay:copyHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCountNumClassPagesPreSwizzleStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #countNumClassPagesPreSwizzle:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testDequeueMournerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #dequeueMourner.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testDetachFreeObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #detachFreeObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'allocation accounting' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testDoAllocationAccountingForScavengeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #doAllocationAccountingForScavenge.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testDoBecomeandcopyHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #doBecome:and:copyHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testDoBecometocopyHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #doBecome:to:copyHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEdenBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #edenBytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEeInstantiateMethodContextSlotsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #eeInstantiateMethodContextSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEeInstantiateSmallClassIndexformatnumSlotsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #eeInstantiateSmallClassIndex:format:numSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEeInstantiateSmallClassnumSlotsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #eeInstantiateSmallClass:numSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEekStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #eek.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEndSlidingCompactionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #endSlidingCompaction.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEnsureBehaviorHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ensureBehaviorHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEnsureHasOverflowHeaderforwardIfClonedStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #ensureHasOverflowHeader:forwardIfCloned:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEnsureNoNewObjectsInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ensureNoNewObjectsIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEnsureSemaphoreUnforwardedThroughContextStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #ensureSemaphoreUnforwardedThroughContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEnterClassesIntoClassTableFromtoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #enterClassesIntoClassTableFrom:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testExponentOfSmallFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #exponentOfSmallFloat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testExpungeDuplicateAndUnmarkedClassesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #expungeDuplicateAndUnmarkedClasses:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFalseObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #falseObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFetchLongofObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fetchLong64:ofObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFetchPointerofMaybeForwardedObjectStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #fetchPointer:ofMaybeForwardedObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFetchShortofObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fetchShort16:ofObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFetchUnsignedShortofObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fetchUnsignedShort16:ofObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFillObjnumSlotswithStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fillObj:numSlots:with:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFireAllUnscannedEphemeronsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fireAllUnscannedEphemerons.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFirstLilliputianChunkStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #firstLilliputianChunk.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFirstObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #firstObject.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFirstValidIndexOfIndexableObjectwithFormatStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #firstValidIndexOfIndexableObject:withFormat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFlushEdenStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushEden.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFlushNewSpaceInstancesOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushNewSpaceInstancesOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFlushNewSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushNewSpace.
	self prettyPrintIllicium: illiAST
]

{ #category : #'selective compaction' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowClassTableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followClassTable.
	self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowForwardedInObjStackatIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followForwardedInObjStack:atIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowForwardedObjStacksStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followForwardedObjStacks.
	self prettyPrintIllicium: illiAST
]

{ #category : #forwarding }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowMaybeForwardedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followMaybeForwarded:.
	self prettyPrintIllicium: illiAST
]

{ #category : #forwarding }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowOopFieldofObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followOopField:ofObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'selective compaction' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowProcessListStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followProcessList.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowSpecialObjectsOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followSpecialObjectsOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowedKeyOfEphemeronStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followedKeyOfEphemeron:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowedKeyOfMaybeFiredEphemeronStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followedKeyOfMaybeFiredEphemeron:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFormatOfHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #formatOfHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testForwardSurvivortoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #forwardSurvivor:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testForwardUncheckedtoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #forwardUnchecked:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testForwardtoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #forward:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeChunkLargerIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeChunkLargerIndex.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeChunkSmallerIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeChunkSmallerIndex.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeListHeadsEmptyStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeListHeadsEmpty.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeListsObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeListsObj.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeListsObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeListsObject.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeOldSpaceStartStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeOldSpaceStart.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeTreeNodesDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeTreeNodesDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFullGCLockStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fullGCLock.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testGarbageCollectForSnapshotStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #garbageCollectForSnapshot.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testGcStartUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #gcStartUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testGlobalGarbageCollectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #globalGarbageCollect.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testGrowHeadroomStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #growHeadroom.
	self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testGrowToAccomodateContainerWithNumSlotsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #growToAccomodateContainerWithNumSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasIdentityHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hasIdentityHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasOverflowHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hasOverflowHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasPointerFieldsNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hasPointerFieldsNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasPointerFieldsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hasPointerFields:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasSixtyFourBitImmediatesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hasSixtyFourBitImmediates.
	self prettyPrintIllicium: illiAST
]

{ #category : #'api characterization' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasSpurMemoryManagerAPIStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hasSpurMemoryManagerAPI.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasYoungReferentsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hasYoungReferents:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHashBitsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hashBitsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHeapMapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #heapMap.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header format' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIdentityHashFieldWidthStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #identityHashFieldWidth.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIdentityHashFullWordMaskStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #identityHashFullWordMask.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIfAProxyupdateCopyStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ifAProxy:updateCopy:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIfOopInvalidForBecomeerrorCodeIntoStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #ifOopInvalidForBecome:errorCodeInto:.
	self prettyPrintIllicium: illiAST
]

{ #category : #immediates }
MASmokeSpur64BitMemoryManagerTranslationTest >> testImageFormatVersionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #imageFormatVersion.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testImageSizeToWriteStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #imageSizeToWrite.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInLineRunLeakCheckerForexcludeUnmarkedObjsclassIndicesShouldBeValidStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #inLineRunLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInactiveOrFailedToDeferScanStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #inactiveOrFailedToDeferScan:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIncreaseFreeOldSpaceByStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #increaseFreeOldSpaceBy:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitSpaceForAllocationChecklimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initSpaceForAllocationCheck:limit:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitialHeadroomgivenFreeOldSpaceInImageStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #initialHeadroom:givenFreeOldSpaceInImage:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitializeFreeSpacePostLoadStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeFreeSpacePostLoad:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitializeMarkStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeMarkStack.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitializeOldSpaceFirstFreeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeOldSpaceFirstFree:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitializePostBootstrapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializePostBootstrap.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitializeUnscannedEphemeronsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeUnscannedEphemerons.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitializeWeaklingStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeWeaklingStack.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInnerBecomeObjectsInandcopyHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #innerBecomeObjectsIn:and:copyHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInnerBecomeObjectsIntocopyHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #innerBecomeObjectsIn:to:copyHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header formats' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInstSpecForImmediateClassesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #instSpecForImmediateClasses.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInstanceAfterStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #instanceAfter:.
	self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInstantiateCompiledMethodClassindexableSizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #instantiateCompiledMethodClass:indexableSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #immediates }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIntegerObjectOfCharacterObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #integerObjectOfCharacterObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsBytesNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isBytesNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsClassOfNonImmequalToStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isClassOfNonImm:equalTo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsClassOfNonImmequalTocompactClassIndexStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #isClassOfNonImm:equalTo:compactClassIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsCompactInstanceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isCompactInstance:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsCompiledMethodHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isCompiledMethodHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsFloatInstanceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isFloatInstance:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsFloatOrIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isFloatOrInt:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsGreyStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isGrey:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsHiddenObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isHiddenObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsImmediateCharacterStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isImmediateCharacter:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsImmutableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isImmutable:.
	self prettyPrintIllicium: illiAST
]

{ #category : #immediates }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsInRangeCharacterCodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isInRangeCharacterCode:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header formats' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsIndexableFormatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isIndexableFormat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsInstanceOfClassLargeNegativeIntegerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #isInstanceOfClassLargeNegativeInteger:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsInstanceOfClassLargePositiveIntegerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #isInstanceOfClassLargePositiveInteger:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsLargeIntegerInstanceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isLargeIntegerInstance:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsLongsNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isLong64sNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsLongsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isLong64s:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header formats' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsMaybeFiredEphemeronFormatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isMaybeFiredEphemeronFormat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsMobileObjectHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isMobileObjectHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsMobileObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isMobileObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsNegativeSmallFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isNegativeSmallFloat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsNonIntegerImmediateStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isNonIntegerImmediate:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsNonIntegerNonImmediateStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isNonIntegerNonImmediate:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsNonIntegerObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isNonIntegerObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsNormalObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isNormalObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header formats' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsPointersFormatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isPointersFormat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsPointersNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isPointersNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsPureBitsNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isPureBitsNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsRememberedObjectHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isRememberedObjectHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsSemaphoreObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isSemaphoreObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsSemaphoreOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isSemaphoreOop:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsShortsNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isShortsNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsShortsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isShorts:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsSmallFloatZeroStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isSmallFloatZero:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsValidClassIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isValidClassIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsWordsNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isWordsNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsWordsOrBytesNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isWordsOrBytesNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsinstanceOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #is:instanceOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsoutPointerClassHashForinlimitStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #is:outPointerClassHashFor:in:limit:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testKeyOfMaybeFiredEphemeronStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #keyOfMaybeFiredEphemeron:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLargeObjectBytesForSlotsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #largeObjectBytesForSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLastHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lastHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLastPointerOfArrayStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lastPointerOfArray:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLastPointerOfMethodHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lastPointerOfMethodHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLeakCheckImageSegmentsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #leakCheckImageSegments.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLengthOfbaseHeaderformatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lengthOf:baseHeader:format:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLilliputianChunkIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lilliputianChunkIndex.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLoadFloatOrIntFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #loadFloatOrIntFrom:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLogBytesPerOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #logBytesPerOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLowSpaceThresholdStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowSpaceThreshold:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMapOopsAndValidateClassRefsFromtooutPointersStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #mapOopsAndValidateClassRefsFrom:to:outPointers:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMapSignedSmallFloatToSignedSmallFloatZeroStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #mapSignedSmallFloatToSignedSmallFloatZero:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkAccessibleObjectsAndFireEphemeronsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #markAccessibleObjectsAndFireEphemerons.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkAllUnscannedEphemeronsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAllUnscannedEphemerons.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkAndShouldScanStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndShouldScan:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceExtraRootsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndTraceExtraRoots.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceHiddenRootsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndTraceHiddenRoots.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceWeaklingsFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndTraceWeaklingsFrom:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkAsCopiedIntoSegmentStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAsCopiedIntoSegment:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkLoopFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markLoopFrom:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkObjectsInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markObjectsIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markStack.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mark:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMaxCIntegerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maxCInteger.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMaxIdentityHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maxIdentityHash.
	self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMaxSlotsForNewSpaceAllocStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maxSlotsForNewSpaceAlloc.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMemoryBaseForImageReadStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #memoryBaseForImageRead.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMemoryLimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #memoryLimit.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMemorySchedulerPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #memorySchedulerPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMemoryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #memory:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMethodCacheHashOfwithStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #methodCacheHashOf:with:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMethodDictionaryHashmaskStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #methodDictionaryHash:mask:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMethodHeaderFromSavedFirstFieldStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #methodHeaderFromSavedFirstField:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMournQueueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mournQueue.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMoveClassesForwardsInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #moveClassesForwardsIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNaiveSwapHeadersandcopyHashFlagStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #naiveSwapHeaders:and:copyHashFlag:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNeedGCFlagStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #needGCFlag.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNegativeSmallFloatZeroStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #negativeSmallFloatZero.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNewHashBitsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #newHashBitsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNewOutPointeratinhashesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #newOutPointer:at:in:hashes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNewSpaceBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #newSpaceBytes.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNewSpaceRefCountMaskStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #newSpaceRefCountMask.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNewSpaceSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #newSpaceSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNewSpaceStartStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #newSpaceStart.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNilFieldsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nilFieldsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNilObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nilObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNilUnmarkedWeaklingSlotsInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nilUnmarkedWeaklingSlotsIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #forwarding }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNoInlineFollowForwardedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #noInlineFollowForwarded:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumBitUnitsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #num64BitUnitsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object format' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumFixedSlotsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #numFixedSlotsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header format' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumSlotsForBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #numSlotsForBytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumSlotsForShorteningtoIndexableSizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #numSlotsForShortening:toIndexableSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumSmallIntegerBitsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #numSmallIntegerBits.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumSmallIntegerTagBitsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #numSmallIntegerTagBits.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumStrongSlotsOfformatephemeronInactiveIfStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #numStrongSlotsOf:format:ephemeronInactiveIf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumSurvivorSpacesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #numSurvivorSpaces.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumberOfForwardersStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #numberOfForwarders.
	self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testObjStackdoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #objStack:do:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testObjStackfromdoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #objStack:from:do:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testObjectAfterlimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #objectAfter:limit:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testObjectBytesForSlotsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #objectBytesForSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testObjectWithRawSlotsHasOverflowHeaderStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #objectWithRawSlotsHasOverflowHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testOldRawNumSlotsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #oldRawNumSlotsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'cog jit support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testOldSmallFloatTagStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #oldSmallFloatTag.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testOldSpaceSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #oldSpaceSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPositiveSmallFloatZeroStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #positiveSmallFloatZero.
	self prettyPrintIllicium: illiAST
]

{ #category : #'store check' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPossibleRootStoreIntoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #possibleRootStoreInto:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPrepareObjStackForPlanningCompactorStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #prepareObjStackForPlanningCompactor:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPrepareObjStacksForPlanningCompactorStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #prepareObjStacksForPlanningCompactor.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPrintInvalidClassTableHashesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printInvalidClassTableHashes.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPurgeDuplicateClassTableEntriesForStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #purgeDuplicateClassTableEntriesFor:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPushonObjStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #push:onObjStack:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRawClassTagForClassStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rawClassTagForClass:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRawNumSlotsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rawNumSlotsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRawNumSlotsOfputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rawNumSlotsOf:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRawOverflowSlotsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rawOverflowSlotsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRawOverflowSlotsOfputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rawOverflowSlotsOf:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRelocateObjStacksForPlanningCompactorStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #relocateObjStacksForPlanningCompactor.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRemapBufferStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #remapBuffer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRemapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #remap:.
	self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRememberedSetObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rememberedSetObj.
	self prettyPrintIllicium: illiAST
]

{ #category : #'allocation accounting' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testResetAllocationAccountingAfterGCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #resetAllocationAccountingAfterGC.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testResetFreeListHeadsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #resetFreeListHeads.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRestoreObjectsInsavedHashesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #restoreObjectsIn:savedHashes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRestoreObjectsInupTosavedFirstFieldsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #restoreObjectsIn:upTo:savedFirstFields:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testReverseBytesFromtoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #reverseBytesFrom:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testReverseBytesInBitWordsFromtoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #reverseBytesIn32BitWordsFrom:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testReverseBytesInMemoryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #reverseBytesInMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRotateLeftStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rotateLeft:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRotateRightStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rotateRight:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRotatedFloatBitsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rotatedFloatBitsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRoundBytesToAllocationUnitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #roundBytesToAllocationUnit:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRoundUpHeapSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #roundUpHeapSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRtRefCountOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rtRefCountOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRtRefCountOfputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rtRefCountOf:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSafePrintStringOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #safePrintStringOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSavedOutHashFillValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #savedOutHashFillValue.
	self prettyPrintIllicium: illiAST
]

{ #category : #testing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testScavengeInProgressStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #scavengeInProgress.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testScavengeThresholdAsExtentStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #scavengeThresholdAsExtent.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testScavengeThresholdStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #scavengeThreshold.
	self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpur64BitMemoryManagerTranslationTest >> testScavengerDenominatorStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #scavengerDenominator.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testScavengingGCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #scavengingGC.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testScheduleScavengeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #scheduleScavenge.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSegmentManagerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #segmentManager.
	self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetCheckForLeaksStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setCheckForLeaks:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetClassIndexOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setClassIndexOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'allocation accounting' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetCurrentAllocatedBytesToStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setCurrentAllocatedBytesTo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetEndOfMemoryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setEndOfMemory:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetFormatOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setFormatOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetFreeOldSpaceStartStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setFreeOldSpaceStart:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetFreeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setFree:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetHashBitsOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setHashBitsOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetHeapGrowthToSizeGCRatioStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setHeapGrowthToSizeGCRatio:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'allocation accounting' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetHeapSizeAtPreviousGCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setHeapSizeAtPreviousGC.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetHiddenRootsObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setHiddenRootsObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsGreyOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setIsGreyOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsImmutableOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setIsImmutableOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsMarkedOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setIsMarkedOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsPinnedOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setIsPinnedOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsRememberedOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setIsRememberedOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetLastSegmentStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setLastSegment:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetMaxOldSpaceSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setMaxOldSpaceSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetNextFreeChunkOfwithValuechunkBytesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #setNextFreeChunkOf:withValue:chunkBytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetNextFreeChunkOfwithValueisLilliputianSizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #setNextFreeChunkOf:withValue:isLilliputianSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetObjectFreeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setObjectFree:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetclassIndexToformatToStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #set:classIndexTo:formatTo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'word size' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testShiftForAllocationUnitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shiftForAllocationUnit.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testShouldBreakForLookupIngivenStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shouldBreakForLookupIn:given:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testShrinkThresholdStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shrinkThreshold:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - incremental' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testShutDownIncrementalGCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shutDownIncrementalGC:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSignalLowSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #signalLowSpace.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSizeBitsOfSafeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sizeBitsOfSafe:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSizeBitsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sizeBitsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSizeOfFreeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sizeOfFree:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSizeOfLargestFreeChunkStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sizeOfLargestFreeChunk.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSlidingCompactionRemapObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #slidingCompactionRemapObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSlidingCompactionShouldRemapObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #slidingCompactionShouldRemapObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSmallFloatBitsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #smallFloatBitsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSmallFloatObjectOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #smallFloatObjectOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSmallFloatSignBitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #smallFloatSignBit.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSpecialObjectsOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #specialObjectsOop:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSplObjputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #splObj:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStackValueofObjStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #stackValue:ofObjStack:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStartOfObjectgivenStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #startOfObject:given:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatCompMoveCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statCompMoveCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatCompactPassCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statCompactPassCount:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatCompactionUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statCompactionUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatFGCDeltaUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statFGCDeltaUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatFullGCUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statFullGCUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatFullGCsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statFullGCs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatGCEndUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statGCEndUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatGrowMemoryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statGrowMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatIGCDeltaUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statIGCDeltaUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatIncrGCUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statIncrGCUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatIncrGCsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statIncrGCs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatMarkCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statMarkCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatMarkUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statMarkUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatMaxAllocSegmentTimeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statMaxAllocSegmentTime:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatMkFwdCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statMkFwdCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatRootTableCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statRootTableCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatRootTableOverflowsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statRootTableOverflows.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatSGCDeltaUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statSGCDeltaUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatScavengeGCUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statScavengeGCUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatScavengesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statScavenges.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatShrinkMemoryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statShrinkMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatSpecialMarkCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statSpecialMarkCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatSweepCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statSweepCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatSweepUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statSweepUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStoreByteofObjectwithValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeByte:ofObject:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStoreLongofObjectwithValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeLong64:ofObject:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStorePointerImmutabilityCheckofObjectwithValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storePointerImmutabilityCheck:ofObject:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStorePointerNoAssertofFreeChunkwithValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storePointerNoAssert:ofFreeChunk:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStorePointerUncheckedofMaybeForwardedObjectwithValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storePointerUnchecked:ofMaybeForwardedObject:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStorePointerofForwarderwithValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storePointer:ofForwarder:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStorePointerofFreeChunkwithUncheckedValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storePointer:ofFreeChunk:withUncheckedValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStorePointerofFreeChunkwithValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storePointer:ofFreeChunk:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStorePointerofObjStackwithValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storePointer:ofObjStack:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStoreShortofObjectwithValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeShort16:ofObject:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSufficientSpaceToInstantiateindexableSizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #sufficientSpaceToInstantiate:indexableSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSwizzleFieldsOfFreeChunkStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #swizzleFieldsOfFreeChunk:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSwizzleFieldsOfObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #swizzleFieldsOfObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testTenuringThresholdStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #tenuringThreshold:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testTotalByteSizeOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #totalByteSizeOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testTotalFreeOldSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #totalFreeOldSpace:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testTotalMemorySizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #totalMemorySize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testTraceImmediatelySlotLimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #traceImmediatelySlotLimit.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testTrueObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #trueObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUniqueIndexallInstancesIntolimitresultsIntoStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #uniqueIndex:allInstancesInto:limit:resultsInto:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUnlinkFreeChunkatIndexchunkBytesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #unlinkFreeChunk:atIndex:chunkBytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUnlinkFreeChunkatIndexisLilliputianSizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #unlinkFreeChunk:atIndex:isLilliputianSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUnmarkAllObjectsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unmarkAllObjects.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUnmarkObjectsInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unmarkObjectsIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUnmarkSurvivingObjectsForCompactStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unmarkSurvivingObjectsForCompact.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUpdateFreeListsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updateFreeLists.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUpdateFullGCStatsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updateFullGCStats.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUpdatePostScavengeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updatePostScavenge:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUpdateRootOfObjStackAtwithStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updateRootOfObjStackAt:with:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUpdateSweepEndUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updateSweepEndUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testVanillaRemapObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #vanillaRemapObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testVanillaShouldRemapObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #vanillaShouldRemapObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testWeaklingStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #weaklingStack.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testWhereIsMaybeHeapThingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #whereIsMaybeHeapThing:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testWithSimulatorFetchPointerMovedAsideDoStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #withSimulatorFetchPointerMovedAsideDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testWordSizeClassIndexPunStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #wordSizeClassIndexPun.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> translator [
	^ MASpur64BitMemoryManagerRessource current translator
]
