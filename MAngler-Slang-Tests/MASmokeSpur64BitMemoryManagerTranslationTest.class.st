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
	| illiAST illiString |
	illiAST := self generateIllicium: #addFreeChunkWithBytes:at:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAddToFreeTreebytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #addToFreeTree:bytes:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAddressCouldBeOldObjStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #addressCouldBeOldObj:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAdjustAllOopsByStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #adjustAllOopsBy:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllExistingNewSpaceObjectsDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allExistingNewSpaceObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllExistingObjectsDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allExistingObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllExistingOldSpaceObjectsDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allExistingOldSpaceObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllFreeObjectsDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allFreeObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllHeapEntitiesDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allHeapEntitiesDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllNewSpaceEntitiesDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allNewSpaceEntitiesDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllNewSpaceObjectsDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allNewSpaceObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllObjectsDoSafelyStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allObjectsDoSafely:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllObjectsDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllObjectsInFreeTreeDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allObjectsInFreeTreeDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllObjectsInFreeTreedoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allObjectsInFreeTree:do:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allOldSpaceEntitiesDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesForCoalescingFromdoStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #allOldSpaceEntitiesForCoalescingFrom:do:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesForCompactingFromtodoStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #allOldSpaceEntitiesForCompactingFrom:to:do:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesFromdoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allOldSpaceEntitiesFrom:do:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesFromtodoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allOldSpaceEntitiesFrom:to:do:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceObjectsDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allOldSpaceObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllOldSpaceObjectsFromdoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allOldSpaceObjectsFrom:do:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllPastSpaceEntitiesDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allPastSpaceEntitiesDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllPastSpaceObjectsDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allPastSpaceObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllocateBytesclassIndexStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allocateBytes:classIndex:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllocateOldSpaceChunkOfBytessuchThatStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #allocateOldSpaceChunkOfBytes:suchThat:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllocateSlotsInOldSpaceformatclassIndexStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #allocateSlotsInOldSpace:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllocateSlotsformatclassIndexStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allocateSlots:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllocateSmallNewSpaceSlotsformatclassIndexStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #allocateSmallNewSpaceSlots:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAmbiguousClassallInstancesIntolimitresultsIntoStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #ambiguousClass:allInstancesInto:limit:resultsInto:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAreIntegersandStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #areIntegers:and:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAssertFreeChunkPrevHeadZeroStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #assertFreeChunkPrevHeadZero.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAssertValidFreeObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #assertValidFreeObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAssignClassIndicesAndPinFromtooutPointersfillingStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #assignClassIndicesAndPinFrom:to:outPointers:filling:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAssimilateNewSegmentStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #assimilateNewSegment:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAtLeastClassIndexHalfHeaderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #atLeastClassIndexHalfHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAttemptToShrinkStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #attemptToShrink.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAverageObjectSizeInBytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #averageObjectSizeInBytes.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBaseAddressOfImageStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #baseAddressOfImage.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBaseHeaderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #baseHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBeginSlidingCompactionStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #beginSlidingCompaction.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBooleanObjectOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #booleanObjectOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBootstrappingStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bootstrapping.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header format' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testByteFormatForNumBytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #byteFormatForNumBytes:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testByteSizeOfInstanceOferrIntoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #byteSizeOfInstanceOf:errInto:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testByteSizeOfInstanceOfwithIndexableSlotserrIntoStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #byteSizeOfInstanceOf:withIndexableSlots:errInto:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBytesInObjectgivenStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytesInObject:given:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBytesLeftInOldSpaceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytesLeftInOldSpace.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBytesLeftStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #bytesLeft:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCapacityOfObjStackStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #capacityOfObjStack:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCheapAddressCouldBeInHeapStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #cheapAddressCouldBeInHeap:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCheckCompactIndexisClassnamedStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #checkCompactIndex:isClass:named:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCheckForAvailableSlotsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #checkForAvailableSlots:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCheckForLeaksStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #checkForLeaks.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCheckFreeSpaceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #checkFreeSpace:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCheckMemoryMapStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #checkMemoryMap.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCheckOkayYoungReferrerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #checkOkayYoungReferrer:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testClassForClassTagStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #classForClassTag:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testClassFormatFromInstFormatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #classFormatFromInstFormat:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testClassIndexOfHeaderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #classIndexOfHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'plugin support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testClassMutexStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #classMutex.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testClassTableEntriesDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #classTableEntriesDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testClassTableIndexStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #classTableIndex:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testClassTagForSpecialObjectsIndexcompactClassIndexStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #classTagForSpecialObjectsIndex:compactClassIndex:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCleverSwapHeadersandcopyHashFlagStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #cleverSwapHeaders:and:copyHashFlag:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCoalesceandStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #coalesce:and:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCoallesceFreeChunkStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #coallesceFreeChunk:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'class membership' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCompactIndexOfClassStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #compactIndexOfClass:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCompactorStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #compactor.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header format' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCompiledMethodFormatForNumBytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #compiledMethodFormatForNumBytes:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testComputeFreeSpacePostSwizzleStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #computeFreeSpacePostSwizzle.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testContainsOnlyValidBecomeObjectsandtwoWaycopyHashStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #containsOnlyValidBecomeObjects:and:twoWay:copyHash:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCountNumClassPagesPreSwizzleStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #countNumClassPagesPreSwizzle:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testDequeueMournerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #dequeueMourner.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testDetachFreeObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #detachFreeObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'allocation accounting' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testDoAllocationAccountingForScavengeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #doAllocationAccountingForScavenge.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testDoBecomeandcopyHashStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #doBecome:and:copyHash:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testDoBecometocopyHashStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #doBecome:to:copyHash:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEdenBytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #edenBytes:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEeInstantiateMethodContextSlotsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #eeInstantiateMethodContextSlots:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEeInstantiateSmallClassIndexformatnumSlotsStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #eeInstantiateSmallClassIndex:format:numSlots:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEeInstantiateSmallClassnumSlotsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #eeInstantiateSmallClass:numSlots:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEekStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #eek.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEndSlidingCompactionStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #endSlidingCompaction.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEnsureBehaviorHashStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #ensureBehaviorHash:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEnsureHasOverflowHeaderforwardIfClonedStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #ensureHasOverflowHeader:forwardIfCloned:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEnsureNoNewObjectsInStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #ensureNoNewObjectsIn:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEnsureSemaphoreUnforwardedThroughContextStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #ensureSemaphoreUnforwardedThroughContext:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testEnterClassesIntoClassTableFromtoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #enterClassesIntoClassTableFrom:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testExponentOfSmallFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #exponentOfSmallFloat:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testExpungeDuplicateAndUnmarkedClassesStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #expungeDuplicateAndUnmarkedClasses:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFalseObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #falseObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFetchLongofObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #fetchLong64:ofObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFetchPointerofMaybeForwardedObjectStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #fetchPointer:ofMaybeForwardedObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFetchShortofObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #fetchShort16:ofObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFetchUnsignedShortofObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #fetchUnsignedShort16:ofObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFillObjnumSlotswithStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #fillObj:numSlots:with:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFireAllUnscannedEphemeronsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #fireAllUnscannedEphemerons.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFirstLilliputianChunkStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #firstLilliputianChunk.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFirstObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #firstObject.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFirstValidIndexOfIndexableObjectwithFormatStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #firstValidIndexOfIndexableObject:withFormat:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFlushEdenStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #flushEden.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFlushNewSpaceInstancesOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #flushNewSpaceInstancesOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFlushNewSpaceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #flushNewSpace.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'selective compaction' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowClassTableStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #followClassTable.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowForwardedInObjStackatIndexStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #followForwardedInObjStack:atIndex:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowForwardedObjStacksStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #followForwardedObjStacks.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #forwarding }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowMaybeForwardedStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #followMaybeForwarded:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #forwarding }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowOopFieldofObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #followOopField:ofObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'selective compaction' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowProcessListStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #followProcessList.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowSpecialObjectsOopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #followSpecialObjectsOop.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowedKeyOfEphemeronStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #followedKeyOfEphemeron:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFollowedKeyOfMaybeFiredEphemeronStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #followedKeyOfMaybeFiredEphemeron:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFormatOfHeaderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #formatOfHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testForwardSurvivortoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #forwardSurvivor:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testForwardUncheckedtoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #forwardUnchecked:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testForwardtoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #forward:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeChunkLargerIndexStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #freeChunkLargerIndex.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeChunkSmallerIndexStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #freeChunkSmallerIndex.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeListHeadsEmptyStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #freeListHeadsEmpty.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeListsObjStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #freeListsObj.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeListsObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #freeListsObject.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeOldSpaceStartStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #freeOldSpaceStart.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #freeSize.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFreeTreeNodesDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #freeTreeNodesDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFullGCLockStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #fullGCLock.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testGarbageCollectForSnapshotStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #garbageCollectForSnapshot.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testGcStartUsecsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #gcStartUsecs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testGlobalGarbageCollectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #globalGarbageCollect.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testGrowHeadroomStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #growHeadroom.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testGrowToAccomodateContainerWithNumSlotsStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #growToAccomodateContainerWithNumSlots:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasIdentityHashStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #hasIdentityHash:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasOverflowHeaderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #hasOverflowHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasPointerFieldsNonImmStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #hasPointerFieldsNonImm:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasPointerFieldsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #hasPointerFields:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasSixtyFourBitImmediatesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #hasSixtyFourBitImmediates.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'api characterization' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasSpurMemoryManagerAPIStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #hasSpurMemoryManagerAPI.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasYoungReferentsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #hasYoungReferents:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHashBitsOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #hashBitsOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHeapMapStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #heapMap.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header format' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIdentityHashFieldWidthStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #identityHashFieldWidth.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIdentityHashFullWordMaskStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #identityHashFullWordMask.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIfAProxyupdateCopyStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #ifAProxy:updateCopy:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIfOopInvalidForBecomeerrorCodeIntoStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #ifOopInvalidForBecome:errorCodeInto:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #immediates }
