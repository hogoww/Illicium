Class {
	#name : #MASmokeSpurMemoryManagerTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MASmokeSpurMemoryManagerTranslationTest >> setUp [
	super setUp.
	testedClass := SpurMemoryManager
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testAddFreeChunkWithBytesatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #addFreeChunkWithBytes:at:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testAddToFreeTreebytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #addToFreeTree:bytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurMemoryManagerTranslationTest >> testAddressCouldBeOldObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #addressCouldBeOldObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testAdjustAllOopsByStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #adjustAllOopsBy:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpurMemoryManagerTranslationTest >> testAllExistingNewSpaceObjectsDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allExistingNewSpaceObjectsDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpurMemoryManagerTranslationTest >> testAllExistingObjectsDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allExistingObjectsDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpurMemoryManagerTranslationTest >> testAllExistingOldSpaceObjectsDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allExistingOldSpaceObjectsDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testAllFreeObjectsDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allFreeObjectsDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testAllObjectsInFreeTreeDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allObjectsInFreeTreeDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testAllObjectsInFreeTreedoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allObjectsInFreeTree:do:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpurMemoryManagerTranslationTest >> testAllOldSpaceEntitiesForCoalescingFromdoStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #allOldSpaceEntitiesForCoalescingFrom:do:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpurMemoryManagerTranslationTest >> testAllOldSpaceObjectsDoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allOldSpaceObjectsDo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpurMemoryManagerTranslationTest >> testAllocateBytesclassIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allocateBytes:classIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpurMemoryManagerTranslationTest >> testAllocateSlotsInOldSpaceformatclassIndexStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #allocateSlotsInOldSpace:format:classIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpurMemoryManagerTranslationTest >> testAllocateSmallNewSpaceSlotsformatclassIndexStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #allocateSmallNewSpaceSlots:format:classIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpurMemoryManagerTranslationTest >> testAreIntegersandStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #areIntegers:and:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testAssertFreeChunkPrevHeadZeroStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #assertFreeChunkPrevHeadZero.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testAssertValidFreeObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #assertValidFreeObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testAssignClassIndicesAndPinFromtooutPointersfillingStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #assignClassIndicesAndPinFrom:to:outPointers:filling:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpurMemoryManagerTranslationTest >> testAssimilateNewSegmentStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #assimilateNewSegment:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurMemoryManagerTranslationTest >> testAtLeastClassIndexHalfHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #atLeastClassIndexHalfHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpurMemoryManagerTranslationTest >> testAttemptToShrinkStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #attemptToShrink.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testAverageObjectSizeInBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #averageObjectSizeInBytes.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testBaseAddressOfImageStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #baseAddressOfImage.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpurMemoryManagerTranslationTest >> testBaseHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #baseHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpurMemoryManagerTranslationTest >> testBeginSlidingCompactionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #beginSlidingCompaction.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpurMemoryManagerTranslationTest >> testBooleanObjectOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #booleanObjectOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testBootstrappingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bootstrapping.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header format' }
MASmokeSpurMemoryManagerTranslationTest >> testByteFormatForNumBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #byteFormatForNumBytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testBytesLeftInOldSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytesLeftInOldSpace.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testBytesLeftStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytesLeft:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpurMemoryManagerTranslationTest >> testCapacityOfObjStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #capacityOfObjStack:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurMemoryManagerTranslationTest >> testCheapAddressCouldBeInHeapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #cheapAddressCouldBeInHeap:.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpurMemoryManagerTranslationTest >> testCheckCompactIndexisClassnamedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkCompactIndex:isClass:named:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpurMemoryManagerTranslationTest >> testCheckForAvailableSlotsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkForAvailableSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testCheckForLeaksStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkForLeaks.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurMemoryManagerTranslationTest >> testCheckFreeSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkFreeSpace:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurMemoryManagerTranslationTest >> testCheckMemoryMapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkMemoryMap.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurMemoryManagerTranslationTest >> testCheckOkayYoungReferrerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #checkOkayYoungReferrer:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpurMemoryManagerTranslationTest >> testClassForClassTagStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #classForClassTag:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testClassFormatFromInstFormatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #classFormatFromInstFormat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpurMemoryManagerTranslationTest >> testClassIndexOfHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #classIndexOfHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'plugin support' }
MASmokeSpurMemoryManagerTranslationTest >> testClassMutexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #classMutex.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testClassTableIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #classTableIndex.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpurMemoryManagerTranslationTest >> testClassTagForSpecialObjectsIndexcompactClassIndexStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #classTagForSpecialObjectsIndex:compactClassIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpurMemoryManagerTranslationTest >> testCleverSwapHeadersandcopyHashFlagStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #cleverSwapHeaders:and:copyHashFlag:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurMemoryManagerTranslationTest >> testCoallesceFreeChunkStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #coallesceFreeChunk:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class membership' }
MASmokeSpurMemoryManagerTranslationTest >> testCompactIndexOfClassStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #compactIndexOfClass:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testCompactorStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #compactor.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header format' }
MASmokeSpurMemoryManagerTranslationTest >> testCompiledMethodFormatForNumBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #compiledMethodFormatForNumBytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testComputeFreeSpacePostSwizzleStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #computeFreeSpacePostSwizzle.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpurMemoryManagerTranslationTest >> testContainsOnlyValidBecomeObjectsandtwoWaycopyHashStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #containsOnlyValidBecomeObjects:and:twoWay:copyHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpurMemoryManagerTranslationTest >> testCountNumClassPagesPreSwizzleStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #countNumClassPagesPreSwizzle:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurMemoryManagerTranslationTest >> testDequeueMournerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #dequeueMourner.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testDetachFreeObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #detachFreeObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'allocation accounting' }
MASmokeSpurMemoryManagerTranslationTest >> testDoAllocationAccountingForScavengeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #doAllocationAccountingForScavenge.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpurMemoryManagerTranslationTest >> testDoBecomeandcopyHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #doBecome:and:copyHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpurMemoryManagerTranslationTest >> testDoBecometocopyHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #doBecome:to:copyHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testEdenBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #edenBytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpurMemoryManagerTranslationTest >> testEeInstantiateMethodContextSlotsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #eeInstantiateMethodContextSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpurMemoryManagerTranslationTest >> testEeInstantiateSmallClassIndexformatnumSlotsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #eeInstantiateSmallClassIndex:format:numSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpurMemoryManagerTranslationTest >> testEeInstantiateSmallClassnumSlotsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #eeInstantiateSmallClass:numSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurMemoryManagerTranslationTest >> testEekStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #eek.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpurMemoryManagerTranslationTest >> testEndSlidingCompactionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #endSlidingCompaction.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpurMemoryManagerTranslationTest >> testEnsureBehaviorHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ensureBehaviorHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testEnsureHasOverflowHeaderforwardIfClonedStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #ensureHasOverflowHeader:forwardIfCloned:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testEnsureNoNewObjectsInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ensureNoNewObjectsIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpurMemoryManagerTranslationTest >> testEnsureSemaphoreUnforwardedThroughContextStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #ensureSemaphoreUnforwardedThroughContext:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testEnterClassesIntoClassTableFromtoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #enterClassesIntoClassTableFrom:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpurMemoryManagerTranslationTest >> testExpungeDuplicateAndUnmarkedClassesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #expungeDuplicateAndUnmarkedClasses:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testFalseObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #falseObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testFetchLongofObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fetchLong64:ofObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpurMemoryManagerTranslationTest >> testFetchPointerofMaybeForwardedObjectStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #fetchPointer:ofMaybeForwardedObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testFetchShortofObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fetchShort16:ofObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testFetchUnsignedShortofObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fetchUnsignedShort16:ofObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurMemoryManagerTranslationTest >> testFireAllUnscannedEphemeronsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fireAllUnscannedEphemerons.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testFirstLilliputianChunkStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #firstLilliputianChunk.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpurMemoryManagerTranslationTest >> testFirstObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #firstObject.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeSpurMemoryManagerTranslationTest >> testFirstValidIndexOfIndexableObjectwithFormatStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #firstValidIndexOfIndexableObject:withFormat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpurMemoryManagerTranslationTest >> testFlushEdenStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushEden.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpurMemoryManagerTranslationTest >> testFlushNewSpaceInstancesOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushNewSpaceInstancesOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpurMemoryManagerTranslationTest >> testFlushNewSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #flushNewSpace.
	self prettyPrintIllicium: illiAST
]