MASmokeSpur64BitMemoryManagerTranslationTest >> testImageFormatVersionStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #imageFormatVersion.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testImageSizeToWriteStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #imageSizeToWrite.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInLineRunLeakCheckerForexcludeUnmarkedObjsclassIndicesShouldBeValidStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #inLineRunLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInactiveOrFailedToDeferScanStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #inactiveOrFailedToDeferScan:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIncreaseFreeOldSpaceByStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #increaseFreeOldSpaceBy:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitSpaceForAllocationChecklimitStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initSpaceForAllocationCheck:limit:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitialHeadroomgivenFreeOldSpaceInImageStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #initialHeadroom:givenFreeOldSpaceInImage:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitializeFreeSpacePostLoadStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initializeFreeSpacePostLoad:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitializeMarkStackStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initializeMarkStack.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitializeOldSpaceFirstFreeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initializeOldSpaceFirstFree:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitializePostBootstrapStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initializePostBootstrap.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitializeUnscannedEphemeronsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initializeUnscannedEphemerons.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInitializeWeaklingStackStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initializeWeaklingStack.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInnerBecomeObjectsInandcopyHashStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #innerBecomeObjectsIn:and:copyHash:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInnerBecomeObjectsIntocopyHashStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #innerBecomeObjectsIn:to:copyHash:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header formats' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInstSpecForImmediateClassesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #instSpecForImmediateClasses.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInstanceAfterStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #instanceAfter:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInstantiateCompiledMethodClassindexableSizeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #instantiateCompiledMethodClass:indexableSize:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #immediates }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIntegerObjectOfCharacterObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #integerObjectOfCharacterObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsBytesNonImmStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isBytesNonImm:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsClassOfNonImmequalToStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isClassOfNonImm:equalTo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsClassOfNonImmequalTocompactClassIndexStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #isClassOfNonImm:equalTo:compactClassIndex:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsCompactInstanceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isCompactInstance:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsCompiledMethodHeaderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isCompiledMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsFloatInstanceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isFloatInstance:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsFloatOrIntStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isFloatOrInt:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsGreyStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isGrey:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsHiddenObjStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isHiddenObj:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsImmediateCharacterStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isImmediateCharacter:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsImmutableStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isImmutable:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #immediates }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsInRangeCharacterCodeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isInRangeCharacterCode:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header formats' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsIndexableFormatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isIndexableFormat:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsInstanceOfClassLargeNegativeIntegerStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #isInstanceOfClassLargeNegativeInteger:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsInstanceOfClassLargePositiveIntegerStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #isInstanceOfClassLargePositiveInteger:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsLargeIntegerInstanceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isLargeIntegerInstance:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsLongsNonImmStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isLong64sNonImm:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsLongsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isLong64s:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header formats' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsMaybeFiredEphemeronFormatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isMaybeFiredEphemeronFormat:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsMobileObjectHeaderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isMobileObjectHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsMobileObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isMobileObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsNegativeSmallFloatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isNegativeSmallFloat:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsNonIntegerImmediateStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isNonIntegerImmediate:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsNonIntegerNonImmediateStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isNonIntegerNonImmediate:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsNonIntegerObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isNonIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsNormalObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isNormalObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header formats' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsPointersFormatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isPointersFormat:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsPointersNonImmStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isPointersNonImm:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsPureBitsNonImmStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isPureBitsNonImm:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsRememberedObjectHeaderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isRememberedObjectHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsSemaphoreObjStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isSemaphoreObj:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsSemaphoreOopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isSemaphoreOop:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsShortsNonImmStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isShortsNonImm:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsShortsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isShorts:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsSmallFloatZeroStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isSmallFloatZero:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsValidClassIndexStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isValidClassIndex:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsWordsNonImmStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isWordsNonImm:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsWordsOrBytesNonImmStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #isWordsOrBytesNonImm:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsinstanceOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #is:instanceOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsoutPointerClassHashForinlimitStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #is:outPointerClassHashFor:in:limit:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testKeyOfMaybeFiredEphemeronStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #keyOfMaybeFiredEphemeron:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLargeObjectBytesForSlotsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #largeObjectBytesForSlots:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLastHashStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lastHash:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLastPointerOfArrayStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lastPointerOfArray:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLastPointerOfMethodHeaderStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lastPointerOfMethodHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLeakCheckImageSegmentsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #leakCheckImageSegments.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLengthOfbaseHeaderformatStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lengthOf:baseHeader:format:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLilliputianChunkIndexStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lilliputianChunkIndex.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLoadFloatOrIntFromStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #loadFloatOrIntFrom:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLogBytesPerOopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #logBytesPerOop.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLowSpaceThresholdStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lowSpaceThreshold:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMapOopsAndValidateClassRefsFromtooutPointersStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #mapOopsAndValidateClassRefsFrom:to:outPointers:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMapSignedSmallFloatToSignedSmallFloatZeroStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #mapSignedSmallFloatToSignedSmallFloatZero:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkAccessibleObjectsAndFireEphemeronsStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #markAccessibleObjectsAndFireEphemerons.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkAllUnscannedEphemeronsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markAllUnscannedEphemerons.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkAndShouldScanStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markAndShouldScan:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceExtraRootsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markAndTraceExtraRoots.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceHiddenRootsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markAndTraceHiddenRoots.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkAndTraceWeaklingsFromStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markAndTraceWeaklingsFrom:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkAsCopiedIntoSegmentStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markAsCopiedIntoSegment:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkLoopFromStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markLoopFrom:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkObjectsInStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markObjectsIn:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkStackStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #markStack.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMarkStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #mark:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMaxCIntegerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #maxCInteger.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMaxIdentityHashStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #maxIdentityHash.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMaxSlotsForNewSpaceAllocStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #maxSlotsForNewSpaceAlloc.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMemoryBaseForImageReadStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #memoryBaseForImageRead.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMemoryLimitStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #memoryLimit.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMemorySchedulerPointerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #memorySchedulerPointer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMemoryStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #memory:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMethodCacheHashOfwithStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #methodCacheHashOf:with:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMethodDictionaryHashmaskStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #methodDictionaryHash:mask:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMethodHeaderFromSavedFirstFieldStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #methodHeaderFromSavedFirstField:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMournQueueStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #mournQueue.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMoveClassesForwardsInStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #moveClassesForwardsIn:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNaiveSwapHeadersandcopyHashFlagStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #naiveSwapHeaders:and:copyHashFlag:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNeedGCFlagStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #needGCFlag.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNegativeSmallFloatZeroStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #negativeSmallFloatZero.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNewHashBitsOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #newHashBitsOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNewOutPointeratinhashesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #newOutPointer:at:in:hashes:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNewSpaceBytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #newSpaceBytes.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNewSpaceRefCountMaskStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #newSpaceRefCountMask.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNewSpaceSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #newSpaceSize.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNewSpaceStartStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #newSpaceStart.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNilFieldsOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nilFieldsOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNilObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nilObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNilUnmarkedWeaklingSlotsInStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nilUnmarkedWeaklingSlotsIn:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #forwarding }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNoInlineFollowForwardedStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #noInlineFollowForwarded:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumBitUnitsOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #num64BitUnitsOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object format' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumFixedSlotsOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #numFixedSlotsOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header format' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumSlotsForBytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #numSlotsForBytes:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumSlotsForShorteningtoIndexableSizeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #numSlotsForShortening:toIndexableSize:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumSmallIntegerBitsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #numSmallIntegerBits.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumSmallIntegerTagBitsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #numSmallIntegerTagBits.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumStrongSlotsOfformatephemeronInactiveIfStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #numStrongSlotsOf:format:ephemeronInactiveIf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumSurvivorSpacesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #numSurvivorSpaces.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumberOfForwardersStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #numberOfForwarders.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testObjStackdoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #objStack:do:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testObjStackfromdoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #objStack:from:do:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testObjectAfterlimitStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #objectAfter:limit:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testObjectBytesForSlotsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #objectBytesForSlots:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testObjectWithRawSlotsHasOverflowHeaderStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #objectWithRawSlotsHasOverflowHeader:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testOldRawNumSlotsOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #oldRawNumSlotsOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'cog jit support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testOldSmallFloatTagStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #oldSmallFloatTag.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testOldSpaceSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #oldSpaceSize.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPositiveSmallFloatZeroStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #positiveSmallFloatZero.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'store check' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPossibleRootStoreIntoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #possibleRootStoreInto:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPrepareObjStackForPlanningCompactorStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #prepareObjStackForPlanningCompactor:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPrepareObjStacksForPlanningCompactorStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #prepareObjStacksForPlanningCompactor.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPrintInvalidClassTableHashesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printInvalidClassTableHashes.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPurgeDuplicateClassTableEntriesForStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #purgeDuplicateClassTableEntriesFor:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPushonObjStackStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #push:onObjStack:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRawClassTagForClassStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #rawClassTagForClass:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRawNumSlotsOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #rawNumSlotsOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRawNumSlotsOfputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #rawNumSlotsOf:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRawOverflowSlotsOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #rawOverflowSlotsOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRawOverflowSlotsOfputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #rawOverflowSlotsOf:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRelocateObjStacksForPlanningCompactorStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #relocateObjStacksForPlanningCompactor.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRemapBufferStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #remapBuffer.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRemapStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #remap:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRememberedSetObjStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #rememberedSetObj.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'allocation accounting' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testResetAllocationAccountingAfterGCStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #resetAllocationAccountingAfterGC.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testResetFreeListHeadsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #resetFreeListHeads.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRestoreObjectsInsavedHashesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #restoreObjectsIn:savedHashes:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRestoreObjectsInupTosavedFirstFieldsStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #restoreObjectsIn:upTo:savedFirstFields:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testReverseBytesFromtoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #reverseBytesFrom:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testReverseBytesInBitWordsFromtoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #reverseBytesIn32BitWordsFrom:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testReverseBytesInMemoryStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #reverseBytesInMemory.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRotateLeftStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #rotateLeft:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRotateRightStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #rotateRight:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRotatedFloatBitsOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #rotatedFloatBitsOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRoundBytesToAllocationUnitStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #roundBytesToAllocationUnit:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRoundUpHeapSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #roundUpHeapSize:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRtRefCountOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #rtRefCountOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRtRefCountOfputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #rtRefCountOf:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSafePrintStringOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #safePrintStringOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSavedOutHashFillValueStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #savedOutHashFillValue.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #testing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testScavengeInProgressStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #scavengeInProgress.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testScavengeThresholdAsExtentStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #scavengeThresholdAsExtent.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testScavengeThresholdStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #scavengeThreshold.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpur64BitMemoryManagerTranslationTest >> testScavengerDenominatorStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #scavengerDenominator.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testScavengingGCStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #scavengingGC.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testScheduleScavengeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #scheduleScavenge.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSegmentManagerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #segmentManager.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetCheckForLeaksStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setCheckForLeaks:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetClassIndexOftoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setClassIndexOf:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'allocation accounting' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetCurrentAllocatedBytesToStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setCurrentAllocatedBytesTo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetEndOfMemoryStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setEndOfMemory:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetFormatOftoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setFormatOf:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetFreeOldSpaceStartStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setFreeOldSpaceStart:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetFreeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setFree:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetHashBitsOftoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setHashBitsOf:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetHeapGrowthToSizeGCRatioStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setHeapGrowthToSizeGCRatio:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'allocation accounting' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetHeapSizeAtPreviousGCStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setHeapSizeAtPreviousGC.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetHiddenRootsObjStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setHiddenRootsObj:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsGreyOftoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setIsGreyOf:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsImmutableOftoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setIsImmutableOf:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsMarkedOftoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setIsMarkedOf:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsPinnedOftoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setIsPinnedOf:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsRememberedOftoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setIsRememberedOf:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetLastSegmentStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setLastSegment:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetMaxOldSpaceSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setMaxOldSpaceSize:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetNextFreeChunkOfwithValuechunkBytesStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #setNextFreeChunkOf:withValue:chunkBytes:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetNextFreeChunkOfwithValueisLilliputianSizeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #setNextFreeChunkOf:withValue:isLilliputianSize:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetObjectFreeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setObjectFree:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetclassIndexToformatToStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #set:classIndexTo:formatTo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'word size' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testShiftForAllocationUnitStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #shiftForAllocationUnit.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testShouldBreakForLookupIngivenStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #shouldBreakForLookupIn:given:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testShrinkThresholdStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #shrinkThreshold:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - incremental' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testShutDownIncrementalGCStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #shutDownIncrementalGC:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSignalLowSpaceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #signalLowSpace.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSizeBitsOfSafeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #sizeBitsOfSafe:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSizeBitsOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #sizeBitsOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSizeOfFreeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #sizeOfFree:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSizeOfLargestFreeChunkStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #sizeOfLargestFreeChunk.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSlidingCompactionRemapObjStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #slidingCompactionRemapObj:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSlidingCompactionShouldRemapObjStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #slidingCompactionShouldRemapObj:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSmallFloatBitsOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #smallFloatBitsOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSmallFloatObjectOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #smallFloatObjectOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSmallFloatSignBitStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #smallFloatSignBit.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSpecialObjectsOopStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #specialObjectsOop:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSplObjputStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #splObj:put:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStackValueofObjStackStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #stackValue:ofObjStack:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStartOfObjectgivenStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #startOfObject:given:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatCompMoveCountStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statCompMoveCount.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatCompactPassCountStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statCompactPassCount:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatCompactionUsecsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statCompactionUsecs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatFGCDeltaUsecsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statFGCDeltaUsecs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatFullGCUsecsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statFullGCUsecs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatFullGCsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statFullGCs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatGCEndUsecsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statGCEndUsecs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatGrowMemoryStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statGrowMemory.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatIGCDeltaUsecsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statIGCDeltaUsecs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatIncrGCUsecsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statIncrGCUsecs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatIncrGCsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statIncrGCs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatMarkCountStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statMarkCount.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatMarkUsecsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statMarkUsecs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatMaxAllocSegmentTimeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statMaxAllocSegmentTime:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatMkFwdCountStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statMkFwdCount.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatRootTableCountStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statRootTableCount.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatRootTableOverflowsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statRootTableOverflows.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatSGCDeltaUsecsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statSGCDeltaUsecs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatScavengeGCUsecsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statScavengeGCUsecs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatScavengesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statScavenges.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatShrinkMemoryStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statShrinkMemory.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatSpecialMarkCountStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statSpecialMarkCount.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatSweepCountStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statSweepCount.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStatSweepUsecsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statSweepUsecs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStoreByteofObjectwithValueStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #storeByte:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStoreLongofObjectwithValueStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #storeLong64:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStorePointerImmutabilityCheckofObjectwithValueStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #storePointerImmutabilityCheck:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStorePointerNoAssertofFreeChunkwithValueStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #storePointerNoAssert:ofFreeChunk:withValue:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStorePointerUncheckedofMaybeForwardedObjectwithValueStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #storePointerUnchecked:ofMaybeForwardedObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStorePointerofForwarderwithValueStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #storePointer:ofForwarder:withValue:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStorePointerofFreeChunkwithUncheckedValueStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #storePointer:ofFreeChunk:withUncheckedValue:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStorePointerofFreeChunkwithValueStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #storePointer:ofFreeChunk:withValue:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStorePointerofObjStackwithValueStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #storePointer:ofObjStack:withValue:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testStoreShortofObjectwithValueStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #storeShort16:ofObject:withValue:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSufficientSpaceToInstantiateindexableSizeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #sufficientSpaceToInstantiate:indexableSize:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSwizzleFieldsOfFreeChunkStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #swizzleFieldsOfFreeChunk:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSwizzleFieldsOfObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #swizzleFieldsOfObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testTenuringThresholdStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #tenuringThreshold:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testTotalByteSizeOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #totalByteSizeOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testTotalFreeOldSpaceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #totalFreeOldSpace:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testTotalMemorySizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #totalMemorySize.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testTraceImmediatelySlotLimitStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #traceImmediatelySlotLimit.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testTrueObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #trueObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUniqueIndexallInstancesIntolimitresultsIntoStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #uniqueIndex:allInstancesInto:limit:resultsInto:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUnlinkFreeChunkatIndexchunkBytesStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #unlinkFreeChunk:atIndex:chunkBytes:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUnlinkFreeChunkatIndexisLilliputianSizeStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #unlinkFreeChunk:atIndex:isLilliputianSize:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUnmarkAllObjectsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unmarkAllObjects.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUnmarkObjectsInStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unmarkObjectsIn:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUnmarkSurvivingObjectsForCompactStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unmarkSurvivingObjectsForCompact.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUpdateFreeListsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #updateFreeLists.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUpdateFullGCStatsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #updateFullGCStats.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUpdatePostScavengeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #updatePostScavenge:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUpdateRootOfObjStackAtwithStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #updateRootOfObjStackAt:with:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testUpdateSweepEndUsecsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #updateSweepEndUsecs.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testVanillaRemapObjStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #vanillaRemapObj:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testVanillaShouldRemapObjStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #vanillaShouldRemapObj:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testWeaklingStackStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #weaklingStack.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testWhereIsMaybeHeapThingStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #whereIsMaybeHeapThing:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testWithSimulatorFetchPointerMovedAsideDoStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #withSimulatorFetchPointerMovedAsideDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testWordSizeClassIndexPunStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #wordSizeClassIndexPun.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> translator [
	^ MASpur64BitMemoryManagerRessource current translator
]