{ #category : #'selective compaction' }
MASmokeSpurMemoryManagerTranslationTest >> testFollowClassTableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followClassTable.
	self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpurMemoryManagerTranslationTest >> testFollowForwardedInObjStackatIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followForwardedInObjStack:atIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurMemoryManagerTranslationTest >> testFollowForwardedObjStacksStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followForwardedObjStacks.
	self prettyPrintIllicium: illiAST
]

{ #category : #forwarding }
MASmokeSpurMemoryManagerTranslationTest >> testFollowMaybeForwardedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followMaybeForwarded:.
	self prettyPrintIllicium: illiAST
]

{ #category : #forwarding }
MASmokeSpurMemoryManagerTranslationTest >> testFollowOopFieldofObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followOopField:ofObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'selective compaction' }
MASmokeSpurMemoryManagerTranslationTest >> testFollowProcessListStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followProcessList.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpurMemoryManagerTranslationTest >> testFollowSpecialObjectsOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followSpecialObjectsOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testFollowedKeyOfEphemeronStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followedKeyOfEphemeron:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testFollowedKeyOfMaybeFiredEphemeronStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #followedKeyOfMaybeFiredEphemeron:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testFormatOfHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #formatOfHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpurMemoryManagerTranslationTest >> testForwardSurvivortoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #forwardSurvivor:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpurMemoryManagerTranslationTest >> testForwardUncheckedtoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #forwardUnchecked:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpurMemoryManagerTranslationTest >> testForwardtoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #forward:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testFreeChunkLargerIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeChunkLargerIndex.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testFreeChunkSmallerIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeChunkSmallerIndex.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testFreeListHeadsEmptyStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeListHeadsEmpty.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testFreeListsObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeListsObj.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testFreeListsObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeListsObject.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testFreeOldSpaceStartStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeOldSpaceStart.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testFreeSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #freeSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurMemoryManagerTranslationTest >> testFullGCLockStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fullGCLock.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testGarbageCollectForSnapshotStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #garbageCollectForSnapshot.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testGcStartUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #gcStartUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurMemoryManagerTranslationTest >> testGlobalGarbageCollectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #globalGarbageCollect.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testGrowHeadroomStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #growHeadroom:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpurMemoryManagerTranslationTest >> testGrowToAccomodateContainerWithNumSlotsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #growToAccomodateContainerWithNumSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpurMemoryManagerTranslationTest >> testHasIdentityHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hasIdentityHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpurMemoryManagerTranslationTest >> testHasOverflowHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hasOverflowHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testHasPointerFieldsNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hasPointerFieldsNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testHasPointerFieldsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hasPointerFields:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'api characterization' }
MASmokeSpurMemoryManagerTranslationTest >> testHasSpurMemoryManagerAPIStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hasSpurMemoryManagerAPI.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testHasYoungReferentsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hasYoungReferents:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpurMemoryManagerTranslationTest >> testHashBitsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hashBitsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurMemoryManagerTranslationTest >> testHeapMapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #heapMap.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header format' }
MASmokeSpurMemoryManagerTranslationTest >> testIdentityHashFieldWidthStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #identityHashFieldWidth.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpurMemoryManagerTranslationTest >> testIdentityHashFullWordMaskStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #identityHashFullWordMask.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testIfAProxyupdateCopyStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #ifAProxy:updateCopy:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testImageSizeToWriteStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #imageSizeToWrite.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurMemoryManagerTranslationTest >> testInLineRunLeakCheckerForexcludeUnmarkedObjsclassIndicesShouldBeValidStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #inLineRunLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurMemoryManagerTranslationTest >> testInactiveOrFailedToDeferScanStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #inactiveOrFailedToDeferScan:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testIncreaseFreeOldSpaceByStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #increaseFreeOldSpaceBy:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpurMemoryManagerTranslationTest >> testInitSpaceForAllocationChecklimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initSpaceForAllocationCheck:limit:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testInitialHeadroomgivenFreeOldSpaceInImageStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #initialHeadroom:givenFreeOldSpaceInImage:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testInitializeFreeSpacePostLoadStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeFreeSpacePostLoad:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurMemoryManagerTranslationTest >> testInitializeMarkStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeMarkStack.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testInitializeOldSpaceFirstFreeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeOldSpaceFirstFree:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpurMemoryManagerTranslationTest >> testInitializePostBootstrapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializePostBootstrap.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurMemoryManagerTranslationTest >> testInitializeUnscannedEphemeronsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeUnscannedEphemerons.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurMemoryManagerTranslationTest >> testInitializeWeaklingStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeWeaklingStack.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpurMemoryManagerTranslationTest >> testInnerBecomeObjectsInandcopyHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #innerBecomeObjectsIn:and:copyHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpurMemoryManagerTranslationTest >> testInnerBecomeObjectsIntocopyHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #innerBecomeObjectsIn:to:copyHash:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header formats' }
MASmokeSpurMemoryManagerTranslationTest >> testInstSpecForImmediateClassesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #instSpecForImmediateClasses.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpurMemoryManagerTranslationTest >> testInstanceAfterStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #instanceAfter:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testIsBytesNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isBytesNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testIsClassOfNonImmequalToStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isClassOfNonImm:equalTo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testIsClassOfNonImmequalTocompactClassIndexStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #isClassOfNonImm:equalTo:compactClassIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurMemoryManagerTranslationTest >> testIsCompactInstanceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isCompactInstance:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testIsCompiledMethodHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isCompiledMethodHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpurMemoryManagerTranslationTest >> testIsGreyStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isGrey:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurMemoryManagerTranslationTest >> testIsHiddenObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isHiddenObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpurMemoryManagerTranslationTest >> testIsImmutableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isImmutable:.
	self prettyPrintIllicium: illiAST
]

{ #category : #immediates }
MASmokeSpurMemoryManagerTranslationTest >> testIsInRangeCharacterCodeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isInRangeCharacterCode:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header formats' }
MASmokeSpurMemoryManagerTranslationTest >> testIsIndexableFormatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isIndexableFormat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpurMemoryManagerTranslationTest >> testIsInstanceOfClassLargeNegativeIntegerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #isInstanceOfClassLargeNegativeInteger:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpurMemoryManagerTranslationTest >> testIsInstanceOfClassLargePositiveIntegerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #isInstanceOfClassLargePositiveInteger:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpurMemoryManagerTranslationTest >> testIsLargeIntegerInstanceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isLargeIntegerInstance:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testIsLongsNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isLong64sNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testIsLongsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isLong64s:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header formats' }
MASmokeSpurMemoryManagerTranslationTest >> testIsMaybeFiredEphemeronFormatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isMaybeFiredEphemeronFormat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpurMemoryManagerTranslationTest >> testIsMobileObjectHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isMobileObjectHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpurMemoryManagerTranslationTest >> testIsMobileObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isMobileObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testIsNonIntegerImmediateStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isNonIntegerImmediate:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testIsNonIntegerNonImmediateStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isNonIntegerNonImmediate:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpurMemoryManagerTranslationTest >> testIsNormalObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isNormalObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header formats' }
MASmokeSpurMemoryManagerTranslationTest >> testIsPointersFormatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isPointersFormat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testIsPointersNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isPointersNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testIsPureBitsNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isPureBitsNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpurMemoryManagerTranslationTest >> testIsRememberedObjectHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isRememberedObjectHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testIsSemaphoreObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isSemaphoreObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testIsSemaphoreOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isSemaphoreOop:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testIsShortsNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isShortsNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testIsShortsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isShorts:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpurMemoryManagerTranslationTest >> testIsValidClassIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isValidClassIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpurMemoryManagerTranslationTest >> testIsWordsOrBytesNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isWordsOrBytesNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testIsinstanceOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #is:instanceOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testIsoutPointerClassHashForinlimitStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #is:outPointerClassHashFor:in:limit:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testKeyOfMaybeFiredEphemeronStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #keyOfMaybeFiredEphemeron:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testLastHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lastHash.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpurMemoryManagerTranslationTest >> testLastPointerOfArrayStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lastPointerOfArray:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpurMemoryManagerTranslationTest >> testLastPointerOfMethodHeaderStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lastPointerOfMethodHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurMemoryManagerTranslationTest >> testLeakCheckImageSegmentsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #leakCheckImageSegments.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testLengthOfbaseHeaderformatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lengthOf:baseHeader:format:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testLilliputianChunkIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lilliputianChunkIndex.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testLowSpaceThresholdStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lowSpaceThreshold:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testMapOopsAndValidateClassRefsFromtooutPointersStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #mapOopsAndValidateClassRefsFrom:to:outPointers:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurMemoryManagerTranslationTest >> testMarkAccessibleObjectsAndFireEphemeronsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #markAccessibleObjectsAndFireEphemerons.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurMemoryManagerTranslationTest >> testMarkAllUnscannedEphemeronsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAllUnscannedEphemerons.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurMemoryManagerTranslationTest >> testMarkAndShouldScanStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndShouldScan:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurMemoryManagerTranslationTest >> testMarkAndTraceExtraRootsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndTraceExtraRoots.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurMemoryManagerTranslationTest >> testMarkAndTraceHiddenRootsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndTraceHiddenRoots.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurMemoryManagerTranslationTest >> testMarkAndTraceWeaklingsFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAndTraceWeaklingsFrom:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testMarkAsCopiedIntoSegmentStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markAsCopiedIntoSegment:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurMemoryManagerTranslationTest >> testMarkLoopFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markLoopFrom:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testMarkObjectsInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markObjectsIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpurMemoryManagerTranslationTest >> testMarkStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markStack.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpurMemoryManagerTranslationTest >> testMarkStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mark:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testMaxIdentityHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maxIdentityHash.
	self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpurMemoryManagerTranslationTest >> testMaxSlotsForNewSpaceAllocStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maxSlotsForNewSpaceAlloc.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testMemoryBaseForImageReadStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #memoryBaseForImageRead.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testMemoryLimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #memoryLimit.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testMemorySchedulerPointerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #memorySchedulerPointer.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testMemoryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #memory:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpurMemoryManagerTranslationTest >> testMethodCacheHashOfwithStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #methodCacheHashOf:with:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurMemoryManagerTranslationTest >> testMethodHeaderFromSavedFirstFieldStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #methodHeaderFromSavedFirstField:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpurMemoryManagerTranslationTest >> testMournQueueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #mournQueue.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testMoveClassesForwardsInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #moveClassesForwardsIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'become implementation' }
MASmokeSpurMemoryManagerTranslationTest >> testNaiveSwapHeadersandcopyHashFlagStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #naiveSwapHeaders:and:copyHashFlag:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testNeedGCFlagStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #needGCFlag.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpurMemoryManagerTranslationTest >> testNewHashBitsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #newHashBitsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testNewOutPointeratinhashesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #newOutPointer:at:in:hashes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testNewSpaceBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #newSpaceBytes.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpurMemoryManagerTranslationTest >> testNewSpaceRefCountMaskStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #newSpaceRefCountMask.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testNewSpaceSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #newSpaceSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testNewSpaceStartStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #newSpaceStart.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpurMemoryManagerTranslationTest >> testNilFieldsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nilFieldsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testNilObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nilObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurMemoryManagerTranslationTest >> testNilUnmarkedWeaklingSlotsInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nilUnmarkedWeaklingSlotsIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #forwarding }
MASmokeSpurMemoryManagerTranslationTest >> testNoInlineFollowForwardedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #noInlineFollowForwarded:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testNumBitUnitsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #num32BitUnitsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object format' }
MASmokeSpurMemoryManagerTranslationTest >> testNumFixedSlotsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #numFixedSlotsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header format' }
MASmokeSpurMemoryManagerTranslationTest >> testNumSlotsForBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #numSlotsForBytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testNumStrongSlotsOfformatephemeronInactiveIfStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #numStrongSlotsOf:format:ephemeronInactiveIf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurMemoryManagerTranslationTest >> testNumSurvivorSpacesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #numSurvivorSpaces.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurMemoryManagerTranslationTest >> testNumberOfForwardersStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #numberOfForwarders.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpurMemoryManagerTranslationTest >> testObjectWithRawSlotsHasOverflowHeaderStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #objectWithRawSlotsHasOverflowHeader:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testOldSpaceSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #oldSpaceSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'store check' }
MASmokeSpurMemoryManagerTranslationTest >> testPossibleRootStoreIntoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #possibleRootStoreInto:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurMemoryManagerTranslationTest >> testPrepareObjStackForPlanningCompactorStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #prepareObjStackForPlanningCompactor:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurMemoryManagerTranslationTest >> testPrepareObjStacksForPlanningCompactorStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #prepareObjStacksForPlanningCompactor.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpurMemoryManagerTranslationTest >> testPrintInvalidClassTableHashesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printInvalidClassTableHashes.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpurMemoryManagerTranslationTest >> testPurgeDuplicateClassTableEntriesForStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #purgeDuplicateClassTableEntriesFor:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpurMemoryManagerTranslationTest >> testPushonObjStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #push:onObjStack:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpurMemoryManagerTranslationTest >> testRawClassTagForClassStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rawClassTagForClass:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testRawNumSlotsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rawNumSlotsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testRawNumSlotsOfputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rawNumSlotsOf:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurMemoryManagerTranslationTest >> testRelocateObjStacksForPlanningCompactorStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #relocateObjStacksForPlanningCompactor.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpurMemoryManagerTranslationTest >> testRemapBufferStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #remapBuffer.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurMemoryManagerTranslationTest >> testRemapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #remap:.
	self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurMemoryManagerTranslationTest >> testRememberedSetObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rememberedSetObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'allocation accounting' }
MASmokeSpurMemoryManagerTranslationTest >> testResetAllocationAccountingAfterGCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #resetAllocationAccountingAfterGC.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testResetFreeListHeadsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #resetFreeListHeads.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testRestoreObjectsInsavedHashesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #restoreObjectsIn:savedHashes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testRestoreObjectsInupTosavedFirstFieldsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #restoreObjectsIn:upTo:savedFirstFields:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testReverseBytesFromtoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #reverseBytesFrom:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testReverseBytesInBitWordsFromtoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #reverseBytesIn32BitWordsFrom:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testReverseBytesInMemoryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #reverseBytesInMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpurMemoryManagerTranslationTest >> testRoundBytesToAllocationUnitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #roundBytesToAllocationUnit:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testRoundUpHeapSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #roundUpHeapSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpurMemoryManagerTranslationTest >> testRtRefCountOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rtRefCountOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeSpurMemoryManagerTranslationTest >> testSafePrintStringOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #safePrintStringOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #testing }
MASmokeSpurMemoryManagerTranslationTest >> testScavengeInProgressStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #scavengeInProgress.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testScavengeThresholdAsExtentStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #scavengeThresholdAsExtent.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testScavengeThresholdStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #scavengeThreshold.
	self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurMemoryManagerTranslationTest >> testScavengerDenominatorStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #scavengerDenominator.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpurMemoryManagerTranslationTest >> testScavengingGCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #scavengingGC.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenging' }
MASmokeSpurMemoryManagerTranslationTest >> testScheduleScavengeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #scheduleScavenge.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testSegmentManagerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #segmentManager.
	self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpurMemoryManagerTranslationTest >> testSetCheckForLeaksStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setCheckForLeaks:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'allocation accounting' }
MASmokeSpurMemoryManagerTranslationTest >> testSetCurrentAllocatedBytesToStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setCurrentAllocatedBytesTo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testSetEndOfMemoryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setEndOfMemory:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testSetFreeOldSpaceStartStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setFreeOldSpaceStart:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testSetFreeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setFree:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpurMemoryManagerTranslationTest >> testSetHashBitsOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setHashBitsOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testSetHeapGrowthToSizeGCRatioStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setHeapGrowthToSizeGCRatio:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'allocation accounting' }
MASmokeSpurMemoryManagerTranslationTest >> testSetHeapSizeAtPreviousGCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setHeapSizeAtPreviousGC.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpurMemoryManagerTranslationTest >> testSetHiddenRootsObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setHiddenRootsObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpurMemoryManagerTranslationTest >> testSetLastSegmentStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setLastSegment:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testSetMaxOldSpaceSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setMaxOldSpaceSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testSetNextFreeChunkOfwithValuechunkBytesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #setNextFreeChunkOf:withValue:chunkBytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testSetNextFreeChunkOfwithValueisLilliputianSizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #setNextFreeChunkOf:withValue:isLilliputianSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testSetObjectFreeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setObjectFree:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'word size' }
MASmokeSpurMemoryManagerTranslationTest >> testShiftForAllocationUnitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shiftForAllocationUnit.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurMemoryManagerTranslationTest >> testShouldBreakForLookupIngivenStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shouldBreakForLookupIn:given:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testShrinkThresholdStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shrinkThreshold:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - incremental' }
MASmokeSpurMemoryManagerTranslationTest >> testShutDownIncrementalGCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shutDownIncrementalGC:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testSignalLowSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #signalLowSpace.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testSizeBitsOfSafeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sizeBitsOfSafe:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testSizeBitsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sizeBitsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testSizeOfFreeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sizeOfFree:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testSizeOfLargestFreeChunkStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sizeOfLargestFreeChunk.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpurMemoryManagerTranslationTest >> testSlidingCompactionRemapObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #slidingCompactionRemapObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpurMemoryManagerTranslationTest >> testSlidingCompactionShouldRemapObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #slidingCompactionShouldRemapObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testSpecialObjectsOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #specialObjectsOop:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpurMemoryManagerTranslationTest >> testSplObjputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #splObj:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpurMemoryManagerTranslationTest >> testStackValueofObjStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #stackValue:ofObjStack:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpurMemoryManagerTranslationTest >> testStartOfObjectgivenStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #startOfObject:given:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatCompMoveCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statCompMoveCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatCompactPassCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statCompactPassCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatCompactionUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statCompactionUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatFGCDeltaUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statFGCDeltaUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatFullGCUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statFullGCUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatFullGCsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statFullGCs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatGCEndUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statGCEndUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatGrowMemoryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statGrowMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatIGCDeltaUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statIGCDeltaUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatIncrGCUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statIncrGCUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatIncrGCsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statIncrGCs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatMarkCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statMarkCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatMarkUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statMarkUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatMaxAllocSegmentTimeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statMaxAllocSegmentTime:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatMkFwdCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statMkFwdCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatRootTableCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statRootTableCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatRootTableOverflowsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statRootTableOverflows.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatSGCDeltaUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statSGCDeltaUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatScavengeGCUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statScavengeGCUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatScavengesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statScavenges.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatShrinkMemoryStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statShrinkMemory.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatSpecialMarkCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statSpecialMarkCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatSweepCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statSweepCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testStatSweepUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statSweepUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testStoreByteofObjectwithValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeByte:ofObject:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testStoreLongofObjectwithValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeLong64:ofObject:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testStorePointerImmutabilityCheckofObjectwithValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storePointerImmutabilityCheck:ofObject:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpurMemoryManagerTranslationTest >> testStorePointerNoAssertofFreeChunkwithValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storePointerNoAssert:ofFreeChunk:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testStorePointerUncheckedofMaybeForwardedObjectwithValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storePointerUnchecked:ofMaybeForwardedObject:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpurMemoryManagerTranslationTest >> testStorePointerofForwarderwithValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storePointer:ofForwarder:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpurMemoryManagerTranslationTest >> testStorePointerofFreeChunkwithUncheckedValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storePointer:ofFreeChunk:withUncheckedValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'heap management' }
MASmokeSpurMemoryManagerTranslationTest >> testStorePointerofFreeChunkwithValueStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #storePointer:ofFreeChunk:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testStorePointerofObjStackwithValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storePointer:ofObjStack:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpurMemoryManagerTranslationTest >> testStoreShortofObjectwithValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #storeShort16:ofObject:withValue:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpurMemoryManagerTranslationTest >> testSufficientSpaceToInstantiateindexableSizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #sufficientSpaceToInstantiate:indexableSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testSwizzleFieldsOfFreeChunkStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #swizzleFieldsOfFreeChunk:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurMemoryManagerTranslationTest >> testSwizzleFieldsOfObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #swizzleFieldsOfObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testTenuringThresholdStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #tenuringThreshold:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitive support' }
MASmokeSpurMemoryManagerTranslationTest >> testTotalByteSizeOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #totalByteSizeOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testTotalFreeOldSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #totalFreeOldSpace:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testTotalMemorySizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #totalMemorySize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurMemoryManagerTranslationTest >> testTraceImmediatelySlotLimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #traceImmediatelySlotLimit.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testTrueObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #trueObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testUnlinkFreeChunkatIndexchunkBytesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #unlinkFreeChunk:atIndex:chunkBytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'free space' }
MASmokeSpurMemoryManagerTranslationTest >> testUnlinkFreeChunkatIndexisLilliputianSizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #unlinkFreeChunk:atIndex:isLilliputianSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeSpurMemoryManagerTranslationTest >> testUnmarkAllObjectsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unmarkAllObjects.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testUnmarkObjectsInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unmarkObjectsIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurMemoryManagerTranslationTest >> testUnmarkSurvivingObjectsForCompactStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unmarkSurvivingObjectsForCompact.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpurMemoryManagerTranslationTest >> testUpdateFreeListsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updateFreeLists.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurMemoryManagerTranslationTest >> testUpdateFullGCStatsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updateFullGCStats.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpurMemoryManagerTranslationTest >> testUpdatePostScavengeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updatePostScavenge:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'obj stacks' }
MASmokeSpurMemoryManagerTranslationTest >> testUpdateRootOfObjStackAtwithStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updateRootOfObjStackAt:with:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> testUpdateSweepEndUsecsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updateSweepEndUsecs.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpurMemoryManagerTranslationTest >> testVanillaRemapObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #vanillaRemapObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - scavenge/compact' }
MASmokeSpurMemoryManagerTranslationTest >> testVanillaShouldRemapObjStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #vanillaShouldRemapObj:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpurMemoryManagerTranslationTest >> testWeaklingStackStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #weaklingStack.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug printing' }
MASmokeSpurMemoryManagerTranslationTest >> testWhereIsMaybeHeapThingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #whereIsMaybeHeapThing:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurMemoryManagerTranslationTest >> translator [
	^ MASpurMemoryManagerRessource current translator
]
