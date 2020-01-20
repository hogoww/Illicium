Class {
	#name : #Spur64BitMemoryManagerTranslationTests,
	#superclass : #ILVMSlangToCGeneratedTests,
	#category : #'Illicium-Plugins-Tests'
}

{ #category : #running }
Spur64BitMemoryManagerTranslationTests >> setUp [
  super setUp.
  testedClass := Spur64BitMemoryManager.
  translator := ASTCSlangTranslator new
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAccessibleObjectAfterSmoke [
  self testMethod: #accessibleObjectAfter:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAccessibleObjectAfterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #accessibleObjectAfter:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #accessibleObjectAfter:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testActiveAndDeferredScanSmoke [
  self testMethod: #activeAndDeferredScan:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testActiveAndDeferredScanStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #activeAndDeferredScan:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #activeAndDeferredScan:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAddFreeChunkWithBytesatSmoke [
  self testMethod: #addFreeChunkWithBytes:at:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAddFreeChunkWithBytesatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addFreeChunkWithBytes:at:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addFreeChunkWithBytes:at:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAddFreeSubTreeSmoke [
  self testMethod: #addFreeSubTree:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAddFreeSubTreeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addFreeSubTree:.
  illiString := self prettyPrintIllicium: illiAST. 
  slangString := self generateSlang: #addFreeSubTree:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAddGCRootSmoke [
  self testMethod: #addGCRoot:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAddGCRootStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addGCRoot:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addGCRoot:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAddToFreeListbytesSmoke [
  self testMethod: #addToFreeList:bytes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAddToFreeListbytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addToFreeList:bytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addToFreeList:bytes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAddToFreeTreebytesSmoke [
  self testMethod: #addToFreeTree:bytes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAddToFreeTreebytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addToFreeTree:bytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addToFreeTree:bytes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAddressAfterSmoke [
  self testMethod: #addressAfter:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAddressAfterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addressAfter:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addressAfter:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAddressCouldBeObjSmoke [
  self testMethod: #addressCouldBeObj:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAddressCouldBeObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addressCouldBeObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addressCouldBeObj:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAddressCouldBeOldObjSmoke [
  self testMethod: #addressCouldBeOldObj:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAddressCouldBeOldObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addressCouldBeOldObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addressCouldBeOldObj:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAddressCouldBeOopSmoke [
  self testMethod: #addressCouldBeOop:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAddressCouldBeOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addressCouldBeOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addressCouldBeOop:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAdjustAllOopsBySmoke [
  self testMethod: #adjustAllOopsBy:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAdjustAllOopsByStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #adjustAllOopsBy:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #adjustAllOopsBy:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllExistingNewSpaceObjectsDoSmoke [
  self testMethod: #allExistingNewSpaceObjectsDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllExistingNewSpaceObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allExistingNewSpaceObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allExistingNewSpaceObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllExistingObjectsDoSmoke [
  self testMethod: #allExistingObjectsDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllExistingObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allExistingObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allExistingObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllExistingOldSpaceObjectsDoSmoke [
  self testMethod: #allExistingOldSpaceObjectsDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllExistingOldSpaceObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allExistingOldSpaceObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allExistingOldSpaceObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllFreeObjectsDoSmoke [
  self testMethod: #allFreeObjectsDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllFreeObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allFreeObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allFreeObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllHeapEntitiesDoSmoke [
  self testMethod: #allHeapEntitiesDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllHeapEntitiesDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allHeapEntitiesDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allHeapEntitiesDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllInstancesOfSmoke [
  self testMethod: #allInstancesOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllInstancesOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allInstancesOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allInstancesOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllNewSpaceEntitiesDoSmoke [
  self testMethod: #allNewSpaceEntitiesDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllNewSpaceEntitiesDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allNewSpaceEntitiesDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allNewSpaceEntitiesDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllNewSpaceObjectsDoSmoke [
  self testMethod: #allNewSpaceObjectsDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllNewSpaceObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allNewSpaceObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allNewSpaceObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllObjectsDoSafelySmoke [
  self testMethod: #allObjectsDoSafely:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllObjectsDoSafelyStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allObjectsDoSafely:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allObjectsDoSafely:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllObjectsDoSmoke [
  self testMethod: #allObjectsDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllObjectsInFreeTreeDoSmoke [
  self testMethod: #allObjectsInFreeTreeDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllObjectsInFreeTreeDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allObjectsInFreeTreeDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allObjectsInFreeTreeDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllObjectsInFreeTreedoSmoke [
  self testMethod: #allObjectsInFreeTree:do:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllObjectsInFreeTreedoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allObjectsInFreeTree:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allObjectsInFreeTree:do:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllObjectsSmoke [
  self testMethod: #allObjects
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllObjectsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allObjects.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allObjects.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllObjectsUnmarkedSmoke [
  self testMethod: #allObjectsUnmarked
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllObjectsUnmarkedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allObjectsUnmarked.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allObjectsUnmarked.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldMarkedWeakObjectsOnWeaklingStackSmoke [
  self testMethod: #allOldMarkedWeakObjectsOnWeaklingStack
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldMarkedWeakObjectsOnWeaklingStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldMarkedWeakObjectsOnWeaklingStack.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldMarkedWeakObjectsOnWeaklingStack.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldSpaceEntitiesDoSmoke [
  self testMethod: #allOldSpaceEntitiesDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldSpaceEntitiesDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldSpaceEntitiesDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldSpaceEntitiesDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldSpaceEntitiesForCoalescingFromdoSmoke [
  self testMethod: #allOldSpaceEntitiesForCoalescingFrom:do:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldSpaceEntitiesForCoalescingFromdoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldSpaceEntitiesForCoalescingFrom:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldSpaceEntitiesForCoalescingFrom:do:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldSpaceEntitiesForCompactingFromtodoSmoke [
  self testMethod: #allOldSpaceEntitiesForCompactingFrom:to:do:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldSpaceEntitiesForCompactingFromtodoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldSpaceEntitiesForCompactingFrom:to:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldSpaceEntitiesForCompactingFrom:to:do:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldSpaceEntitiesFromdoSmoke [
  self testMethod: #allOldSpaceEntitiesFrom:do:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldSpaceEntitiesFromdoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldSpaceEntitiesFrom:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldSpaceEntitiesFrom:do:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldSpaceEntitiesFromtodoSmoke [
  self testMethod: #allOldSpaceEntitiesFrom:to:do:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldSpaceEntitiesFromtodoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldSpaceEntitiesFrom:to:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldSpaceEntitiesFrom:to:do:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldSpaceObjectsDoSmoke [
  self testMethod: #allOldSpaceObjectsDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldSpaceObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldSpaceObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldSpaceObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldSpaceObjectsFromdoSmoke [
  self testMethod: #allOldSpaceObjectsFrom:do:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllOldSpaceObjectsFromdoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldSpaceObjectsFrom:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldSpaceObjectsFrom:do:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllPastSpaceEntitiesDoSmoke [
  self testMethod: #allPastSpaceEntitiesDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllPastSpaceEntitiesDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allPastSpaceEntitiesDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allPastSpaceEntitiesDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllPastSpaceObjectsDoSmoke [
  self testMethod: #allPastSpaceObjectsDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllPastSpaceObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allPastSpaceObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allPastSpaceObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllStrongSlotsOfWeaklingAreMarkedSmoke [
  self testMethod: #allStrongSlotsOfWeaklingAreMarked:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllStrongSlotsOfWeaklingAreMarkedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allStrongSlotsOfWeaklingAreMarked:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allStrongSlotsOfWeaklingAreMarked:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllUnscannedEphemeronsAreActiveSmoke [
  self testMethod: #allUnscannedEphemeronsAreActive
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllUnscannedEphemeronsAreActiveStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allUnscannedEphemeronsAreActive.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allUnscannedEphemeronsAreActive.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateBytesclassIndexSmoke [
  self testMethod: #allocateBytes:classIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateBytesclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateBytes:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateBytes:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateLargestFreeChunkSmoke [
  self testMethod: #allocateLargestFreeChunk
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateLargestFreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateLargestFreeChunk.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateLargestFreeChunk.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateNewSpaceSlotsformatclassIndexSmoke [
  self testMethod: #allocateNewSpaceSlots:format:classIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateNewSpaceSlotsformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateNewSpaceSlots:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateNewSpaceSlots:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateOldSpaceChunkOfBytesSmoke [
  self testMethod: #allocateOldSpaceChunkOfBytes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateOldSpaceChunkOfBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateOldSpaceChunkOfBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateOldSpaceChunkOfBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateOldSpaceChunkOfBytessuchThatSmoke [
  self testMethod: #allocateOldSpaceChunkOfBytes:suchThat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateOldSpaceChunkOfBytessuchThatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateOldSpaceChunkOfBytes:suchThat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateOldSpaceChunkOfBytes:suchThat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocatePinnedSlotsSmoke [
  self testMethod: #allocatePinnedSlots:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocatePinnedSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocatePinnedSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocatePinnedSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateSlotsForPinningInOldSpacebytesformatclassIndexSmoke [
  self testMethod: #allocateSlotsForPinningInOldSpace:bytes:format:classIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateSlotsForPinningInOldSpacebytesformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateSlotsForPinningInOldSpace:bytes:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateSlotsForPinningInOldSpace:bytes:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateSlotsInOldSpacebytesformatclassIndexSmoke [
  self testMethod: #allocateSlotsInOldSpace:bytes:format:classIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateSlotsInOldSpacebytesformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateSlotsInOldSpace:bytes:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateSlotsInOldSpace:bytes:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateSlotsInOldSpaceformatclassIndexSmoke [
  self testMethod: #allocateSlotsInOldSpace:format:classIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateSlotsInOldSpaceformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateSlotsInOldSpace:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateSlotsInOldSpace:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateSlotsformatclassIndexSmoke [
  self testMethod: #allocateSlots:format:classIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateSlotsformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateSlots:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateSlots:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateSmallNewSpaceSlotsformatclassIndexSmoke [
  self testMethod: #allocateSmallNewSpaceSlots:format:classIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocateSmallNewSpaceSlotsformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateSmallNewSpaceSlots:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateSmallNewSpaceSlots:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocationUnitSmoke [
  self testMethod: #allocationUnit
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAllocationUnitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocationUnit.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocationUnit.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAmbiguousClassallInstancesIntolimitresultsIntoSmoke [
  self testMethod: #ambiguousClass:allInstancesInto:limit:resultsInto:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAmbiguousClassallInstancesIntolimitresultsIntoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ambiguousClass:allInstancesInto:limit:resultsInto:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ambiguousClass:allInstancesInto:limit:resultsInto:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAreIntegersandSmoke [
  self testMethod: #areIntegers:and:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAreIntegersandStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #areIntegers:and:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #areIntegers:and:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testArrayClassIndexPunSmoke [
  self testMethod: #arrayClassIndexPun
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testArrayClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #arrayClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #arrayClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testArrayFormatSmoke [
  self testMethod: #arrayFormat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testArrayFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #arrayFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #arrayFormat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAssertFreeChunkPrevHeadZeroSmoke [
  self testMethod: #assertFreeChunkPrevHeadZero
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAssertFreeChunkPrevHeadZeroStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #assertFreeChunkPrevHeadZero.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #assertFreeChunkPrevHeadZero.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAssertInnerValidFreeObjectSmoke [
  self testMethod: #assertInnerValidFreeObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAssertInnerValidFreeObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #assertInnerValidFreeObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #assertInnerValidFreeObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAssertValidFreeObjectSmoke [
  self testMethod: #assertValidFreeObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAssertValidFreeObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #assertValidFreeObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #assertValidFreeObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAssignClassIndicesAndPinFromtooutPointersfillingSmoke [
  self testMethod: #assignClassIndicesAndPinFrom:to:outPointers:filling:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAssignClassIndicesAndPinFromtooutPointersfillingStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #assignClassIndicesAndPinFrom:to:outPointers:filling:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #assignClassIndicesAndPinFrom:to:outPointers:filling:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAssimilateNewSegmentSmoke [
  self testMethod: #assimilateNewSegment:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAssimilateNewSegmentStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #assimilateNewSegment:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #assimilateNewSegment:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAtLeastClassIndexHalfHeaderSmoke [
  self testMethod: #atLeastClassIndexHalfHeader:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAtLeastClassIndexHalfHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #atLeastClassIndexHalfHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #atLeastClassIndexHalfHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAttemptToShrinkSmoke [
  self testMethod: #attemptToShrink
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAttemptToShrinkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #attemptToShrink.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #attemptToShrink.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testAverageObjectSizeInBytesSmoke [
  self testMethod: #averageObjectSizeInBytes
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testAverageObjectSizeInBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #averageObjectSizeInBytes.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #averageObjectSizeInBytes.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBaseAddressOfImageSmoke [
  self testMethod: #baseAddressOfImage
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBaseAddressOfImageStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #baseAddressOfImage.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #baseAddressOfImage.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBaseHeaderSizeSmoke [
  self testMethod: #baseHeaderSize
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBaseHeaderSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #baseHeaderSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #baseHeaderSize.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBaseHeaderSmoke [
  self testMethod: #baseHeader:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBaseHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #baseHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #baseHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBeRootIfOldSmoke [
  self testMethod: #beRootIfOld:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBeRootIfOldStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #beRootIfOld:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #beRootIfOld:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBecomeEffectFlagsForSmoke [
  self testMethod: #becomeEffectFlagsFor:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBecomeEffectFlagsForStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #becomeEffectFlagsFor:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #becomeEffectFlagsFor:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBecomewithSmoke [
  self testMethod: #become:with:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBecomewithStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #become:with:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #become:with:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBecomewithtwoWaycopyHashSmoke [
  self testMethod: #become:with:twoWay:copyHash:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBecomewithtwoWaycopyHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #become:with:twoWay:copyHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #become:with:twoWay:copyHash:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBeginSlidingCompactionSmoke [
  self testMethod: #beginSlidingCompaction
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBeginSlidingCompactionStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #beginSlidingCompaction.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #beginSlidingCompaction.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBitsSetInFreeSpaceMaskForAllFreeListsSmoke [
  self testMethod: #bitsSetInFreeSpaceMaskForAllFreeLists
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBitsSetInFreeSpaceMaskForAllFreeListsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bitsSetInFreeSpaceMaskForAllFreeLists.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bitsSetInFreeSpaceMaskForAllFreeLists.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBooleanObjectOfSmoke [
  self testMethod: #booleanObjectOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBooleanObjectOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #booleanObjectOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #booleanObjectOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBootstrappingSmoke [
  self testMethod: #bootstrapping
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBootstrappingStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bootstrapping.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bootstrapping.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBridgeSizeSmoke [
  self testMethod: #bridgeSize
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBridgeSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bridgeSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bridgeSize.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testByteFormatForNumBytesSmoke [
  self testMethod: #byteFormatForNumBytes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testByteFormatForNumBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #byteFormatForNumBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #byteFormatForNumBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testByteFormatMaskSmoke [
  self testMethod: #byteFormatMask
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testByteFormatMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #byteFormatMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #byteFormatMask.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testByteSizeOfInstanceOferrIntoSmoke [
  self testMethod: #byteSizeOfInstanceOf:errInto:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testByteSizeOfInstanceOferrIntoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #byteSizeOfInstanceOf:errInto:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #byteSizeOfInstanceOf:errInto:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testByteSizeOfInstanceOfwithIndexableSlotserrIntoSmoke [
  self testMethod: #byteSizeOfInstanceOf:withIndexableSlots:errInto:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testByteSizeOfInstanceOfwithIndexableSlotserrIntoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #byteSizeOfInstanceOf:withIndexableSlots:errInto:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #byteSizeOfInstanceOf:withIndexableSlots:errInto:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testByteSizeOfSmoke [
  self testMethod: #byteSizeOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testByteSizeOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #byteSizeOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #byteSizeOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testByteSwappedSmoke [
  self testMethod: #byteSwapped:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testByteSwappedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #byteSwapped:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #byteSwapped:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBytesInObjectSmoke [
  self testMethod: #bytesInObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBytesInObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bytesInObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bytesInObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBytesInObjectgivenSmoke [
  self testMethod: #bytesInObject:given:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBytesInObjectgivenStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bytesInObject:given:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bytesInObject:given:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBytesLeftInOldSpaceSmoke [
  self testMethod: #bytesLeftInOldSpace
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBytesLeftInOldSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bytesLeftInOldSpace.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bytesLeftInOldSpace.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBytesLeftSmoke [
  self testMethod: #bytesLeft:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBytesLeftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bytesLeft:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bytesLeft:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testBytesPerOopSmoke [
  self testMethod: #bytesPerOop
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testBytesPerOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bytesPerOop.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bytesPerOop.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCapacityOfObjStackSmoke [
  self testMethod: #capacityOfObjStack:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCapacityOfObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #capacityOfObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #capacityOfObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testChangeClassOftoSmoke [
  self testMethod: #changeClassOf:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testChangeClassOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #changeClassOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #changeClassOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCharacterObjectOfSmoke [
  self testMethod: #characterObjectOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCharacterObjectOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #characterObjectOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #characterObjectOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCharacterTableSmoke [
  self testMethod: #characterTable
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCharacterTableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #characterTable.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #characterTable.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCharacterTagSmoke [
  self testMethod: #characterTag
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCharacterTagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #characterTag.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #characterTag.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCharacterValueOfSmoke [
  self testMethod: #characterValueOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCharacterValueOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #characterValueOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #characterValueOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCheapAddressCouldBeInHeapSmoke [
  self testMethod: #cheapAddressCouldBeInHeap:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCheapAddressCouldBeInHeapStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #cheapAddressCouldBeInHeap:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #cheapAddressCouldBeInHeap:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckCompactIndexisClassnamedSmoke [
  self testMethod: #checkCompactIndex:isClass:named:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckCompactIndexisClassnamedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkCompactIndex:isClass:named:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkCompactIndex:isClass:named:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckForAvailableSlotsSmoke [
  self testMethod: #checkForAvailableSlots:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckForAvailableSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkForAvailableSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkForAvailableSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckForLeaksSmoke [
  self testMethod: #checkForLeaks
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckForLeaksStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkForLeaks.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkForLeaks.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckFreeSpaceSmoke [
  self testMethod: #checkFreeSpace:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckFreeSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkFreeSpace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkFreeSpace:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckHeapFreeSpaceIntegritySmoke [
  self testMethod: #checkHeapFreeSpaceIntegrity
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckHeapFreeSpaceIntegrityStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkHeapFreeSpaceIntegrity.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkHeapFreeSpaceIntegrity.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckHeapIntegrityclassIndicesShouldBeValidSmoke [
  self testMethod: #checkHeapIntegrity:classIndicesShouldBeValid:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckHeapIntegrityclassIndicesShouldBeValidStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkHeapIntegrity:classIndicesShouldBeValid:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkHeapIntegrity:classIndicesShouldBeValid:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckMemoryMapSmoke [
  self testMethod: #checkMemoryMap
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckMemoryMapStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkMemoryMap.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkMemoryMap.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckOkayOopSmoke [
  self testMethod: #checkOkayOop:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckOkayOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkOkayOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkOkayOop:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckOkayYoungReferrerSmoke [
  self testMethod: #checkOkayYoungReferrer:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckOkayYoungReferrerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkOkayYoungReferrer:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkOkayYoungReferrer:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckOopHasOkayClassSmoke [
  self testMethod: #checkOopHasOkayClass:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckOopHasOkayClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkOopHasOkayClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkOopHasOkayClass:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckOopIntegritynamedSmoke [
  self testMethod: #checkOopIntegrity:named:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckOopIntegritynamedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkOopIntegrity:named:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkOopIntegrity:named:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckOopIntegritynamedindexSmoke [
  self testMethod: #checkOopIntegrity:named:index:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckOopIntegritynamedindexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkOopIntegrity:named:index:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkOopIntegrity:named:index:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckedLongAtSmoke [
  self testMethod: #checkedLongAt:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCheckedLongAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkedLongAt:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkedLongAt:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassAlienSmoke [
  self testMethod: #classAlien
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassAlienStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classAlien.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classAlien.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassArraySmoke [
  self testMethod: #classArray
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassArrayStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classArray.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classArray.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassAtIndexSmoke [
  self testMethod: #classAtIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassAtIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classAtIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classAtIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassAtIndexputSmoke [
  self testMethod: #classAtIndex:put:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassAtIndexputStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classAtIndex:put:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classAtIndex:put:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassBitmapSmoke [
  self testMethod: #classBitmap
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassBitmapStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classBitmap.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classBitmap.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassByteArraySmoke [
  self testMethod: #classByteArray
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassByteArrayStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classByteArray.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classByteArray.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassCharacterSmoke [
  self testMethod: #classCharacter
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassCharacterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classCharacter.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classCharacter.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassExternalAddressSmoke [
  self testMethod: #classExternalAddress
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassExternalAddressStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classExternalAddress.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classExternalAddress.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassExternalDataSmoke [
  self testMethod: #classExternalData
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassExternalDataStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classExternalData.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classExternalData.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassExternalFunctionSmoke [
  self testMethod: #classExternalFunction
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassExternalFunctionStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classExternalFunction.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classExternalFunction.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassExternalLibrarySmoke [
  self testMethod: #classExternalLibrary
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassExternalLibraryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classExternalLibrary.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classExternalLibrary.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassExternalStructureSmoke [
  self testMethod: #classExternalStructure
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassExternalStructureStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classExternalStructure.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classExternalStructure.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassFloatSmoke [
  self testMethod: #classFloat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassFloatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classFloat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classFloat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassForClassTagSmoke [
  self testMethod: #classForClassTag:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassForClassTagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classForClassTag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classForClassTag:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassFormatForInstanceFormatSmoke [
  self testMethod: #classFormatForInstanceFormat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassFormatForInstanceFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classFormatForInstanceFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classFormatForInstanceFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassFormatFromInstFormatSmoke [
  self testMethod: #classFormatFromInstFormat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassFormatFromInstFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classFormatFromInstFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classFormatFromInstFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassIndexFieldWidthSmoke [
  self testMethod: #classIndexFieldWidth
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassIndexFieldWidthStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classIndexFieldWidth.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classIndexFieldWidth.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassIndexMaskSmoke [
  self testMethod: #classIndexMask
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassIndexMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classIndexMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classIndexMask.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassIndexOfHeaderSmoke [
  self testMethod: #classIndexOfHeader:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassIndexOfHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classIndexOfHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classIndexOfHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassIndexOfSmoke [
  self testMethod: #classIndexOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassIndexOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classIndexOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classIndexOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassIsItselfClassIndexPunSmoke [
  self testMethod: #classIsItselfClassIndexPun
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassIsItselfClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classIsItselfClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classIsItselfClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassLargeNegativeIntegerSmoke [
  self testMethod: #classLargeNegativeInteger
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassLargeNegativeIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classLargeNegativeInteger.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classLargeNegativeInteger.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassLargePositiveIntegerSmoke [
  self testMethod: #classLargePositiveInteger
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassLargePositiveIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classLargePositiveInteger.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classLargePositiveInteger.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassMutexSmoke [
  self testMethod: #classMutex
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassMutexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classMutex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classMutex.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassOrNilAtIndexSmoke [
  self testMethod: #classOrNilAtIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassOrNilAtIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classOrNilAtIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classOrNilAtIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassPointSmoke [
  self testMethod: #classPoint
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassPointStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classPoint.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classPoint.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassSemaphoreSmoke [
  self testMethod: #classSemaphore
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassSemaphoreStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classSemaphore.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classSemaphore.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassSmallIntegerSmoke [
  self testMethod: #classSmallInteger
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassSmallIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classSmallInteger.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classSmallInteger.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassStringSmoke [
  self testMethod: #classString
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassStringStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classString.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classString.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTableEntriesDoSmoke [
  self testMethod: #classTableEntriesDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTableEntriesDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTableEntriesDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTableEntriesDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTableFirstPageSmoke [
  self testMethod: #classTableFirstPage
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTableFirstPageStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTableFirstPage.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTableFirstPage.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTableIndexSmoke [
  self testMethod: #classTableIndex
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTableIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTableIndex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTableIndex.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTableMajorIndexShiftSmoke [
  self testMethod: #classTableMajorIndexShift
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTableMajorIndexShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTableMajorIndexShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTableMajorIndexShift.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTableMinorIndexMaskSmoke [
  self testMethod: #classTableMinorIndexMask
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTableMinorIndexMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTableMinorIndexMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTableMinorIndexMask.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTablePageSizeSmoke [
  self testMethod: #classTablePageSize
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTablePageSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTablePageSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTablePageSize.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTableRootObjSmoke [
  self testMethod: #classTableRootObj
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTableRootObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTableRootObj.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTableRootObj.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTableRootSlotsSmoke [
  self testMethod: #classTableRootSlots
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTableRootSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTableRootSlots.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTableRootSlots.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTagForClassSmoke [
  self testMethod: #classTagForClass:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTagForClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTagForClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTagForClass:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTagForSpecialObjectsIndexcompactClassIndexSmoke [
  self testMethod: #classTagForSpecialObjectsIndex:compactClassIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassTagForSpecialObjectsIndexcompactClassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTagForSpecialObjectsIndex:compactClassIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTagForSpecialObjectsIndex:compactClassIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClassUnsafeAlienSmoke [
  self testMethod: #classUnsafeAlien
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClassUnsafeAlienStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classUnsafeAlien.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classUnsafeAlien.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClearLeakMapAndMapAccessibleFreeSpaceSmoke [
  self testMethod: #clearLeakMapAndMapAccessibleFreeSpace
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClearLeakMapAndMapAccessibleFreeSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #clearLeakMapAndMapAccessibleFreeSpace.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #clearLeakMapAndMapAccessibleFreeSpace.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testClearLeakMapAndMapAccessibleObjectsSmoke [
  self testMethod: #clearLeakMapAndMapAccessibleObjects
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testClearLeakMapAndMapAccessibleObjectsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #clearLeakMapAndMapAccessibleObjects.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #clearLeakMapAndMapAccessibleObjects.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCleverSwapHeadersandcopyHashFlagSmoke [
  self testMethod: #cleverSwapHeaders:and:copyHashFlag:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCleverSwapHeadersandcopyHashFlagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #cleverSwapHeaders:and:copyHashFlag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #cleverSwapHeaders:and:copyHashFlag:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCloneInOldSpaceforPinningSmoke [
  self testMethod: #cloneInOldSpace:forPinning:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCloneInOldSpaceforPinningStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #cloneInOldSpace:forPinning:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #cloneInOldSpace:forPinning:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCloneSmoke [
  self testMethod: #clone:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCloneStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #clone:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #clone:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCoalesceandSmoke [
  self testMethod: #coalesce:and:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCoalesceandStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #coalesce:and:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #coalesce:and:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCoallesceFreeChunkSmoke [
  self testMethod: #coallesceFreeChunk:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCoallesceFreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #coallesceFreeChunk:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #coallesceFreeChunk:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCompactClassIndexOfSmoke [
  self testMethod: #compactClassIndexOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCompactClassIndexOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #compactClassIndexOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #compactClassIndexOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCompactIndexOfClassSmoke [
  self testMethod: #compactIndexOfClass:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCompactIndexOfClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #compactIndexOfClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #compactIndexOfClass:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCompactorSmoke [
  self testMethod: #compactor
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCompactorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #compactor.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #compactor.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCompiledMethodFormatForNumBytesSmoke [
  self testMethod: #compiledMethodFormatForNumBytes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCompiledMethodFormatForNumBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #compiledMethodFormatForNumBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #compiledMethodFormatForNumBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testComputeFreeSpacePostSwizzleSmoke [
  self testMethod: #computeFreeSpacePostSwizzle
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testComputeFreeSpacePostSwizzleStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #computeFreeSpacePostSwizzle.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #computeFreeSpacePostSwizzle.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testContainsOnlyValidBecomeObjectsandtwoWaycopyHashSmoke [
  self testMethod: #containsOnlyValidBecomeObjects:and:twoWay:copyHash:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testContainsOnlyValidBecomeObjectsandtwoWaycopyHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #containsOnlyValidBecomeObjects:and:twoWay:copyHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #containsOnlyValidBecomeObjects:and:twoWay:copyHash:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCopyObjtoAddrstopAtsavedFirstFieldsindexSmoke [
  self testMethod: #copyObj:toAddr:stopAt:savedFirstFields:index:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCopyObjtoAddrstopAtsavedFirstFieldsindexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #copyObj:toAddr:stopAt:savedFirstFields:index:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #copyObj:toAddr:stopAt:savedFirstFields:index:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCountMarkedAndUnmarkdObjectsSmoke [
  self testMethod: #countMarkedAndUnmarkdObjects:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCountMarkedAndUnmarkdObjectsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #countMarkedAndUnmarkdObjects:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #countMarkedAndUnmarkdObjects:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCountNumClassPagesPreSwizzleSmoke [
  self testMethod: #countNumClassPagesPreSwizzle:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCountNumClassPagesPreSwizzleStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #countNumClassPagesPreSwizzle:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #countNumClassPagesPreSwizzle:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testCurrentAllocatedBytesSmoke [
  self testMethod: #currentAllocatedBytes
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testCurrentAllocatedBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #currentAllocatedBytes.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #currentAllocatedBytes.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testDbgFloatValueOfSmoke [
  self testMethod: #dbgFloatValueOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testDbgFloatValueOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #dbgFloatValueOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #dbgFloatValueOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testDefaultEdenBytesSmoke [
  self testMethod: #defaultEdenBytes
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testDefaultEdenBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #defaultEdenBytes.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #defaultEdenBytes.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testDequeueMournerSmoke [
  self testMethod: #dequeueMourner
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testDequeueMournerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #dequeueMourner.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #dequeueMourner.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testDetachFreeObjectSmoke [
  self testMethod: #detachFreeObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testDetachFreeObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #detachFreeObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #detachFreeObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testDisplayObjectSmoke [
  self testMethod: #displayObject
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testDisplayObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #displayObject.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #displayObject.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testDoAllocationAccountingForScavengeSmoke [
  self testMethod: #doAllocationAccountingForScavenge
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testDoAllocationAccountingForScavengeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #doAllocationAccountingForScavenge.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #doAllocationAccountingForScavenge.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testDoBecomeandcopyHashSmoke [
  self testMethod: #doBecome:and:copyHash:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testDoBecomeandcopyHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #doBecome:and:copyHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #doBecome:and:copyHash:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testDoBecometocopyHashSmoke [
  self testMethod: #doBecome:to:copyHash:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testDoBecometocopyHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #doBecome:to:copyHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #doBecome:to:copyHash:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testDoScavengeSmoke [
  self testMethod: #doScavenge:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testDoScavengeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #doScavenge:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #doScavenge:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEdenBytesSmoke [
  self testMethod: #edenBytes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEdenBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #edenBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #edenBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEeInstantiateClassIndexformatnumSlotsSmoke [
  self testMethod: #eeInstantiateClassIndex:format:numSlots:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEeInstantiateClassIndexformatnumSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #eeInstantiateClassIndex:format:numSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #eeInstantiateClassIndex:format:numSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEeInstantiateMethodContextSlotsSmoke [
  self testMethod: #eeInstantiateMethodContextSlots:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEeInstantiateMethodContextSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #eeInstantiateMethodContextSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #eeInstantiateMethodContextSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEeInstantiateSmallClassIndexformatnumSlotsSmoke [
  self testMethod: #eeInstantiateSmallClassIndex:format:numSlots:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEeInstantiateSmallClassIndexformatnumSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #eeInstantiateSmallClassIndex:format:numSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #eeInstantiateSmallClassIndex:format:numSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEeInstantiateSmallClassnumSlotsSmoke [
  self testMethod: #eeInstantiateSmallClass:numSlots:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEeInstantiateSmallClassnumSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #eeInstantiateSmallClass:numSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #eeInstantiateSmallClass:numSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEekSmoke [
  self testMethod: #eek
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEekStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #eek.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #eek.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEmptyObjStackSmoke [
  self testMethod: #emptyObjStack:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEmptyObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #emptyObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #emptyObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEndOfMemorySmoke [
  self testMethod: #endOfMemory
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEndOfMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #endOfMemory.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #endOfMemory.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEndSlidingCompactionSmoke [
  self testMethod: #endSlidingCompaction
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEndSlidingCompactionStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #endSlidingCompaction.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #endSlidingCompaction.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEnsureBehaviorHashSmoke [
  self testMethod: #ensureBehaviorHash:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEnsureBehaviorHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ensureBehaviorHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ensureBehaviorHash:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEnsureHasOverflowHeaderforwardIfClonedSmoke [
  self testMethod: #ensureHasOverflowHeader:forwardIfCloned:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEnsureHasOverflowHeaderforwardIfClonedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ensureHasOverflowHeader:forwardIfCloned:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ensureHasOverflowHeader:forwardIfCloned:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEnsureNoNewObjectsInSmoke [
  self testMethod: #ensureNoNewObjectsIn:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEnsureNoNewObjectsInStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ensureNoNewObjectsIn:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ensureNoNewObjectsIn:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEnsureRoomOnObjStackAtSmoke [
  self testMethod: #ensureRoomOnObjStackAt:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEnsureRoomOnObjStackAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ensureRoomOnObjStackAt:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ensureRoomOnObjStackAt:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEnsureSemaphoreUnforwardedThroughContextSmoke [
  self testMethod: #ensureSemaphoreUnforwardedThroughContext:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEnsureSemaphoreUnforwardedThroughContextStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ensureSemaphoreUnforwardedThroughContext:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ensureSemaphoreUnforwardedThroughContext:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEnterClassesIntoClassTableFromtoSmoke [
  self testMethod: #enterClassesIntoClassTableFrom:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEnterClassesIntoClassTableFromtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #enterClassesIntoClassTableFrom:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #enterClassesIntoClassTableFrom:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEnterIntoClassTableSmoke [
  self testMethod: #enterIntoClassTable:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEnterIntoClassTableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #enterIntoClassTable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #enterIntoClassTable:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testEphemeronFormatSmoke [
  self testMethod: #ephemeronFormat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testEphemeronFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ephemeronFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ephemeronFormat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testExistInstancesInNewSpaceOfSmoke [
  self testMethod: #existInstancesInNewSpaceOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testExistInstancesInNewSpaceOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #existInstancesInNewSpaceOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #existInstancesInNewSpaceOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testExponentOfSmallFloatSmoke [
  self testMethod: #exponentOfSmallFloat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testExponentOfSmallFloatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #exponentOfSmallFloat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #exponentOfSmallFloat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testExpungeDuplicateAndUnmarkedClassesSmoke [
  self testMethod: #expungeDuplicateAndUnmarkedClasses:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testExpungeDuplicateAndUnmarkedClassesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #expungeDuplicateAndUnmarkedClasses:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #expungeDuplicateAndUnmarkedClasses:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testExpungeFromClassTableSmoke [
  self testMethod: #expungeFromClassTable:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testExpungeFromClassTableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #expungeFromClassTable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #expungeFromClassTable:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFalseObjectSmoke [
  self testMethod: #falseObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFalseObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #falseObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #falseObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchByteofObjectSmoke [
  self testMethod: #fetchByte:ofObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchByteofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchByte:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchByte:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchClassOfNonImmSmoke [
  self testMethod: #fetchClassOfNonImm:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchClassOfNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchClassOfNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchClassOfNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchClassOfSmoke [
  self testMethod: #fetchClassOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchClassOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchClassOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchClassOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchClassTagOfNonImmSmoke [
  self testMethod: #fetchClassTagOfNonImm:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchClassTagOfNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchClassTagOfNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchClassTagOfNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchClassTagOfSmoke [
  self testMethod: #fetchClassTagOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchClassTagOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchClassTagOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchClassTagOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchLongofFloatObjectSmoke [
  self testMethod: #fetchLong32:ofFloatObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchLongofFloatObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchLong32:ofFloatObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchLong32:ofFloatObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchLongofObjectSmoke [
  self testMethod: #fetchLong64:ofObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchLongofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchLong64:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchLong64:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchPointerofFreeChunkSmoke [
  self testMethod: #fetchPointer:ofFreeChunk:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchPointerofFreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchPointer:ofFreeChunk:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchPointer:ofFreeChunk:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchPointerofMaybeForwardedObjectSmoke [
  self testMethod: #fetchPointer:ofMaybeForwardedObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchPointerofMaybeForwardedObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchPointer:ofMaybeForwardedObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchPointer:ofMaybeForwardedObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchPointerofObjectSmoke [
  self testMethod: #fetchPointer:ofObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchPointerofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchPointer:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchPointer:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchShortofObjectSmoke [
  self testMethod: #fetchShort16:ofObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchShortofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchShort16:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchShort16:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchUnsignedShortofObjectSmoke [
  self testMethod: #fetchUnsignedShort16:ofObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFetchUnsignedShortofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchUnsignedShort16:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchUnsignedShort16:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFillObjnumSlotswithSmoke [
  self testMethod: #fillObj:numSlots:with:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFillObjnumSlotswithStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fillObj:numSlots:with:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fillObj:numSlots:with:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFindLargestFreeChunkSmoke [
  self testMethod: #findLargestFreeChunk
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFindLargestFreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #findLargestFreeChunk.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #findLargestFreeChunk.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFindStringBeginningWithSmoke [
  self testMethod: #findStringBeginningWith:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFindStringBeginningWithStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #findStringBeginningWith:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #findStringBeginningWith:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFindStringSmoke [
  self testMethod: #findString:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFindStringStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #findString:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #findString:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFireAllUnscannedEphemeronsSmoke [
  self testMethod: #fireAllUnscannedEphemerons
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFireAllUnscannedEphemeronsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fireAllUnscannedEphemerons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fireAllUnscannedEphemerons.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstAccessibleObjectSmoke [
  self testMethod: #firstAccessibleObject
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstAccessibleObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstAccessibleObject.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstAccessibleObject.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstByteFormatSmoke [
  self testMethod: #firstByteFormat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstByteFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstByteFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstByteFormat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstClassIndexPunSmoke [
  self testMethod: #firstClassIndexPun
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstCompiledMethodFormatSmoke [
  self testMethod: #firstCompiledMethodFormat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstCompiledMethodFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstCompiledMethodFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstCompiledMethodFormat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstFixedFieldOfMaybeImmediateSmoke [
  self testMethod: #firstFixedFieldOfMaybeImmediate:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstFixedFieldOfMaybeImmediateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstFixedFieldOfMaybeImmediate:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstFixedFieldOfMaybeImmediate:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstFixedFieldSmoke [
  self testMethod: #firstFixedField:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstFixedFieldStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstFixedField:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstFixedField:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstIndexableFieldSmoke [
  self testMethod: #firstIndexableField:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstIndexableFieldStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstIndexableField:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstIndexableField:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstLilliputianChunkSmoke [
  self testMethod: #firstLilliputianChunk
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstLilliputianChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstLilliputianChunk.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstLilliputianChunk.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstLongFormatSmoke [
  self testMethod: #firstLongFormat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstLongFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstLongFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstLongFormat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstObjectSmoke [
  self testMethod: #firstObject
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstObject.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstObject.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstShortFormatSmoke [
  self testMethod: #firstShortFormat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstShortFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstShortFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstShortFormat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstStringyFakeFormatSmoke [
  self testMethod: #firstStringyFakeFormat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstStringyFakeFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstStringyFakeFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstStringyFakeFormat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstValidIndexOfIndexableObjectwithFormatSmoke [
  self testMethod: #firstValidIndexOfIndexableObject:withFormat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFirstValidIndexOfIndexableObjectwithFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstValidIndexOfIndexableObject:withFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstValidIndexOfIndexableObject:withFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFixFollowedFieldofObjectwithInitialValueSmoke [
  self testMethod: #fixFollowedField:ofObject:withInitialValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFixFollowedFieldofObjectwithInitialValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fixFollowedField:ofObject:withInitialValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fixFollowedField:ofObject:withInitialValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFixedFieldsFieldWidthSmoke [
  self testMethod: #fixedFieldsFieldWidth
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFixedFieldsFieldWidthStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fixedFieldsFieldWidth.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fixedFieldsFieldWidth.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFixedFieldsOfClassFormatMaskSmoke [
  self testMethod: #fixedFieldsOfClassFormatMask
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFixedFieldsOfClassFormatMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fixedFieldsOfClassFormatMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fixedFieldsOfClassFormatMask.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFixedFieldsOfClassFormatSmoke [
  self testMethod: #fixedFieldsOfClassFormat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFixedFieldsOfClassFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fixedFieldsOfClassFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fixedFieldsOfClassFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFixedFieldsOfClassSmoke [
  self testMethod: #fixedFieldsOfClass:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFixedFieldsOfClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fixedFieldsOfClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fixedFieldsOfClass:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFixedFieldsOfformatlengthSmoke [
  self testMethod: #fixedFieldsOf:format:length:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFixedFieldsOfformatlengthStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fixedFieldsOf:format:length:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fixedFieldsOf:format:length:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFloatObjectOfSmoke [
  self testMethod: #floatObjectOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFloatObjectOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #floatObjectOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #floatObjectOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFloatValueOfSmoke [
  self testMethod: #floatValueOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFloatValueOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #floatValueOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #floatValueOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFlushEdenSmoke [
  self testMethod: #flushEden
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFlushEdenStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #flushEden.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #flushEden.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFlushNewSpaceInstancesOfSmoke [
  self testMethod: #flushNewSpaceInstancesOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFlushNewSpaceInstancesOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #flushNewSpaceInstancesOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #flushNewSpaceInstancesOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFlushNewSpaceSmoke [
  self testMethod: #flushNewSpace
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFlushNewSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #flushNewSpace.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #flushNewSpace.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowClassTableSmoke [
  self testMethod: #followClassTable
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowClassTableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followClassTable.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followClassTable.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowFieldofObjectSmoke [
  self testMethod: #followField:ofObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowFieldofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followField:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followField:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowForwardedInObjStackatIndexSmoke [
  self testMethod: #followForwardedInObjStack:atIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowForwardedInObjStackatIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followForwardedInObjStack:atIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followForwardedInObjStack:atIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowForwardedObjStacksSmoke [
  self testMethod: #followForwardedObjStacks
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowForwardedObjStacksStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followForwardedObjStacks.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followForwardedObjStacks.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowForwardedObjectFieldstoDepthSmoke [
  self testMethod: #followForwardedObjectFields:toDepth:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowForwardedObjectFieldstoDepthStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followForwardedObjectFields:toDepth:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followForwardedObjectFields:toDepth:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowForwardedSmoke [
  self testMethod: #followForwarded:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowForwardedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followForwarded:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followForwarded:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowMaybeForwardedSmoke [
  self testMethod: #followMaybeForwarded:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowMaybeForwardedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followMaybeForwarded:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followMaybeForwarded:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowObjFieldofObjectSmoke [
  self testMethod: #followObjField:ofObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowObjFieldofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followObjField:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followObjField:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowOopFieldofObjectSmoke [
  self testMethod: #followOopField:ofObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowOopFieldofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followOopField:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followOopField:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowProcessListSmoke [
  self testMethod: #followProcessList
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowProcessListStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followProcessList.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followProcessList.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowSpecialObjectsOopSmoke [
  self testMethod: #followSpecialObjectsOop
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowSpecialObjectsOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followSpecialObjectsOop.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followSpecialObjectsOop.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowedKeyOfEphemeronSmoke [
  self testMethod: #followedKeyOfEphemeron:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowedKeyOfEphemeronStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followedKeyOfEphemeron:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followedKeyOfEphemeron:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowedKeyOfMaybeFiredEphemeronSmoke [
  self testMethod: #followedKeyOfMaybeFiredEphemeron:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFollowedKeyOfMaybeFiredEphemeronStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followedKeyOfMaybeFiredEphemeron:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followedKeyOfMaybeFiredEphemeron:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFormatFieldWidthShiftSmoke [
  self testMethod: #formatFieldWidthShift
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFormatFieldWidthShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #formatFieldWidthShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #formatFieldWidthShift.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFormatMaskSmoke [
  self testMethod: #formatMask
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFormatMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #formatMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #formatMask.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFormatOfClassSmoke [
  self testMethod: #formatOfClass:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFormatOfClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #formatOfClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #formatOfClass:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFormatOfHeaderSmoke [
  self testMethod: #formatOfHeader:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFormatOfHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #formatOfHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #formatOfHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFormatOfSmoke [
  self testMethod: #formatOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFormatOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #formatOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #formatOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFormatShiftSmoke [
  self testMethod: #formatShift
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFormatShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #formatShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #formatShift.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testForwardSurvivortoSmoke [
  self testMethod: #forwardSurvivor:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testForwardSurvivortoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #forwardSurvivor:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #forwardSurvivor:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testForwardUncheckedtoSmoke [
  self testMethod: #forwardUnchecked:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testForwardUncheckedtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #forwardUnchecked:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #forwardUnchecked:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testForwardedFormatSmoke [
  self testMethod: #forwardedFormat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testForwardedFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #forwardedFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #forwardedFormat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testForwardersInSmoke [
  self testMethod: #forwardersIn:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testForwardersInStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #forwardersIn:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #forwardersIn:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testForwardtoSmoke [
  self testMethod: #forward:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testForwardtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #forward:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #forward:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeChunkLargerIndexSmoke [
  self testMethod: #freeChunkLargerIndex
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeChunkLargerIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeChunkLargerIndex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeChunkLargerIndex.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeChunkNextIndexSmoke [
  self testMethod: #freeChunkNextIndex
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeChunkNextIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeChunkNextIndex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeChunkNextIndex.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeChunkParentIndexSmoke [
  self testMethod: #freeChunkParentIndex
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeChunkParentIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeChunkParentIndex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeChunkParentIndex.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeChunkPrevIndexSmoke [
  self testMethod: #freeChunkPrevIndex
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeChunkPrevIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeChunkPrevIndex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeChunkPrevIndex.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeChunkSmallerIndexSmoke [
  self testMethod: #freeChunkSmallerIndex
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeChunkSmallerIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeChunkSmallerIndex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeChunkSmallerIndex.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeChunkWithBytesatSmoke [
  self testMethod: #freeChunkWithBytes:at:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeChunkWithBytesatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeChunkWithBytes:at:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeChunkWithBytes:at:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeListHeadsEmptySmoke [
  self testMethod: #freeListHeadsEmpty
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeListHeadsEmptyStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeListHeadsEmpty.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeListHeadsEmpty.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeListsObjSmoke [
  self testMethod: #freeListsObj
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeListsObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeListsObj.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeListsObj.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeListsObjectSmoke [
  self testMethod: #freeListsObject
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeListsObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeListsObject.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeListsObject.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeObjectSmoke [
  self testMethod: #freeObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeOldSpaceStartSmoke [
  self testMethod: #freeOldSpaceStart
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeOldSpaceStartStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeOldSpaceStart.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeOldSpaceStart.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeSizeSmoke [
  self testMethod: #freeSize
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeSize.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeStartSmoke [
  self testMethod: #freeStart
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeStartStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeStart.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeStart.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeTreeNodesDoSmoke [
  self testMethod: #freeTreeNodesDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFreeTreeNodesDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeTreeNodesDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeTreeNodesDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFullGCLockSmoke [
  self testMethod: #fullGCLock
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFullGCLockStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fullGCLock.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fullGCLock.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testFullGCSmoke [
  self testMethod: #fullGC
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testFullGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fullGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fullGC.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testGarbageCollectForSnapshotSmoke [
  self testMethod: #garbageCollectForSnapshot
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testGarbageCollectForSnapshotStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #garbageCollectForSnapshot.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #garbageCollectForSnapshot.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testGcStartUsecsSmoke [
  self testMethod: #gcStartUsecs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testGcStartUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #gcStartUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #gcStartUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testGetHeapGrowthToSizeGCRatioSmoke [
  self testMethod: #getHeapGrowthToSizeGCRatio
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testGetHeapGrowthToSizeGCRatioStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #getHeapGrowthToSizeGCRatio.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #getHeapGrowthToSizeGCRatio.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testGlobalGarbageCollectSmoke [
  self testMethod: #globalGarbageCollect
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testGlobalGarbageCollectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #globalGarbageCollect.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #globalGarbageCollect.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testGoodContextSizeSmoke [
  self testMethod: #goodContextSize:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testGoodContextSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #goodContextSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #goodContextSize:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testGreyBitShiftSmoke [
  self testMethod: #greyBitShift
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testGreyBitShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #greyBitShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #greyBitShift.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testGrowHeadroomSmoke [
  self testMethod: #growHeadroom
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testGrowHeadroomStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #growHeadroom.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #growHeadroom.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testGrowOldSpaceByAtLeastSmoke [
  self testMethod: #growOldSpaceByAtLeast:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testGrowOldSpaceByAtLeastStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #growOldSpaceByAtLeast:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #growOldSpaceByAtLeast:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testGrowToAccomodateContainerWithNumSlotsSmoke [
  self testMethod: #growToAccomodateContainerWithNumSlots:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testGrowToAccomodateContainerWithNumSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #growToAccomodateContainerWithNumSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #growToAccomodateContainerWithNumSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testHasIdentityHashSmoke [
  self testMethod: #hasIdentityHash:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testHasIdentityHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hasIdentityHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hasIdentityHash:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testHasOverflowHeaderSmoke [
  self testMethod: #hasOverflowHeader:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testHasOverflowHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hasOverflowHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hasOverflowHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testHasPointerFieldsNonImmSmoke [
  self testMethod: #hasPointerFieldsNonImm:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testHasPointerFieldsNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hasPointerFieldsNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hasPointerFieldsNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testHasPointerFieldsSmoke [
  self testMethod: #hasPointerFields:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testHasPointerFieldsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hasPointerFields:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hasPointerFields:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testHasSixtyFourBitImmediatesSmoke [
  self testMethod: #hasSixtyFourBitImmediates
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testHasSixtyFourBitImmediatesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hasSixtyFourBitImmediates.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hasSixtyFourBitImmediates.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testHasSpurMemoryManagerAPISmoke [
  self testMethod: #hasSpurMemoryManagerAPI
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testHasSpurMemoryManagerAPIStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hasSpurMemoryManagerAPI.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hasSpurMemoryManagerAPI.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testHasYoungReferentsSmoke [
  self testMethod: #hasYoungReferents:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testHasYoungReferentsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hasYoungReferents:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hasYoungReferents:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testHashBitsOfSmoke [
  self testMethod: #hashBitsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testHashBitsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hashBitsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hashBitsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testHeaderForSlotsformatclassIndexSmoke [
  self testMethod: #headerForSlots:format:classIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testHeaderForSlotsformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #headerForSlots:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #headerForSlots:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testHeaderForSlotshashformatclassIndexSmoke [
  self testMethod: #headerForSlots:hash:format:classIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testHeaderForSlotshashformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #headerForSlots:hash:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #headerForSlots:hash:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testHeaderIndicatesAlternateBytecodeSetSmoke [
  self testMethod: #headerIndicatesAlternateBytecodeSet:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testHeaderIndicatesAlternateBytecodeSetStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #headerIndicatesAlternateBytecodeSet:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #headerIndicatesAlternateBytecodeSet:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testHeapMapSmoke [
  self testMethod: #heapMap
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testHeapMapStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #heapMap.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #heapMap.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testHiddenRootSlotsSmoke [
  self testMethod: #hiddenRootSlots
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testHiddenRootSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hiddenRootSlots.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hiddenRootSlots.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testHiddenRootsObjectSmoke [
  self testMethod: #hiddenRootsObject
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testHiddenRootsObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hiddenRootsObject.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hiddenRootsObject.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIdentityHashFieldWidthSmoke [
  self testMethod: #identityHashFieldWidth
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIdentityHashFieldWidthStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #identityHashFieldWidth.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #identityHashFieldWidth.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIdentityHashFullWordMaskSmoke [
  self testMethod: #identityHashFullWordMask
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIdentityHashFullWordMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #identityHashFullWordMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #identityHashFullWordMask.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIdentityHashFullWordShiftSmoke [
  self testMethod: #identityHashFullWordShift
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIdentityHashFullWordShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #identityHashFullWordShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #identityHashFullWordShift.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIdentityHashHalfWordMaskSmoke [
  self testMethod: #identityHashHalfWordMask
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIdentityHashHalfWordMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #identityHashHalfWordMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #identityHashHalfWordMask.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIfAProxyupdateCopySmoke [
  self testMethod: #ifAProxy:updateCopy:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIfAProxyupdateCopyStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ifAProxy:updateCopy:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ifAProxy:updateCopy:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIfOopInvalidForBecomeerrorCodeIntoSmoke [
  self testMethod: #ifOopInvalidForBecome:errorCodeInto:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIfOopInvalidForBecomeerrorCodeIntoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ifOopInvalidForBecome:errorCodeInto:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ifOopInvalidForBecome:errorCodeInto:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testImageFormatVersionSmoke [
  self testMethod: #imageFormatVersion
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testImageFormatVersionStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #imageFormatVersion.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #imageFormatVersion.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testImageSegmentVersionSmoke [
  self testMethod: #imageSegmentVersion
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testImageSegmentVersionStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #imageSegmentVersion.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #imageSegmentVersion.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testImageSizeToWriteSmoke [
  self testMethod: #imageSizeToWrite
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testImageSizeToWriteStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #imageSizeToWrite.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #imageSizeToWrite.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testImmutableBitMaskSmoke [
  self testMethod: #immutableBitMask
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testImmutableBitMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #immutableBitMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #immutableBitMask.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testImmutableBitShiftSmoke [
  self testMethod: #immutableBitShift
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testImmutableBitShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #immutableBitShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #immutableBitShift.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInFreeTreeReplacewithSmoke [
  self testMethod: #inFreeTreeReplace:with:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInFreeTreeReplacewithStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #inFreeTreeReplace:with:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #inFreeTreeReplace:with:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInLineRunLeakCheckerForexcludeUnmarkedObjsclassIndicesShouldBeValidSmoke [
  self testMethod: #inLineRunLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInLineRunLeakCheckerForexcludeUnmarkedObjsclassIndicesShouldBeValidStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #inLineRunLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #inLineRunLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInOrderPrintFreeTreeprintListSmoke [
  self testMethod: #inOrderPrintFreeTree:printList:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInOrderPrintFreeTreeprintListStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #inOrderPrintFreeTree:printList:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #inOrderPrintFreeTree:printList:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInPlaceBecomeandcopyHashFlagSmoke [
  self testMethod: #inPlaceBecome:and:copyHashFlag:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInPlaceBecomeandcopyHashFlagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #inPlaceBecome:and:copyHashFlag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #inPlaceBecome:and:copyHashFlag:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInactiveOrFailedToDeferScanSmoke [
  self testMethod: #inactiveOrFailedToDeferScan:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInactiveOrFailedToDeferScanStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #inactiveOrFailedToDeferScan:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #inactiveOrFailedToDeferScan:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIncreaseFreeOldSpaceBySmoke [
  self testMethod: #increaseFreeOldSpaceBy:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIncreaseFreeOldSpaceByStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #increaseFreeOldSpaceBy:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #increaseFreeOldSpaceBy:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIncrementalGCSmoke [
  self testMethod: #incrementalGC
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIncrementalGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #incrementalGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #incrementalGC.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIndexOfinSmoke [
  self testMethod: #indexOf:in:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIndexOfinStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #indexOf:in:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #indexOf:in:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIndexablePointersFormatSmoke [
  self testMethod: #indexablePointersFormat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIndexablePointersFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #indexablePointersFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #indexablePointersFormat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInitFreeChunkWithBytesatSmoke [
  self testMethod: #initFreeChunkWithBytes:at:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInitFreeChunkWithBytesatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initFreeChunkWithBytes:at:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initFreeChunkWithBytes:at:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInitSegmentBridgeWithBytesatSmoke [
  self testMethod: #initSegmentBridgeWithBytes:at:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInitSegmentBridgeWithBytesatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initSegmentBridgeWithBytes:at:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initSegmentBridgeWithBytes:at:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInitSpaceForAllocationChecklimitSmoke [
  self testMethod: #initSpaceForAllocationCheck:limit:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInitSpaceForAllocationChecklimitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initSpaceForAllocationCheck:limit:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initSpaceForAllocationCheck:limit:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInitialHeadroomgivenFreeOldSpaceInImageSmoke [
  self testMethod: #initialHeadroom:givenFreeOldSpaceInImage:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInitialHeadroomgivenFreeOldSpaceInImageStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initialHeadroom:givenFreeOldSpaceInImage:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initialHeadroom:givenFreeOldSpaceInImage:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInitialInstanceOfSmoke [
  self testMethod: #initialInstanceOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInitialInstanceOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initialInstanceOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initialInstanceOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeFreeSpacePostLoadSmoke [
  self testMethod: #initializeFreeSpacePostLoad:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeFreeSpacePostLoadStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializeFreeSpacePostLoad:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializeFreeSpacePostLoad:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeMarkStackSmoke [
  self testMethod: #initializeMarkStack
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeMarkStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializeMarkStack.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializeMarkStack.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeNewSpaceVariablesSmoke [
  self testMethod: #initializeNewSpaceVariables
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeNewSpaceVariablesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializeNewSpaceVariables.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializeNewSpaceVariables.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeObjectMemorySmoke [
  self testMethod: #initializeObjectMemory:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeObjectMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializeObjectMemory:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializeObjectMemory:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeOldSpaceFirstFreeSmoke [
  self testMethod: #initializeOldSpaceFirstFree:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeOldSpaceFirstFreeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializeOldSpaceFirstFree:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializeOldSpaceFirstFree:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializePostBootstrapSmoke [
  self testMethod: #initializePostBootstrap
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializePostBootstrapStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializePostBootstrap.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializePostBootstrap.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeSmoke [
  self testMethod: #initialize
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initialize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initialize.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeUnscannedEphemeronsSmoke [
  self testMethod: #initializeUnscannedEphemerons
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeUnscannedEphemeronsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializeUnscannedEphemerons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializeUnscannedEphemerons.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeWeaklingStackSmoke [
  self testMethod: #initializeWeaklingStack
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInitializeWeaklingStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializeWeaklingStack.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializeWeaklingStack.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInnerBecomeObjectsInandcopyHashSmoke [
  self testMethod: #innerBecomeObjectsIn:and:copyHash:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInnerBecomeObjectsInandcopyHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #innerBecomeObjectsIn:and:copyHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #innerBecomeObjectsIn:and:copyHash:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInnerBecomeObjectsIntocopyHashSmoke [
  self testMethod: #innerBecomeObjectsIn:to:copyHash:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInnerBecomeObjectsIntocopyHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #innerBecomeObjectsIn:to:copyHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #innerBecomeObjectsIn:to:copyHash:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInstSpecForImmediateClassesSmoke [
  self testMethod: #instSpecForImmediateClasses
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInstSpecForImmediateClassesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instSpecForImmediateClasses.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instSpecForImmediateClasses.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInstSpecOfClassFormatSmoke [
  self testMethod: #instSpecOfClassFormat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInstSpecOfClassFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instSpecOfClassFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instSpecOfClassFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInstSpecOfClassSmoke [
  self testMethod: #instSpecOfClass:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInstSpecOfClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instSpecOfClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instSpecOfClass:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInstanceAfterSmoke [
  self testMethod: #instanceAfter:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInstanceAfterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instanceAfter:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instanceAfter:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInstanceSizeOfSmoke [
  self testMethod: #instanceSizeOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInstanceSizeOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instanceSizeOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instanceSizeOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInstantiateClassSmoke [
  self testMethod: #instantiateClass:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInstantiateClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instantiateClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instantiateClass:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInstantiateClassindexableSizeSmoke [
  self testMethod: #instantiateClass:indexableSize:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInstantiateClassindexableSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instantiateClass:indexableSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instantiateClass:indexableSize:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testInstantiateCompiledMethodClassindexableSizeSmoke [
  self testMethod: #instantiateCompiledMethodClass:indexableSize:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testInstantiateCompiledMethodClassindexableSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instantiateCompiledMethodClass:indexableSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instantiateCompiledMethodClass:indexableSize:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIntegerObjectOfCharacterObjectSmoke [
  self testMethod: #integerObjectOfCharacterObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIntegerObjectOfCharacterObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #integerObjectOfCharacterObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #integerObjectOfCharacterObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIntegerObjectOfSmoke [
  self testMethod: #integerObjectOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIntegerObjectOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #integerObjectOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #integerObjectOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIntegerValueOfSmoke [
  self testMethod: #integerValueOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIntegerValueOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #integerValueOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #integerValueOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsAnyPointerFormatSmoke [
  self testMethod: #isAnyPointerFormat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsAnyPointerFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isAnyPointerFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isAnyPointerFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsArrayNonImmSmoke [
  self testMethod: #isArrayNonImm:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsArrayNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isArrayNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isArrayNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsArraySmoke [
  self testMethod: #isArray:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsArrayStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isArray:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isArray:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsBytesNonImmSmoke [
  self testMethod: #isBytesNonImm:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsBytesNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isBytesNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isBytesNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsBytesSmoke [
  self testMethod: #isBytes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsCharacterObjectSmoke [
  self testMethod: #isCharacterObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsCharacterObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isCharacterObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isCharacterObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsCharacterValueSmoke [
  self testMethod: #isCharacterValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsCharacterValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isCharacterValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isCharacterValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsClassAtUniqueIndexSmoke [
  self testMethod: #isClassAtUniqueIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsClassAtUniqueIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isClassAtUniqueIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isClassAtUniqueIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsClassOfNonImmequalToSmoke [
  self testMethod: #isClassOfNonImm:equalTo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsClassOfNonImmequalToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isClassOfNonImm:equalTo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isClassOfNonImm:equalTo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsClassOfNonImmequalTocompactClassIndexSmoke [
  self testMethod: #isClassOfNonImm:equalTo:compactClassIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsClassOfNonImmequalTocompactClassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isClassOfNonImm:equalTo:compactClassIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isClassOfNonImm:equalTo:compactClassIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsCompactInstanceSmoke [
  self testMethod: #isCompactInstance:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsCompactInstanceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isCompactInstance:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isCompactInstance:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsCompiledMethodFormatSmoke [
  self testMethod: #isCompiledMethodFormat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsCompiledMethodFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isCompiledMethodFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isCompiledMethodFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsCompiledMethodHeaderSmoke [
  self testMethod: #isCompiledMethodHeader:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsCompiledMethodHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isCompiledMethodHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isCompiledMethodHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsCompiledMethodSmoke [
  self testMethod: #isCompiledMethod:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsCompiledMethodStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isCompiledMethod:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isCompiledMethod:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsContextHeaderSmoke [
  self testMethod: #isContextHeader:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsContextHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isContextHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isContextHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsContextNonImmSmoke [
  self testMethod: #isContextNonImm:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsContextNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isContextNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isContextNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsContextSmoke [
  self testMethod: #isContext:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsContextStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isContext:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isContext:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsCopiedIntoSegmentSmoke [
  self testMethod: #isCopiedIntoSegment:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsCopiedIntoSegmentStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isCopiedIntoSegment:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isCopiedIntoSegment:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsEmptyObjStackSmoke [
  self testMethod: #isEmptyObjStack:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsEmptyObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isEmptyObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isEmptyObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsEnumerableObjectNoAssertSmoke [
  self testMethod: #isEnumerableObjectNoAssert:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsEnumerableObjectNoAssertStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isEnumerableObjectNoAssert:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isEnumerableObjectNoAssert:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsEnumerableObjectSmoke [
  self testMethod: #isEnumerableObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsEnumerableObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isEnumerableObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isEnumerableObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsEphemeronFormatSmoke [
  self testMethod: #isEphemeronFormat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsEphemeronFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isEphemeronFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isEphemeronFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsEphemeronSmoke [
  self testMethod: #isEphemeron:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsEphemeronStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isEphemeron:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isEphemeron:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsFixedSizePointerFormatSmoke [
  self testMethod: #isFixedSizePointerFormat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsFixedSizePointerFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isFixedSizePointerFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isFixedSizePointerFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsFloatInstanceSmoke [
  self testMethod: #isFloatInstance:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsFloatInstanceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isFloatInstance:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isFloatInstance:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsFloatOrIntSmoke [
  self testMethod: #isFloatOrInt:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsFloatOrIntStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isFloatOrInt:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isFloatOrInt:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsForwardedClassTagSmoke [
  self testMethod: #isForwardedClassTag:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsForwardedClassTagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isForwardedClassTag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isForwardedClassTag:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsForwardedObjectClassIndexPunSmoke [
  self testMethod: #isForwardedObjectClassIndexPun
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsForwardedObjectClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isForwardedObjectClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isForwardedObjectClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsForwardedSmoke [
  self testMethod: #isForwarded:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsForwardedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isForwarded:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isForwarded:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsFreeObjectClassIndexPunSmoke [
  self testMethod: #isFreeObjectClassIndexPun
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsFreeObjectClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isFreeObjectClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isFreeObjectClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsFreeObjectSmoke [
  self testMethod: #isFreeObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsFreeObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isFreeObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isFreeObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsFreeOopSmoke [
  self testMethod: #isFreeOop:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsFreeOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isFreeOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isFreeOop:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsGreySmoke [
  self testMethod: #isGrey:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsGreyStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isGrey:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isGrey:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsHiddenObjSmoke [
  self testMethod: #isHiddenObj:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsHiddenObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isHiddenObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isHiddenObj:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsImmediateCharacterSmoke [
  self testMethod: #isImmediateCharacter:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsImmediateCharacterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isImmediateCharacter:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isImmediateCharacter:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsImmediateFloatSmoke [
  self testMethod: #isImmediateFloat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsImmediateFloatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isImmediateFloat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isImmediateFloat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsImmediateSmoke [
  self testMethod: #isImmediate:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsImmediateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isImmediate:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isImmediate:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsImmutableSmoke [
  self testMethod: #isImmutable:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsImmutableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isImmutable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isImmutable:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInClassTableSmoke [
  self testMethod: #isInClassTable:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInClassTableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInClassTable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInClassTable:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInEdenSmoke [
  self testMethod: #isInEden:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInEdenStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInEden:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInEden:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInFutureSpaceSmoke [
  self testMethod: #isInFutureSpace:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInFutureSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInFutureSpace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInFutureSpace:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInMemorySmoke [
  self testMethod: #isInMemory:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInMemory:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInMemory:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInNewSpaceSmoke [
  self testMethod: #isInNewSpace:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInNewSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInNewSpace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInNewSpace:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInOldSpaceSmoke [
  self testMethod: #isInOldSpace:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInOldSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInOldSpace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInOldSpace:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInPastSpaceSmoke [
  self testMethod: #isInPastSpace:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInPastSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInPastSpace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInPastSpace:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInRangeCharacterCodeSmoke [
  self testMethod: #isInRangeCharacterCode:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInRangeCharacterCodeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInRangeCharacterCode:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInRangeCharacterCode:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsIndexableFormatSmoke [
  self testMethod: #isIndexableFormat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsIndexableFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isIndexableFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isIndexableFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsIndexableSmoke [
  self testMethod: #isIndexable:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsIndexableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isIndexable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isIndexable:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInstanceOfClassLargeNegativeIntegerSmoke [
  self testMethod: #isInstanceOfClassLargeNegativeInteger:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInstanceOfClassLargeNegativeIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInstanceOfClassLargeNegativeInteger:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInstanceOfClassLargeNegativeInteger:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInstanceOfClassLargePositiveIntegerSmoke [
  self testMethod: #isInstanceOfClassLargePositiveInteger:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsInstanceOfClassLargePositiveIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInstanceOfClassLargePositiveInteger:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInstanceOfClassLargePositiveInteger:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsIntegerObjectSmoke [
  self testMethod: #isIntegerObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsIntegerObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isIntegerObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isIntegerObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsIntegerValueSmoke [
  self testMethod: #isIntegerValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsIntegerValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isIntegerValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isIntegerValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsLargeFreeObjectSmoke [
  self testMethod: #isLargeFreeObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsLargeFreeObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isLargeFreeObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isLargeFreeObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsLargeIntegerInstanceSmoke [
  self testMethod: #isLargeIntegerInstance:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsLargeIntegerInstanceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isLargeIntegerInstance:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isLargeIntegerInstance:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsLilliputianSizeSmoke [
  self testMethod: #isLilliputianSize:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsLilliputianSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isLilliputianSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isLilliputianSize:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsLongsNonImmSmoke [
  self testMethod: #isLong64sNonImm:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsLongsNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isLong64sNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isLong64sNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsLongsSmoke [
  self testMethod: #isLong64s:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsLongsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isLong64s:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isLong64s:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsMarkedSmoke [
  self testMethod: #isMarked:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsMarkedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isMarked:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isMarked:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsMaybeFiredEphemeronFormatSmoke [
  self testMethod: #isMaybeFiredEphemeronFormat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsMaybeFiredEphemeronFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isMaybeFiredEphemeronFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isMaybeFiredEphemeronFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsMaybeFiredEphemeronSmoke [
  self testMethod: #isMaybeFiredEphemeron:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsMaybeFiredEphemeronStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isMaybeFiredEphemeron:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isMaybeFiredEphemeron:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsMobileObjectHeaderSmoke [
  self testMethod: #isMobileObjectHeader:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsMobileObjectHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isMobileObjectHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isMobileObjectHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsMobileObjectSmoke [
  self testMethod: #isMobileObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsMobileObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isMobileObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isMobileObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsNegativeSmallFloatSmoke [
  self testMethod: #isNegativeSmallFloat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsNegativeSmallFloatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isNegativeSmallFloat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isNegativeSmallFloat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsNonImmediateSmoke [
  self testMethod: #isNonImmediate:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsNonImmediateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isNonImmediate:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isNonImmediate:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsNonIntegerImmediateSmoke [
  self testMethod: #isNonIntegerImmediate:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsNonIntegerImmediateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isNonIntegerImmediate:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isNonIntegerImmediate:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsNonIntegerNonImmediateSmoke [
  self testMethod: #isNonIntegerNonImmediate:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsNonIntegerNonImmediateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isNonIntegerNonImmediate:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isNonIntegerNonImmediate:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsNonIntegerObjectSmoke [
  self testMethod: #isNonIntegerObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsNonIntegerObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isNonIntegerObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isNonIntegerObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsNormalObjectSmoke [
  self testMethod: #isNormalObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsNormalObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isNormalObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isNormalObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsObjEphemeronSmoke [
  self testMethod: #isObjEphemeron:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsObjEphemeronStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isObjEphemeron:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isObjEphemeron:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsObjImmutableSmoke [
  self testMethod: #isObjImmutable:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsObjImmutableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isObjImmutable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isObjImmutable:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsOldObjectSmoke [
  self testMethod: #isOldObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsOldObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isOldObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isOldObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsOopCompiledMethodSmoke [
  self testMethod: #isOopCompiledMethod:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsOopCompiledMethodStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isOopCompiledMethod:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isOopCompiledMethod:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsOopForwardedSmoke [
  self testMethod: #isOopForwarded:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsOopForwardedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isOopForwarded:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isOopForwarded:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsOopImmutableSmoke [
  self testMethod: #isOopImmutable:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsOopImmutableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isOopImmutable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isOopImmutable:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsOopMutableSmoke [
  self testMethod: #isOopMutable:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsOopMutableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isOopMutable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isOopMutable:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsPinnedSmoke [
  self testMethod: #isPinned:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsPinnedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isPinned:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isPinned:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsPointersFormatSmoke [
  self testMethod: #isPointersFormat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsPointersFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isPointersFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isPointersFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsPointersNonImmSmoke [
  self testMethod: #isPointersNonImm:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsPointersNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isPointersNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isPointersNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsPointersSmoke [
  self testMethod: #isPointers:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsPointersStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isPointers:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isPointers:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsPureBitsFormatSmoke [
  self testMethod: #isPureBitsFormat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsPureBitsFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isPureBitsFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isPureBitsFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsPureBitsNonImmSmoke [
  self testMethod: #isPureBitsNonImm:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsPureBitsNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isPureBitsNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isPureBitsNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsReallyYoungObjectSmoke [
  self testMethod: #isReallyYoungObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsReallyYoungObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isReallyYoungObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isReallyYoungObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsReallyYoungSmoke [
  self testMethod: #isReallyYoung:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsReallyYoungStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isReallyYoung:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isReallyYoung:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsRememberedObjectHeaderSmoke [
  self testMethod: #isRememberedObjectHeader:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsRememberedObjectHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isRememberedObjectHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isRememberedObjectHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsRememberedSmoke [
  self testMethod: #isRemembered:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsRememberedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isRemembered:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isRemembered:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsSegmentBridgeSmoke [
  self testMethod: #isSegmentBridge:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsSegmentBridgeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isSegmentBridge:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isSegmentBridge:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsSemaphoreObjSmoke [
  self testMethod: #isSemaphoreObj:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsSemaphoreObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isSemaphoreObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isSemaphoreObj:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsSemaphoreOopSmoke [
  self testMethod: #isSemaphoreOop:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsSemaphoreOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isSemaphoreOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isSemaphoreOop:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsShortsNonImmSmoke [
  self testMethod: #isShortsNonImm:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsShortsNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isShortsNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isShortsNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsShortsSmoke [
  self testMethod: #isShorts:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsShortsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isShorts:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isShorts:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsSmallFloatValueSmoke [
  self testMethod: #isSmallFloatValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsSmallFloatValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isSmallFloatValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isSmallFloatValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsSmallFloatZeroSmoke [
  self testMethod: #isSmallFloatZero:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsSmallFloatZeroStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isSmallFloatZero:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isSmallFloatZero:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsUnambiguouslyForwarderSmoke [
  self testMethod: #isUnambiguouslyForwarder:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsUnambiguouslyForwarderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isUnambiguouslyForwarder:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isUnambiguouslyForwarder:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsUnmarkedSmoke [
  self testMethod: #isUnmarked:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsUnmarkedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isUnmarked:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isUnmarked:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsValidClassIndexSmoke [
  self testMethod: #isValidClassIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsValidClassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isValidClassIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isValidClassIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsValidClassTagSmoke [
  self testMethod: #isValidClassTag:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsValidClassTagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isValidClassTag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isValidClassTag:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsValidObjStackAtSmoke [
  self testMethod: #isValidObjStackAt:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsValidObjStackAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isValidObjStackAt:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isValidObjStackAt:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsValidObjStackPagemyIndexSmoke [
  self testMethod: #isValidObjStackPage:myIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsValidObjStackPagemyIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isValidObjStackPage:myIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isValidObjStackPage:myIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsValidObjStackPagemyIndexfirstPageSmoke [
  self testMethod: #isValidObjStackPage:myIndex:firstPage:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsValidObjStackPagemyIndexfirstPageStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isValidObjStackPage:myIndex:firstPage:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isValidObjStackPage:myIndex:firstPage:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsValidObjStackSmoke [
  self testMethod: #isValidObjStack:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsValidObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isValidObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isValidObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsWeakFormatSmoke [
  self testMethod: #isWeakFormat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsWeakFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isWeakFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isWeakFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsWeakNonImmSmoke [
  self testMethod: #isWeakNonImm:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsWeakNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isWeakNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isWeakNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsWeakSmoke [
  self testMethod: #isWeak:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsWeakStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isWeak:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isWeak:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsWordsNonImmSmoke [
  self testMethod: #isWordsNonImm:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsWordsNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isWordsNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isWordsNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsWordsOrBytesNonImmSmoke [
  self testMethod: #isWordsOrBytesNonImm:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsWordsOrBytesNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isWordsOrBytesNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isWordsOrBytesNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsWordsOrBytesSmoke [
  self testMethod: #isWordsOrBytes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsWordsOrBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isWordsOrBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isWordsOrBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsWordsSmoke [
  self testMethod: #isWords:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsWordsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isWords:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isWords:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsYoungObjectSmoke [
  self testMethod: #isYoungObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsYoungObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isYoungObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isYoungObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsYoungSmoke [
  self testMethod: #isYoung:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsYoungStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isYoung:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isYoung:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsinstanceOfSmoke [
  self testMethod: #is:instanceOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsinstanceOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #is:instanceOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #is:instanceOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsinstanceOfcompactClassIndexSmoke [
  self testMethod: #is:instanceOf:compactClassIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsinstanceOfcompactClassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #is:instanceOf:compactClassIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #is:instanceOf:compactClassIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsonObjStackSmoke [
  self testMethod: #is:onObjStack:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsonObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #is:onObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #is:onObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testIsoutPointerClassHashForinlimitSmoke [
  self testMethod: #is:outPointerClassHashFor:in:limit:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testIsoutPointerClassHashForinlimitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #is:outPointerClassHashFor:in:limit:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #is:outPointerClassHashFor:in:limit:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testKeyOfEphemeronSmoke [
  self testMethod: #keyOfEphemeron:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testKeyOfEphemeronStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #keyOfEphemeron:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #keyOfEphemeron:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testKeyOfMaybeFiredEphemeronSmoke [
  self testMethod: #keyOfMaybeFiredEphemeron:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testKeyOfMaybeFiredEphemeronStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #keyOfMaybeFiredEphemeron:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #keyOfMaybeFiredEphemeron:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testKnownClassAtIndexSmoke [
  self testMethod: #knownClassAtIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testKnownClassAtIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #knownClassAtIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #knownClassAtIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLargeObjectBytesForSlotsSmoke [
  self testMethod: #largeObjectBytesForSlots:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLargeObjectBytesForSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #largeObjectBytesForSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #largeObjectBytesForSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLastClassIndexPunSmoke [
  self testMethod: #lastClassIndexPun
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLastClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lastClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lastClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLastHashSmoke [
  self testMethod: #lastHash:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLastHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lastHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lastHash:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLastPointerFormatSmoke [
  self testMethod: #lastPointerFormat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLastPointerFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lastPointerFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lastPointerFormat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLastPointerOfArraySmoke [
  self testMethod: #lastPointerOfArray:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLastPointerOfArrayStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lastPointerOfArray:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lastPointerOfArray:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLastPointerOfMethodHeaderSmoke [
  self testMethod: #lastPointerOfMethodHeader:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLastPointerOfMethodHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lastPointerOfMethodHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lastPointerOfMethodHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLastPointerOfSmoke [
  self testMethod: #lastPointerOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLastPointerOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lastPointerOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lastPointerOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLastPointerOfWhileSwizzlingSmoke [
  self testMethod: #lastPointerOfWhileSwizzling:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLastPointerOfWhileSwizzlingStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lastPointerOfWhileSwizzling:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lastPointerOfWhileSwizzling:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLeakCheckBecomeSmoke [
  self testMethod: #leakCheckBecome
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLeakCheckBecomeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #leakCheckBecome.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #leakCheckBecome.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLeakCheckFullGCSmoke [
  self testMethod: #leakCheckFullGC
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLeakCheckFullGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #leakCheckFullGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #leakCheckFullGC.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLeakCheckImageSegmentsSmoke [
  self testMethod: #leakCheckImageSegments
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLeakCheckImageSegmentsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #leakCheckImageSegments.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #leakCheckImageSegments.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLeakCheckIncrementalSmoke [
  self testMethod: #leakCheckIncremental
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLeakCheckIncrementalStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #leakCheckIncremental.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #leakCheckIncremental.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLeakCheckNewSpaceGCSmoke [
  self testMethod: #leakCheckNewSpaceGC
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLeakCheckNewSpaceGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #leakCheckNewSpaceGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #leakCheckNewSpaceGC.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLengthOfMaybeImmediateSmoke [
  self testMethod: #lengthOfMaybeImmediate:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLengthOfMaybeImmediateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lengthOfMaybeImmediate:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lengthOfMaybeImmediate:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLengthOfSmoke [
  self testMethod: #lengthOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLengthOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lengthOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lengthOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLengthOfbaseHeaderformatSmoke [
  self testMethod: #lengthOf:baseHeader:format:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLengthOfbaseHeaderformatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lengthOf:baseHeader:format:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lengthOf:baseHeader:format:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLengthOfformatSmoke [
  self testMethod: #lengthOf:format:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLengthOfformatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lengthOf:format:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lengthOf:format:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLilliputianChunkIndexSmoke [
  self testMethod: #lilliputianChunkIndex
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLilliputianChunkIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lilliputianChunkIndex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lilliputianChunkIndex.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLiteralCountOfMethodHeaderSmoke [
  self testMethod: #literalCountOfMethodHeader:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLiteralCountOfMethodHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #literalCountOfMethodHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #literalCountOfMethodHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLiteralCountOfSmoke [
  self testMethod: #literalCountOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLiteralCountOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #literalCountOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #literalCountOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLoadFloatOrIntFromSmoke [
  self testMethod: #loadFloatOrIntFrom:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLoadFloatOrIntFromStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #loadFloatOrIntFrom:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #loadFloatOrIntFrom:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLoadImageSegmentFromoutPointersSmoke [
  self testMethod: #loadImageSegmentFrom:outPointers:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLoadImageSegmentFromoutPointersStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #loadImageSegmentFrom:outPointers:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #loadImageSegmentFrom:outPointers:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLogBytesPerOopSmoke [
  self testMethod: #logBytesPerOop
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLogBytesPerOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #logBytesPerOop.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #logBytesPerOop.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLongPrintInstancesOfSmoke [
  self testMethod: #longPrintInstancesOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLongPrintInstancesOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #longPrintInstancesOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #longPrintInstancesOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLongPrintInstancesWithClassIndexSmoke [
  self testMethod: #longPrintInstancesWithClassIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLongPrintInstancesWithClassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #longPrintInstancesWithClassIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #longPrintInstancesWithClassIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLongPrintReferencesToSmoke [
  self testMethod: #longPrintReferencesTo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLongPrintReferencesToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #longPrintReferencesTo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #longPrintReferencesTo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testLowSpaceThresholdSmoke [
  self testMethod: #lowSpaceThreshold:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testLowSpaceThresholdStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lowSpaceThreshold:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lowSpaceThreshold:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMapExtraRootsSmoke [
  self testMethod: #mapExtraRoots
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMapExtraRootsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #mapExtraRoots.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #mapExtraRoots.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMapMournQueueSmoke [
  self testMethod: #mapMournQueue
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMapMournQueueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #mapMournQueue.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #mapMournQueue.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMapOopsAndValidateClassRefsFromtooutPointersSmoke [
  self testMethod: #mapOopsAndValidateClassRefsFrom:to:outPointers:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMapOopsAndValidateClassRefsFromtooutPointersStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #mapOopsAndValidateClassRefsFrom:to:outPointers:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #mapOopsAndValidateClassRefsFrom:to:outPointers:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMapOopsFromtooutPointersoutHashesSmoke [
  self testMethod: #mapOopsFrom:to:outPointers:outHashes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMapOopsFromtooutPointersoutHashesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #mapOopsFrom:to:outPointers:outHashes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #mapOopsFrom:to:outPointers:outHashes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMapSignedSmallFloatToSignedSmallFloatZeroSmoke [
  self testMethod: #mapSignedSmallFloatToSignedSmallFloatZero:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMapSignedSmallFloatToSignedSmallFloatZeroStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #mapSignedSmallFloatToSignedSmallFloatZero:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #mapSignedSmallFloatToSignedSmallFloatZero:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAccessibleObjectsAndFireEphemeronsSmoke [
  self testMethod: #markAccessibleObjectsAndFireEphemerons
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAccessibleObjectsAndFireEphemeronsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAccessibleObjectsAndFireEphemerons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAccessibleObjectsAndFireEphemerons.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAllUnscannedEphemeronsSmoke [
  self testMethod: #markAllUnscannedEphemerons
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAllUnscannedEphemeronsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAllUnscannedEphemerons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAllUnscannedEphemerons.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAndShouldScanSmoke [
  self testMethod: #markAndShouldScan:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAndShouldScanStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAndShouldScan:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAndShouldScan:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAndTraceClassOfSmoke [
  self testMethod: #markAndTraceClassOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAndTraceClassOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAndTraceClassOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAndTraceClassOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAndTraceExtraRootsSmoke [
  self testMethod: #markAndTraceExtraRoots
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAndTraceExtraRootsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAndTraceExtraRoots.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAndTraceExtraRoots.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAndTraceHiddenRootsSmoke [
  self testMethod: #markAndTraceHiddenRoots
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAndTraceHiddenRootsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAndTraceHiddenRoots.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAndTraceHiddenRoots.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAndTraceObjStackandContentsSmoke [
  self testMethod: #markAndTraceObjStack:andContents:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAndTraceObjStackandContentsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAndTraceObjStack:andContents:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAndTraceObjStack:andContents:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAndTraceSmoke [
  self testMethod: #markAndTrace:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAndTraceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAndTrace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAndTrace:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAndTraceWeaklingsFromSmoke [
  self testMethod: #markAndTraceWeaklingsFrom:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAndTraceWeaklingsFromStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAndTraceWeaklingsFrom:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAndTraceWeaklingsFrom:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAsCopiedIntoSegmentSmoke [
  self testMethod: #markAsCopiedIntoSegment:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkAsCopiedIntoSegmentStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAsCopiedIntoSegment:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAsCopiedIntoSegment:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkInactiveEphemeronsSmoke [
  self testMethod: #markInactiveEphemerons
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkInactiveEphemeronsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markInactiveEphemerons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markInactiveEphemerons.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkLoopFromSmoke [
  self testMethod: #markLoopFrom:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkLoopFromStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markLoopFrom:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markLoopFrom:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkObjectsInSmoke [
  self testMethod: #markObjectsIn:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkObjectsInStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markObjectsIn:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markObjectsIn:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkObjectsSmoke [
  self testMethod: #markObjects:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkObjectsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markObjects:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markObjects:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkSmoke [
  self testMethod: #mark:
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkStackSmoke [
  self testMethod: #markStack
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markStack.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markStack.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #mark:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #mark:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkWeaklingsAndMarkAndFireEphemeronsSmoke [
  self testMethod: #markWeaklingsAndMarkAndFireEphemerons
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkWeaklingsAndMarkAndFireEphemeronsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markWeaklingsAndMarkAndFireEphemerons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markWeaklingsAndMarkAndFireEphemerons.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkedBitFullShiftSmoke [
  self testMethod: #markedBitFullShift
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkedBitFullShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markedBitFullShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markedBitFullShift.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkedBitHalfShiftSmoke [
  self testMethod: #markedBitHalfShift
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMarkedBitHalfShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markedBitHalfShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markedBitHalfShift.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMaxCIntegerSmoke [
  self testMethod: #maxCInteger
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMaxCIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maxCInteger.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maxCInteger.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMaxIdentityHashSmoke [
  self testMethod: #maxIdentityHash
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMaxIdentityHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maxIdentityHash.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maxIdentityHash.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMaxOldSpaceSizeSmoke [
  self testMethod: #maxOldSpaceSize
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMaxOldSpaceSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maxOldSpaceSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maxOldSpaceSize.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMaxSlotsForAllocSmoke [
  self testMethod: #maxSlotsForAlloc
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMaxSlotsForAllocStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maxSlotsForAlloc.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maxSlotsForAlloc.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMaxSlotsForNewSpaceAllocSmoke [
  self testMethod: #maxSlotsForNewSpaceAlloc
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMaxSlotsForNewSpaceAllocStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maxSlotsForNewSpaceAlloc.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maxSlotsForNewSpaceAlloc.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMaxSmallIntegerSmoke [
  self testMethod: #maxSmallInteger
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMaxSmallIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maxSmallInteger.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maxSmallInteger.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMaybeMethodClassOfseemsToBeInstantiatingSmoke [
  self testMethod: #maybeMethodClassOf:seemsToBeInstantiating:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMaybeMethodClassOfseemsToBeInstantiatingStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maybeMethodClassOf:seemsToBeInstantiating:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maybeMethodClassOf:seemsToBeInstantiating:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMaybeSplObjSmoke [
  self testMethod: #maybeSplObj:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMaybeSplObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maybeSplObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maybeSplObj:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMemoryActiveProcessSmoke [
  self testMethod: #memoryActiveProcess
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMemoryActiveProcessStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #memoryActiveProcess.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #memoryActiveProcess.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMemoryBaseForImageReadSmoke [
  self testMethod: #memoryBaseForImageRead
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMemoryBaseForImageReadStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #memoryBaseForImageRead.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #memoryBaseForImageRead.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMemoryLimitSmoke [
  self testMethod: #memoryLimit
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMemoryLimitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #memoryLimit.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #memoryLimit.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMemorySchedulerPointerSmoke [
  self testMethod: #memorySchedulerPointer
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMemorySchedulerPointerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #memorySchedulerPointer.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #memorySchedulerPointer.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMemorySmoke [
  self testMethod: #memory
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #memory.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #memory.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMethodCacheHashOfwithSmoke [
  self testMethod: #methodCacheHashOf:with:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMethodCacheHashOfwithStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #methodCacheHashOf:with:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #methodCacheHashOf:with:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMethodDictionaryHashmaskSmoke [
  self testMethod: #methodDictionaryHash:mask:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMethodDictionaryHashmaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #methodDictionaryHash:mask:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #methodDictionaryHash:mask:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMethodHeaderFromSavedFirstFieldSmoke [
  self testMethod: #methodHeaderFromSavedFirstField:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMethodHeaderFromSavedFirstFieldStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #methodHeaderFromSavedFirstField:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #methodHeaderFromSavedFirstField:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMethodHeaderOfSmoke [
  self testMethod: #methodHeaderOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMethodHeaderOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #methodHeaderOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #methodHeaderOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMinSlotsForShorteningSmoke [
  self testMethod: #minSlotsForShortening
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMinSlotsForShorteningStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #minSlotsForShortening.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #minSlotsForShortening.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMinSmallIntegerSmoke [
  self testMethod: #minSmallInteger
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMinSmallIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #minSmallInteger.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #minSmallInteger.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMournQueueSmoke [
  self testMethod: #mournQueue
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMournQueueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #mournQueue.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #mournQueue.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testMoveClassesForwardsInSmoke [
  self testMethod: #moveClassesForwardsIn:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testMoveClassesForwardsInStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #moveClassesForwardsIn:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #moveClassesForwardsIn:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNaiveSwapHeadersandcopyHashFlagSmoke [
  self testMethod: #naiveSwapHeaders:and:copyHashFlag:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNaiveSwapHeadersandcopyHashFlagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #naiveSwapHeaders:and:copyHashFlag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #naiveSwapHeaders:and:copyHashFlag:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNeedGCFlagSmoke [
  self testMethod: #needGCFlag
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNeedGCFlagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #needGCFlag.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #needGCFlag.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNegativeSmallFloatZeroSmoke [
  self testMethod: #negativeSmallFloatZero
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNegativeSmallFloatZeroStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #negativeSmallFloatZero.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #negativeSmallFloatZero.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNewHashBitsOfSmoke [
  self testMethod: #newHashBitsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNewHashBitsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newHashBitsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newHashBitsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNewObjectHashSmoke [
  self testMethod: #newObjectHash
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNewObjectHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newObjectHash.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newObjectHash.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNewOutPointeratinhashesSmoke [
  self testMethod: #newOutPointer:at:in:hashes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNewOutPointeratinhashesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newOutPointer:at:in:hashes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newOutPointer:at:in:hashes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNewSpaceBytesSmoke [
  self testMethod: #newSpaceBytes
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNewSpaceBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newSpaceBytes.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newSpaceBytes.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNewSpaceIsEmptySmoke [
  self testMethod: #newSpaceIsEmpty
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNewSpaceIsEmptyStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newSpaceIsEmpty.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newSpaceIsEmpty.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNewSpaceLimitSmoke [
  self testMethod: #newSpaceLimit
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNewSpaceLimitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newSpaceLimit.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newSpaceLimit.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNewSpaceRefCountMaskSmoke [
  self testMethod: #newSpaceRefCountMask
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNewSpaceRefCountMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newSpaceRefCountMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newSpaceRefCountMask.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNewSpaceSizeSmoke [
  self testMethod: #newSpaceSize
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNewSpaceSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newSpaceSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newSpaceSize.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNewSpaceStartSmoke [
  self testMethod: #newSpaceStart
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNewSpaceStartStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newSpaceStart.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newSpaceStart.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNilFieldsOfSmoke [
  self testMethod: #nilFieldsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNilFieldsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #nilFieldsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #nilFieldsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNilObjectSmoke [
  self testMethod: #nilObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNilObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #nilObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #nilObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNilUnmarkedWeaklingSlotsInSmoke [
  self testMethod: #nilUnmarkedWeaklingSlotsIn:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNilUnmarkedWeaklingSlotsInStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #nilUnmarkedWeaklingSlotsIn:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #nilUnmarkedWeaklingSlotsIn:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNilUnmarkedWeaklingSlotsSmoke [
  self testMethod: #nilUnmarkedWeaklingSlots
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNilUnmarkedWeaklingSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #nilUnmarkedWeaklingSlots.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #nilUnmarkedWeaklingSlots.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNoCheckClassAtIndexSmoke [
  self testMethod: #noCheckClassAtIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNoCheckClassAtIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #noCheckClassAtIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #noCheckClassAtIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNoCheckPushonObjStackSmoke [
  self testMethod: #noCheckPush:onObjStack:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNoCheckPushonObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #noCheckPush:onObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #noCheckPush:onObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNoFixupFollowFieldofObjectSmoke [
  self testMethod: #noFixupFollowField:ofObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNoFixupFollowFieldofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #noFixupFollowField:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #noFixupFollowField:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNoInlineFollowForwardedSmoke [
  self testMethod: #noInlineFollowForwarded:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNoInlineFollowForwardedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #noInlineFollowForwarded:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #noInlineFollowForwarded:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNoInlineObjectAfterlimitSmoke [
  self testMethod: #noInlineObjectAfter:limit:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNoInlineObjectAfterlimitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #noInlineObjectAfter:limit:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #noInlineObjectAfter:limit:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNoUnscannedEphemeronsSmoke [
  self testMethod: #noUnscannedEphemerons
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNoUnscannedEphemeronsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #noUnscannedEphemerons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #noUnscannedEphemerons.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNonIndexablePointerFormatSmoke [
  self testMethod: #nonIndexablePointerFormat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNonIndexablePointerFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #nonIndexablePointerFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #nonIndexablePointerFormat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumBitUnitsOfSmoke [
  self testMethod: #num64BitUnitsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumBitUnitsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #num64BitUnitsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #num64BitUnitsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumBytesOfBytesSmoke [
  self testMethod: #numBytesOfBytes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumBytesOfBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numBytesOfBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numBytesOfBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumBytesOfSmoke [
  self testMethod: #numBytesOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumBytesOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numBytesOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numBytesOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumFixedSlotsOfSmoke [
  self testMethod: #numFixedSlotsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumFixedSlotsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numFixedSlotsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numFixedSlotsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumFreeListsSmoke [
  self testMethod: #numFreeLists
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumFreeListsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numFreeLists.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numFreeLists.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumPointerSlotsOfSmoke [
  self testMethod: #numPointerSlotsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumPointerSlotsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numPointerSlotsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numPointerSlotsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSlotsForBytesSmoke [
  self testMethod: #numSlotsForBytes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSlotsForBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSlotsForBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSlotsForBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSlotsForShorteningtoIndexableSizeSmoke [
  self testMethod: #numSlotsForShortening:toIndexableSize:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSlotsForShorteningtoIndexableSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSlotsForShortening:toIndexableSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSlotsForShortening:toIndexableSize:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSlotsFullShiftSmoke [
  self testMethod: #numSlotsFullShift
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSlotsFullShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSlotsFullShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSlotsFullShift.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSlotsHalfShiftSmoke [
  self testMethod: #numSlotsHalfShift
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSlotsHalfShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSlotsHalfShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSlotsHalfShift.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSlotsMaskSmoke [
  self testMethod: #numSlotsMask
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSlotsMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSlotsMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSlotsMask.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSlotsOfAnySmoke [
  self testMethod: #numSlotsOfAny:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSlotsOfAnyStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSlotsOfAny:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSlotsOfAny:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSlotsOfSmoke [
  self testMethod: #numSlotsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSlotsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSlotsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSlotsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSmallIntegerBitsSmoke [
  self testMethod: #numSmallIntegerBits
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSmallIntegerBitsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSmallIntegerBits.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSmallIntegerBits.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSmallIntegerTagBitsSmoke [
  self testMethod: #numSmallIntegerTagBits
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSmallIntegerTagBitsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSmallIntegerTagBits.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSmallIntegerTagBits.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumStrongSlotsOfInephemeralSmoke [
  self testMethod: #numStrongSlotsOfInephemeral:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumStrongSlotsOfInephemeralStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numStrongSlotsOfInephemeral:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numStrongSlotsOfInephemeral:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumStrongSlotsOfWeaklingSmoke [
  self testMethod: #numStrongSlotsOfWeakling:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumStrongSlotsOfWeaklingStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numStrongSlotsOfWeakling:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numStrongSlotsOfWeakling:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumStrongSlotsOfformatephemeronInactiveIfSmoke [
  self testMethod: #numStrongSlotsOf:format:ephemeronInactiveIf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumStrongSlotsOfformatephemeronInactiveIfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numStrongSlotsOf:format:ephemeronInactiveIf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numStrongSlotsOf:format:ephemeronInactiveIf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSurvivorSpacesSmoke [
  self testMethod: #numSurvivorSpaces
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumSurvivorSpacesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSurvivorSpaces.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSurvivorSpaces.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumTagBitsSmoke [
  self testMethod: #numTagBits
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumTagBitsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numTagBits.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numTagBits.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testNumberOfForwardersSmoke [
  self testMethod: #numberOfForwarders
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testNumberOfForwardersStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numberOfForwarders.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numberOfForwarders.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testObjStackdoSmoke [
  self testMethod: #objStack:do:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testObjStackdoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objStack:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objStack:do:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testObjStackfromdoSmoke [
  self testMethod: #objStack:from:do:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testObjStackfromdoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objStack:from:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objStack:from:do:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testObjectAfterSmoke [
  self testMethod: #objectAfter:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testObjectAfterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objectAfter:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objectAfter:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testObjectAfterlimitSmoke [
  self testMethod: #objectAfter:limit:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testObjectAfterlimitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objectAfter:limit:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objectAfter:limit:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testObjectBeforeSmoke [
  self testMethod: #objectBefore:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testObjectBeforeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objectBefore:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objectBefore:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testObjectBytesForSlotsSmoke [
  self testMethod: #objectBytesForSlots:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testObjectBytesForSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objectBytesForSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objectBytesForSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testObjectStartingAtSmoke [
  self testMethod: #objectStartingAt:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testObjectStartingAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objectStartingAt:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objectStartingAt:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testObjectWithRawSlotsHasOverflowHeaderSmoke [
  self testMethod: #objectWithRawSlotsHasOverflowHeader:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testObjectWithRawSlotsHasOverflowHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objectWithRawSlotsHasOverflowHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objectWithRawSlotsHasOverflowHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testObjectsReachableFromRootsSmoke [
  self testMethod: #objectsReachableFromRoots:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testObjectsReachableFromRootsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objectsReachableFromRoots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objectsReachableFromRoots:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testObsoleteDontUseThisFetchWordofObjectSmoke [
  self testMethod: #obsoleteDontUseThisFetchWord:ofObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testObsoleteDontUseThisFetchWordofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #obsoleteDontUseThisFetchWord:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #obsoleteDontUseThisFetchWord:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testOkayOopSmoke [
  self testMethod: #okayOop:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testOkayOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #okayOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #okayOop:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testOldRawNumSlotsOfSmoke [
  self testMethod: #oldRawNumSlotsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testOldRawNumSlotsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #oldRawNumSlotsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #oldRawNumSlotsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testOldSmallFloatTagSmoke [
  self testMethod: #oldSmallFloatTag
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testOldSmallFloatTagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #oldSmallFloatTag.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #oldSmallFloatTag.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testOldSpaceObjectAfterSmoke [
  self testMethod: #oldSpaceObjectAfter:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testOldSpaceObjectAfterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #oldSpaceObjectAfter:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #oldSpaceObjectAfter:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testOldSpaceSizeSmoke [
  self testMethod: #oldSpaceSize
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testOldSpaceSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #oldSpaceSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #oldSpaceSize.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testOldSpaceStartSmoke [
  self testMethod: #oldSpaceStart
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testOldSpaceStartStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #oldSpaceStart.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #oldSpaceStart.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testOutOfPlaceBecomeandcopyHashFlagSmoke [
  self testMethod: #outOfPlaceBecome:and:copyHashFlag:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testOutOfPlaceBecomeandcopyHashFlagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #outOfPlaceBecome:and:copyHashFlag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #outOfPlaceBecome:and:copyHashFlag:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPastSpaceStartSmoke [
  self testMethod: #pastSpaceStart
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPastSpaceStartStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #pastSpaceStart.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #pastSpaceStart.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPinObjectSmoke [
  self testMethod: #pinObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPinObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #pinObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #pinObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPinnedBitShiftSmoke [
  self testMethod: #pinnedBitShift
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPinnedBitShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #pinnedBitShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #pinnedBitShift.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPopObjStackSmoke [
  self testMethod: #popObjStack:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPopObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #popObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #popObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPopRemappableOopSmoke [
  self testMethod: #popRemappableOop
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPopRemappableOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #popRemappableOop.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #popRemappableOop.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPositiveSmallFloatZeroSmoke [
  self testMethod: #positiveSmallFloatZero
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPositiveSmallFloatZeroStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #positiveSmallFloatZero.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #positiveSmallFloatZero.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPossibleRootStoreIntoSmoke [
  self testMethod: #possibleRootStoreInto:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPossibleRootStoreIntoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #possibleRootStoreInto:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #possibleRootStoreInto:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPostBecomeScanClassTableSmoke [
  self testMethod: #postBecomeScanClassTable:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPostBecomeScanClassTableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #postBecomeScanClassTable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #postBecomeScanClassTable:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrepareObjStackForPlanningCompactorSmoke [
  self testMethod: #prepareObjStackForPlanningCompactor:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrepareObjStackForPlanningCompactorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #prepareObjStackForPlanningCompactor:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #prepareObjStackForPlanningCompactor:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrepareObjStacksForPlanningCompactorSmoke [
  self testMethod: #prepareObjStacksForPlanningCompactor
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrepareObjStacksForPlanningCompactorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #prepareObjStacksForPlanningCompactor.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #prepareObjStacksForPlanningCompactor.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrimitiveErrorTableSmoke [
  self testMethod: #primitiveErrorTable
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrimitiveErrorTableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveErrorTable.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveErrorTable.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintActivationsOfSmoke [
  self testMethod: #printActivationsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintActivationsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printActivationsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printActivationsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintBogonsSmoke [
  self testMethod: #printBogons
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintBogonsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printBogons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printBogons.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintContextReferencesToSmoke [
  self testMethod: #printContextReferencesTo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintContextReferencesToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printContextReferencesTo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printContextReferencesTo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintEntitySmoke [
  self testMethod: #printEntity:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintEntityStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printEntity:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printEntity:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintForwardersSmoke [
  self testMethod: #printForwarders
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintForwardersStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printForwarders.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printForwarders.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintFreeChunkSmoke [
  self testMethod: #printFreeChunk:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintFreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printFreeChunk:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printFreeChunk:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintFreeChunkprintAsTreeNodeSmoke [
  self testMethod: #printFreeChunk:printAsTreeNode:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintFreeChunkprintAsTreeNodeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printFreeChunk:printAsTreeNode:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printFreeChunk:printAsTreeNode:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintFreeChunksSmoke [
  self testMethod: #printFreeChunks
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintFreeChunksStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printFreeChunks.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printFreeChunks.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintFreeListHeadsSmoke [
  self testMethod: #printFreeListHeads
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintFreeListHeadsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printFreeListHeads.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printFreeListHeads.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintFreeListSmoke [
  self testMethod: #printFreeList:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintFreeListStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printFreeList:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printFreeList:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintFreeTreeChunkSmoke [
  self testMethod: #printFreeTreeChunk:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintFreeTreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printFreeTreeChunk:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printFreeTreeChunk:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintFreeTreeSmoke [
  self testMethod: #printFreeTree
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintFreeTreeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printFreeTree.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printFreeTree.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintHeaderOfSmoke [
  self testMethod: #printHeaderOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintHeaderOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printHeaderOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printHeaderOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintHeaderTypeOfSmoke [
  self testMethod: #printHeaderTypeOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintHeaderTypeOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printHeaderTypeOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printHeaderTypeOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintInstancesOfSmoke [
  self testMethod: #printInstancesOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintInstancesOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printInstancesOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printInstancesOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintInstancesWithClassIndexSmoke [
  self testMethod: #printInstancesWithClassIndex:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintInstancesWithClassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printInstancesWithClassIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printInstancesWithClassIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintInvalidClassTableEntriesSmoke [
  self testMethod: #printInvalidClassTableEntries
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintInvalidClassTableEntriesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printInvalidClassTableEntries.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printInvalidClassTableEntries.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintInvalidClassTableHashesSmoke [
  self testMethod: #printInvalidClassTableHashes
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintInvalidClassTableHashesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printInvalidClassTableHashes.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printInvalidClassTableHashes.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintMarkedOopsSmoke [
  self testMethod: #printMarkedOops
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintMarkedOopsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printMarkedOops.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printMarkedOops.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintMethodImplementorsOfSmoke [
  self testMethod: #printMethodImplementorsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintMethodImplementorsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printMethodImplementorsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printMethodImplementorsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintMethodReferencesToSmoke [
  self testMethod: #printMethodReferencesTo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintMethodReferencesToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printMethodReferencesTo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printMethodReferencesTo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintObjStackPagemyIndexpageTypeSmoke [
  self testMethod: #printObjStackPage:myIndex:pageType:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintObjStackPagemyIndexpageTypeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printObjStackPage:myIndex:pageType:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printObjStackPage:myIndex:pageType:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintObjStackPagemyIndextagSmoke [
  self testMethod: #printObjStackPage:myIndex:tag:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintObjStackPagemyIndextagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printObjStackPage:myIndex:tag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printObjStackPage:myIndex:tag:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintObjStackSmoke [
  self testMethod: #printObjStack:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintObjectsFromtoSmoke [
  self testMethod: #printObjectsFrom:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintObjectsFromtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printObjectsFrom:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printObjectsFrom:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintObjectsWithHashSmoke [
  self testMethod: #printObjectsWithHash:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintObjectsWithHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printObjectsWithHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printObjectsWithHash:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintOopsExceptSmoke [
  self testMethod: #printOopsExcept:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintOopsExceptStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printOopsExcept:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printOopsExcept:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintOopsFromtoSmoke [
  self testMethod: #printOopsFrom:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintOopsFromtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printOopsFrom:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printOopsFrom:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintOopsSuchThatSmoke [
  self testMethod: #printOopsSuchThat:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintOopsSuchThatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printOopsSuchThat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printOopsSuchThat:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintReferencesToSmoke [
  self testMethod: #printReferencesTo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintReferencesToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printReferencesTo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printReferencesTo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintUnmarkedOopsSmoke [
  self testMethod: #printUnmarkedOops
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPrintUnmarkedOopsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printUnmarkedOops.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printUnmarkedOops.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPurgeDuplicateClassTableEntriesForSmoke [
  self testMethod: #purgeDuplicateClassTableEntriesFor:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPurgeDuplicateClassTableEntriesForStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #purgeDuplicateClassTableEntriesFor:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #purgeDuplicateClassTableEntriesFor:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPushOnUnscannedEphemeronsStackSmoke [
  self testMethod: #pushOnUnscannedEphemeronsStack:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPushOnUnscannedEphemeronsStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #pushOnUnscannedEphemeronsStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #pushOnUnscannedEphemeronsStack:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPushRemappableOopSmoke [
  self testMethod: #pushRemappableOop:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPushRemappableOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #pushRemappableOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #pushRemappableOop:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testPushonObjStackSmoke [
  self testMethod: #push:onObjStack:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testPushonObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #push:onObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #push:onObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testQueueMournerSmoke [
  self testMethod: #queueMourner:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testQueueMournerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #queueMourner:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #queueMourner:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRawClassTagForClassSmoke [
  self testMethod: #rawClassTagForClass:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRawClassTagForClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rawClassTagForClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rawClassTagForClass:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRawHashBitsOfSmoke [
  self testMethod: #rawHashBitsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRawHashBitsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rawHashBitsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rawHashBitsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRawNumSlotsOfSmoke [
  self testMethod: #rawNumSlotsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRawNumSlotsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rawNumSlotsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rawNumSlotsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRawNumSlotsOfputSmoke [
  self testMethod: #rawNumSlotsOf:put:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRawNumSlotsOfputStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rawNumSlotsOf:put:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rawNumSlotsOf:put:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRawOverflowSlotsOfSmoke [
  self testMethod: #rawOverflowSlotsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRawOverflowSlotsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rawOverflowSlotsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rawOverflowSlotsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRawOverflowSlotsOfputSmoke [
  self testMethod: #rawOverflowSlotsOf:put:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRawOverflowSlotsOfputStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rawOverflowSlotsOf:put:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rawOverflowSlotsOf:put:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRelocateObjStackForPlanningCompactorSmoke [
  self testMethod: #relocateObjStackForPlanningCompactor:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRelocateObjStackForPlanningCompactorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #relocateObjStackForPlanningCompactor:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #relocateObjStackForPlanningCompactor:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRelocateObjStacksForPlanningCompactorSmoke [
  self testMethod: #relocateObjStacksForPlanningCompactor
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRelocateObjStacksForPlanningCompactorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #relocateObjStacksForPlanningCompactor.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #relocateObjStacksForPlanningCompactor.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRemapBufferCountSmoke [
  self testMethod: #remapBufferCount
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRemapBufferCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #remapBufferCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #remapBufferCount.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRemapBufferSmoke [
  self testMethod: #remapBuffer
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRemapBufferStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #remapBuffer.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #remapBuffer.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRemapSmoke [
  self testMethod: #remap:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRemapStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #remap:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #remap:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRememberedBitShiftSmoke [
  self testMethod: #rememberedBitShift
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRememberedBitShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rememberedBitShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rememberedBitShift.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRememberedSetObjSmoke [
  self testMethod: #rememberedSetObj
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRememberedSetObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rememberedSetObj.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rememberedSetObj.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRemoveGCRootSmoke [
  self testMethod: #removeGCRoot:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRemoveGCRootStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #removeGCRoot:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #removeGCRoot:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testResetAllocationAccountingAfterGCSmoke [
  self testMethod: #resetAllocationAccountingAfterGC
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testResetAllocationAccountingAfterGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #resetAllocationAccountingAfterGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #resetAllocationAccountingAfterGC.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testResetFreeListHeadsSmoke [
  self testMethod: #resetFreeListHeads
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testResetFreeListHeadsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #resetFreeListHeads.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #resetFreeListHeads.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRestoreObjectsInsavedHashesSmoke [
  self testMethod: #restoreObjectsIn:savedHashes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRestoreObjectsInsavedHashesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #restoreObjectsIn:savedHashes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #restoreObjectsIn:savedHashes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRestoreObjectsInupTosavedFirstFieldsSmoke [
  self testMethod: #restoreObjectsIn:upTo:savedFirstFields:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRestoreObjectsInupTosavedFirstFieldsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #restoreObjectsIn:upTo:savedFirstFields:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #restoreObjectsIn:upTo:savedFirstFields:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testReturnrestoringObjectsInsavedFirstFieldsandsavedHashesSmoke [
  self testMethod: #return:restoringObjectsIn:savedFirstFields:and:savedHashes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testReturnrestoringObjectsInsavedFirstFieldsandsavedHashesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #return:restoringObjectsIn:savedFirstFields:and:savedHashes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #return:restoringObjectsIn:savedFirstFields:and:savedHashes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testReturnrestoringObjectsInupTosavedFirstFieldsSmoke [
  self testMethod: #return:restoringObjectsIn:upTo:savedFirstFields:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testReturnrestoringObjectsInupTosavedFirstFieldsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #return:restoringObjectsIn:upTo:savedFirstFields:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #return:restoringObjectsIn:upTo:savedFirstFields:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testReverseBytesFromtoSmoke [
  self testMethod: #reverseBytesFrom:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testReverseBytesFromtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #reverseBytesFrom:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #reverseBytesFrom:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testReverseBytesInBitWordsFromtoSmoke [
  self testMethod: #reverseBytesIn32BitWordsFrom:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testReverseBytesInBitWordsFromtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #reverseBytesIn32BitWordsFrom:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #reverseBytesIn32BitWordsFrom:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testReverseBytesInBitWordsInSmoke [
  self testMethod: #reverseBytesIn32BitWordsIn:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testReverseBytesInBitWordsInStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #reverseBytesIn32BitWordsIn:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #reverseBytesIn32BitWordsIn:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testReverseBytesInMemorySmoke [
  self testMethod: #reverseBytesInMemory
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testReverseBytesInMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #reverseBytesInMemory.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #reverseBytesInMemory.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRootTableCapacitySmoke [
  self testMethod: #rootTableCapacity
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRootTableCapacityStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rootTableCapacity.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rootTableCapacity.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRootTableCountSmoke [
  self testMethod: #rootTableCount
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRootTableCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rootTableCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rootTableCount.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRotateLeftSmoke [
  self testMethod: #rotateLeft:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRotateLeftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rotateLeft:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rotateLeft:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRotateRightSmoke [
  self testMethod: #rotateRight:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRotateRightStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rotateRight:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rotateRight:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRotatedFloatBitsOfSmoke [
  self testMethod: #rotatedFloatBitsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRotatedFloatBitsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rotatedFloatBitsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rotatedFloatBitsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRoundBytesToAllocationUnitSmoke [
  self testMethod: #roundBytesToAllocationUnit:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRoundBytesToAllocationUnitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #roundBytesToAllocationUnit:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #roundBytesToAllocationUnit:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRoundUpHeapSizeSmoke [
  self testMethod: #roundUpHeapSize:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRoundUpHeapSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #roundUpHeapSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #roundUpHeapSize:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRtRefCountOfSmoke [
  self testMethod: #rtRefCountOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRtRefCountOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rtRefCountOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rtRefCountOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRtRefCountOfputSmoke [
  self testMethod: #rtRefCountOf:put:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRtRefCountOfputStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rtRefCountOf:put:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rtRefCountOf:put:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRunLeakCheckerForFreeSpaceSmoke [
  self testMethod: #runLeakCheckerForFreeSpace:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRunLeakCheckerForFreeSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #runLeakCheckerForFreeSpace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #runLeakCheckerForFreeSpace:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRunLeakCheckerForSmoke [
  self testMethod: #runLeakCheckerFor:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRunLeakCheckerForStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #runLeakCheckerFor:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #runLeakCheckerFor:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testRunLeakCheckerForexcludeUnmarkedObjsclassIndicesShouldBeValidSmoke [
  self testMethod: #runLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testRunLeakCheckerForexcludeUnmarkedObjsclassIndicesShouldBeValidStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #runLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #runLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSafePrintStringOfSmoke [
  self testMethod: #safePrintStringOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSafePrintStringOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #safePrintStringOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #safePrintStringOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSavedOutHashFillValueSmoke [
  self testMethod: #savedOutHashFillValue
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSavedOutHashFillValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #savedOutHashFillValue.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #savedOutHashFillValue.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testScavengeInProgressSmoke [
  self testMethod: #scavengeInProgress
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testScavengeInProgressStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #scavengeInProgress.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #scavengeInProgress.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testScavengeThresholdAsExtentSmoke [
  self testMethod: #scavengeThresholdAsExtent
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testScavengeThresholdAsExtentStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #scavengeThresholdAsExtent.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #scavengeThresholdAsExtent.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testScavengeThresholdSmoke [
  self testMethod: #scavengeThreshold
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testScavengeThresholdStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #scavengeThreshold.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #scavengeThreshold.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testScavengerDenominatorSmoke [
  self testMethod: #scavengerDenominator
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testScavengerDenominatorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #scavengerDenominator.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #scavengerDenominator.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testScavengingGCSmoke [
  self testMethod: #scavengingGC
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testScavengingGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #scavengingGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #scavengingGC.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testScavengingGCTenuringIfSmoke [
  self testMethod: #scavengingGCTenuringIf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testScavengingGCTenuringIfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #scavengingGCTenuringIf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #scavengingGCTenuringIf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testScheduleScavengeSmoke [
  self testMethod: #scheduleScavenge
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testScheduleScavengeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #scheduleScavenge.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #scheduleScavenge.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSegmentBridgePunSmoke [
  self testMethod: #segmentBridgePun
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSegmentBridgePunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #segmentBridgePun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #segmentBridgePun.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSegmentManagerSmoke [
  self testMethod: #segmentManager
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSegmentManagerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #segmentManager.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #segmentManager.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetCheckForLeaksSmoke [
  self testMethod: #setCheckForLeaks:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetCheckForLeaksStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setCheckForLeaks:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setCheckForLeaks:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetClassIndexOftoSmoke [
  self testMethod: #setClassIndexOf:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetClassIndexOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setClassIndexOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setClassIndexOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetCurrentAllocatedBytesToSmoke [
  self testMethod: #setCurrentAllocatedBytesTo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetCurrentAllocatedBytesToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setCurrentAllocatedBytesTo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setCurrentAllocatedBytesTo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetEndOfMemorySmoke [
  self testMethod: #setEndOfMemory:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetEndOfMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setEndOfMemory:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setEndOfMemory:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetFormatOftoSmoke [
  self testMethod: #setFormatOf:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetFormatOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setFormatOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setFormatOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetFreeOldSpaceStartSmoke [
  self testMethod: #setFreeOldSpaceStart:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetFreeOldSpaceStartStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setFreeOldSpaceStart:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setFreeOldSpaceStart:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetFreeSmoke [
  self testMethod: #setFree:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetFreeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setFree:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setFree:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetHashBitsOftoSmoke [
  self testMethod: #setHashBitsOf:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetHashBitsOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setHashBitsOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setHashBitsOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetHeapBasememoryLimitendOfMemorySmoke [
  self testMethod: #setHeapBase:memoryLimit:endOfMemory:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetHeapBasememoryLimitendOfMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setHeapBase:memoryLimit:endOfMemory:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setHeapBase:memoryLimit:endOfMemory:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetHeapGrowthToSizeGCRatioSmoke [
  self testMethod: #setHeapGrowthToSizeGCRatio:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetHeapGrowthToSizeGCRatioStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setHeapGrowthToSizeGCRatio:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setHeapGrowthToSizeGCRatio:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetHeapSizeAtPreviousGCSmoke [
  self testMethod: #setHeapSizeAtPreviousGC
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetHeapSizeAtPreviousGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setHeapSizeAtPreviousGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setHeapSizeAtPreviousGC.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetHiddenRootsObjSmoke [
  self testMethod: #setHiddenRootsObj:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetHiddenRootsObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setHiddenRootsObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setHiddenRootsObj:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetIsGreyOftoSmoke [
  self testMethod: #setIsGreyOf:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetIsGreyOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setIsGreyOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setIsGreyOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetIsImmutableOftoSmoke [
  self testMethod: #setIsImmutableOf:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetIsImmutableOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setIsImmutableOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setIsImmutableOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetIsMarkedOftoSmoke [
  self testMethod: #setIsMarkedOf:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetIsMarkedOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setIsMarkedOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setIsMarkedOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetIsPinnedOftoSmoke [
  self testMethod: #setIsPinnedOf:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetIsPinnedOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setIsPinnedOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setIsPinnedOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetIsRememberedOftoSmoke [
  self testMethod: #setIsRememberedOf:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetIsRememberedOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setIsRememberedOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setIsRememberedOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetLastSegmentSmoke [
  self testMethod: #setLastSegment:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetLastSegmentStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setLastSegment:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setLastSegment:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetMaxOldSpaceSizeSmoke [
  self testMethod: #setMaxOldSpaceSize:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetMaxOldSpaceSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setMaxOldSpaceSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setMaxOldSpaceSize:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetNextFreeChunkOfwithValuechunkBytesSmoke [
  self testMethod: #setNextFreeChunkOf:withValue:chunkBytes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetNextFreeChunkOfwithValuechunkBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setNextFreeChunkOf:withValue:chunkBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setNextFreeChunkOf:withValue:chunkBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetNextFreeChunkOfwithValueisLilliputianSizeSmoke [
  self testMethod: #setNextFreeChunkOf:withValue:isLilliputianSize:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetNextFreeChunkOfwithValueisLilliputianSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setNextFreeChunkOf:withValue:isLilliputianSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setNextFreeChunkOf:withValue:isLilliputianSize:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetObjectFreeSmoke [
  self testMethod: #setObjectFree:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetObjectFreeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setObjectFree:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setObjectFree:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSetclassIndexToformatToSmoke [
  self testMethod: #set:classIndexTo:formatTo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSetclassIndexToformatToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #set:classIndexTo:formatTo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #set:classIndexTo:formatTo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testShiftForAllocationUnitSmoke [
  self testMethod: #shiftForAllocationUnit
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testShiftForAllocationUnitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shiftForAllocationUnit.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shiftForAllocationUnit.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testShiftForWordSmoke [
  self testMethod: #shiftForWord
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testShiftForWordStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shiftForWord.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shiftForWord.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testShortPrintObjectsFromtoSmoke [
  self testMethod: #shortPrintObjectsFrom:to:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testShortPrintObjectsFromtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shortPrintObjectsFrom:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shortPrintObjectsFrom:to:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testShortentoIndexableSizeSmoke [
  self testMethod: #shorten:toIndexableSize:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testShortentoIndexableSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shorten:toIndexableSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shorten:toIndexableSize:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testShouldBreakForLookupIngivenSmoke [
  self testMethod: #shouldBreakForLookupIn:given:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testShouldBreakForLookupIngivenStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shouldBreakForLookupIn:given:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shouldBreakForLookupIn:given:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testShouldRemapOopSmoke [
  self testMethod: #shouldRemapOop:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testShouldRemapOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shouldRemapOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shouldRemapOop:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testShrinkThresholdSmoke [
  self testMethod: #shrinkThreshold
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testShrinkThresholdStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shrinkThreshold.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shrinkThreshold.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testShutDownIncrementalGCSmoke [
  self testMethod: #shutDownIncrementalGC:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testShutDownIncrementalGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shutDownIncrementalGC:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shutDownIncrementalGC:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSignalLowSpaceSmoke [
  self testMethod: #signalLowSpace
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSignalLowSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #signalLowSpace.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #signalLowSpace.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSixtyFourBitIndexableFormatSmoke [
  self testMethod: #sixtyFourBitIndexableFormat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSixtyFourBitIndexableFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sixtyFourBitIndexableFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sixtyFourBitIndexableFormat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSixtyFourBitLongsClassIndexPunSmoke [
  self testMethod: #sixtyFourBitLongsClassIndexPun
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSixtyFourBitLongsClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sixtyFourBitLongsClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sixtyFourBitLongsClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSizeBitsOfSafeSmoke [
  self testMethod: #sizeBitsOfSafe:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSizeBitsOfSafeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sizeBitsOfSafe:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sizeBitsOfSafe:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSizeBitsOfSmoke [
  self testMethod: #sizeBitsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSizeBitsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sizeBitsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sizeBitsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSizeOfFreeSmoke [
  self testMethod: #sizeOfFree:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSizeOfFreeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sizeOfFree:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sizeOfFree:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSizeOfLargestFreeChunkSmoke [
  self testMethod: #sizeOfLargestFreeChunk
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSizeOfLargestFreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sizeOfLargestFreeChunk.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sizeOfLargestFreeChunk.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSizeOfObjStackSmoke [
  self testMethod: #sizeOfObjStack:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSizeOfObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sizeOfObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sizeOfObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSlidingCompactionInProgressSmoke [
  self testMethod: #slidingCompactionInProgress
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSlidingCompactionInProgressStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #slidingCompactionInProgress.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #slidingCompactionInProgress.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSlidingCompactionRemapObjSmoke [
  self testMethod: #slidingCompactionRemapObj:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSlidingCompactionRemapObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #slidingCompactionRemapObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #slidingCompactionRemapObj:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSlidingCompactionShouldRemapObjSmoke [
  self testMethod: #slidingCompactionShouldRemapObj:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSlidingCompactionShouldRemapObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #slidingCompactionShouldRemapObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #slidingCompactionShouldRemapObj:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSlotSizeOfSmoke [
  self testMethod: #slotSizeOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSlotSizeOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #slotSizeOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #slotSizeOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatBitsOfSmoke [
  self testMethod: #smallFloatBitsOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatBitsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatBitsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatBitsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatExponentBitsSmoke [
  self testMethod: #smallFloatExponentBits
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatExponentBitsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatExponentBits.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatExponentBits.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatExponentOffsetSmoke [
  self testMethod: #smallFloatExponentOffset
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatExponentOffsetStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatExponentOffset.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatExponentOffset.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatMantissaBitsSmoke [
  self testMethod: #smallFloatMantissaBits
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatMantissaBitsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatMantissaBits.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatMantissaBits.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatObjectOfSmoke [
  self testMethod: #smallFloatObjectOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatObjectOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatObjectOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatObjectOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatSignBitSmoke [
  self testMethod: #smallFloatSignBit
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatSignBitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatSignBit.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatSignBit.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatTagSmoke [
  self testMethod: #smallFloatTag
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatTagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatTag.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatTag.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatValueOfSmoke [
  self testMethod: #smallFloatValueOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallFloatValueOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatValueOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatValueOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallIntegerTagSmoke [
  self testMethod: #smallIntegerTag
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallIntegerTagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallIntegerTag.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallIntegerTag.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallObjectBytesForSlotsSmoke [
  self testMethod: #smallObjectBytesForSlots:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSmallObjectBytesForSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallObjectBytesForSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallObjectBytesForSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSpecialObjectsOopSmoke [
  self testMethod: #specialObjectsOop:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSpecialObjectsOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #specialObjectsOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #specialObjectsOop:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSplObjSmoke [
  self testMethod: #splObj:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSplObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #splObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #splObj:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSplObjputSmoke [
  self testMethod: #splObj:put:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSplObjputStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #splObj:put:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #splObj:put:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStackValueofObjStackSmoke [
  self testMethod: #stackValue:ofObjStack:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStackValueofObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #stackValue:ofObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #stackValue:ofObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStartOfMemorySmoke [
  self testMethod: #startOfMemory
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStartOfMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #startOfMemory.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #startOfMemory.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStartOfObjectSmoke [
  self testMethod: #startOfObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStartOfObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #startOfObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #startOfObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStartOfObjectgivenSmoke [
  self testMethod: #startOfObject:given:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStartOfObjectgivenStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #startOfObject:given:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #startOfObject:given:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatCompMoveCountSmoke [
  self testMethod: #statCompMoveCount
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatCompMoveCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statCompMoveCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statCompMoveCount.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatCompactPassCountSmoke [
  self testMethod: #statCompactPassCount:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatCompactPassCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statCompactPassCount:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statCompactPassCount:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatCompactionUsecsSmoke [
  self testMethod: #statCompactionUsecs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatCompactionUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statCompactionUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statCompactionUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatFGCDeltaUsecsSmoke [
  self testMethod: #statFGCDeltaUsecs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatFGCDeltaUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statFGCDeltaUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statFGCDeltaUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatFullGCUsecsSmoke [
  self testMethod: #statFullGCUsecs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatFullGCUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statFullGCUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statFullGCUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatFullGCsSmoke [
  self testMethod: #statFullGCs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatFullGCsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statFullGCs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statFullGCs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatGCEndUsecsSmoke [
  self testMethod: #statGCEndUsecs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatGCEndUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statGCEndUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statGCEndUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatGrowMemorySmoke [
  self testMethod: #statGrowMemory
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatGrowMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statGrowMemory.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statGrowMemory.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatIGCDeltaUsecsSmoke [
  self testMethod: #statIGCDeltaUsecs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatIGCDeltaUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statIGCDeltaUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statIGCDeltaUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatIncrGCUsecsSmoke [
  self testMethod: #statIncrGCUsecs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatIncrGCUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statIncrGCUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statIncrGCUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatIncrGCsSmoke [
  self testMethod: #statIncrGCs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatIncrGCsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statIncrGCs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statIncrGCs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatMarkCountSmoke [
  self testMethod: #statMarkCount
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatMarkCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statMarkCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statMarkCount.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatMarkUsecsSmoke [
  self testMethod: #statMarkUsecs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatMarkUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statMarkUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statMarkUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatMaxAllocSegmentTimeSmoke [
  self testMethod: #statMaxAllocSegmentTime:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatMaxAllocSegmentTimeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statMaxAllocSegmentTime:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statMaxAllocSegmentTime:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatMkFwdCountSmoke [
  self testMethod: #statMkFwdCount
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatMkFwdCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statMkFwdCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statMkFwdCount.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatNumGCsSmoke [
  self testMethod: #statNumGCs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatNumGCsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statNumGCs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statNumGCs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatRootTableCountSmoke [
  self testMethod: #statRootTableCount
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatRootTableCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statRootTableCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statRootTableCount.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatRootTableOverflowsSmoke [
  self testMethod: #statRootTableOverflows
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatRootTableOverflowsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statRootTableOverflows.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statRootTableOverflows.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatSGCDeltaUsecsSmoke [
  self testMethod: #statSGCDeltaUsecs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatSGCDeltaUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statSGCDeltaUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statSGCDeltaUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatScavengeGCUsecsSmoke [
  self testMethod: #statScavengeGCUsecs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatScavengeGCUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statScavengeGCUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statScavengeGCUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatScavengesSmoke [
  self testMethod: #statScavenges
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatScavengesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statScavenges.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statScavenges.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatShrinkMemorySmoke [
  self testMethod: #statShrinkMemory
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatShrinkMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statShrinkMemory.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statShrinkMemory.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatSpecialMarkCountSmoke [
  self testMethod: #statSpecialMarkCount
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatSpecialMarkCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statSpecialMarkCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statSpecialMarkCount.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatSweepCountSmoke [
  self testMethod: #statSweepCount
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatSweepCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statSweepCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statSweepCount.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStatSweepUsecsSmoke [
  self testMethod: #statSweepUsecs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStatSweepUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statSweepUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statSweepUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStoreByteofObjectwithValueSmoke [
  self testMethod: #storeByte:ofObject:withValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStoreByteofObjectwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storeByte:ofObject:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storeByte:ofObject:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStoreCheckBoundarySmoke [
  self testMethod: #storeCheckBoundary
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStoreCheckBoundaryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storeCheckBoundary.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storeCheckBoundary.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStoreImageSegmentIntooutPointersrootsSmoke [
  self testMethod: #storeImageSegmentInto:outPointers:roots:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStoreImageSegmentIntooutPointersrootsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storeImageSegmentInto:outPointers:roots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storeImageSegmentInto:outPointers:roots:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStoreLongofObjectwithValueSmoke [
  self testMethod: #storeLong32:ofObject:withValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStoreLongofObjectwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storeLong32:ofObject:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storeLong32:ofObject:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerImmutabilityCheckofObjectwithValueSmoke [
  self testMethod: #storePointerImmutabilityCheck:ofObject:withValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerImmutabilityCheckofObjectwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointerImmutabilityCheck:ofObject:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointerImmutabilityCheck:ofObject:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerNoAssertofFreeChunkwithValueSmoke [
  self testMethod: #storePointerNoAssert:ofFreeChunk:withValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerNoAssertofFreeChunkwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointerNoAssert:ofFreeChunk:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointerNoAssert:ofFreeChunk:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerUncheckedofMaybeForwardedObjectwithValueSmoke [
  self testMethod: #storePointerUnchecked:ofMaybeForwardedObject:withValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerUncheckedofMaybeForwardedObjectwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointerUnchecked:ofMaybeForwardedObject:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointerUnchecked:ofMaybeForwardedObject:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerUncheckedofObjectwithValueSmoke [
  self testMethod: #storePointerUnchecked:ofObject:withValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerUncheckedofObjectwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointerUnchecked:ofObject:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointerUnchecked:ofObject:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerofForwarderwithValueSmoke [
  self testMethod: #storePointer:ofForwarder:withValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerofForwarderwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointer:ofForwarder:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointer:ofForwarder:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerofFreeChunkwithUncheckedValueSmoke [
  self testMethod: #storePointer:ofFreeChunk:withUncheckedValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerofFreeChunkwithUncheckedValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointer:ofFreeChunk:withUncheckedValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointer:ofFreeChunk:withUncheckedValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerofFreeChunkwithValueSmoke [
  self testMethod: #storePointer:ofFreeChunk:withValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerofFreeChunkwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointer:ofFreeChunk:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointer:ofFreeChunk:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerofObjStackwithValueSmoke [
  self testMethod: #storePointer:ofObjStack:withValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerofObjStackwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointer:ofObjStack:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointer:ofObjStack:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerofObjectwithValueSmoke [
  self testMethod: #storePointer:ofObject:withValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStorePointerofObjectwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointer:ofObject:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointer:ofObject:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStoreShortofObjectwithValueSmoke [
  self testMethod: #storeShort16:ofObject:withValue:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStoreShortofObjectwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storeShort16:ofObject:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storeShort16:ofObject:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testStringForCStringSmoke [
  self testMethod: #stringForCString:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testStringForCStringStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #stringForCString:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #stringForCString:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSufficientSpaceAfterGCSmoke [
  self testMethod: #sufficientSpaceAfterGC:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSufficientSpaceAfterGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sufficientSpaceAfterGC:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sufficientSpaceAfterGC:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSufficientSpaceToInstantiateindexableSizeSmoke [
  self testMethod: #sufficientSpaceToInstantiate:indexableSize:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSufficientSpaceToInstantiateindexableSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sufficientSpaceToInstantiate:indexableSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sufficientSpaceToInstantiate:indexableSize:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSwizzleFieldsOfFreeChunkSmoke [
  self testMethod: #swizzleFieldsOfFreeChunk:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSwizzleFieldsOfFreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #swizzleFieldsOfFreeChunk:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #swizzleFieldsOfFreeChunk:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSwizzleFieldsOfObjectSmoke [
  self testMethod: #swizzleFieldsOfObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSwizzleFieldsOfObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #swizzleFieldsOfObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #swizzleFieldsOfObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testSwizzleObjStackAtSmoke [
  self testMethod: #swizzleObjStackAt:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testSwizzleObjStackAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #swizzleObjStackAt:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #swizzleObjStackAt:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testTagMaskSmoke [
  self testMethod: #tagMask
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testTagMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #tagMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #tagMask.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testTenuringIncrementalGCSmoke [
  self testMethod: #tenuringIncrementalGC
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testTenuringIncrementalGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #tenuringIncrementalGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #tenuringIncrementalGC.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testTenuringThresholdSmoke [
  self testMethod: #tenuringThreshold
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testTenuringThresholdStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #tenuringThreshold.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #tenuringThreshold.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testThirtyTwoBitLongsClassIndexPunSmoke [
  self testMethod: #thirtyTwoBitLongsClassIndexPun
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testThirtyTwoBitLongsClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #thirtyTwoBitLongsClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #thirtyTwoBitLongsClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testTopOfObjStackSmoke [
  self testMethod: #topOfObjStack:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testTopOfObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #topOfObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #topOfObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testTopRemappableOopSmoke [
  self testMethod: #topRemappableOop
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testTopRemappableOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #topRemappableOop.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #topRemappableOop.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testTotalByteSizeOfSmoke [
  self testMethod: #totalByteSizeOf:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testTotalByteSizeOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #totalByteSizeOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #totalByteSizeOf:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testTotalFreeListBytesSmoke [
  self testMethod: #totalFreeListBytes
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testTotalFreeListBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #totalFreeListBytes.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #totalFreeListBytes.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testTotalFreeOldSpaceSmoke [
  self testMethod: #totalFreeOldSpace:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testTotalFreeOldSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #totalFreeOldSpace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #totalFreeOldSpace:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testTotalMemorySizeSmoke [
  self testMethod: #totalMemorySize
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testTotalMemorySizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #totalMemorySize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #totalMemorySize.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testTraceImmediatelySlotLimitSmoke [
  self testMethod: #traceImmediatelySlotLimit
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testTraceImmediatelySlotLimitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #traceImmediatelySlotLimit.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #traceImmediatelySlotLimit.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testTrueObjectSmoke [
  self testMethod: #trueObject
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testTrueObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #trueObject.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #trueObject.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUniqueIndexallInstancesIntolimitresultsIntoSmoke [
  self testMethod: #uniqueIndex:allInstancesInto:limit:resultsInto:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUniqueIndexallInstancesIntolimitresultsIntoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #uniqueIndex:allInstancesInto:limit:resultsInto:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #uniqueIndex:allInstancesInto:limit:resultsInto:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUnlinkFreeChunkatIndexchunkBytesSmoke [
  self testMethod: #unlinkFreeChunk:atIndex:chunkBytes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUnlinkFreeChunkatIndexchunkBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unlinkFreeChunk:atIndex:chunkBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unlinkFreeChunk:atIndex:chunkBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUnlinkFreeChunkatIndexisLilliputianSizeSmoke [
  self testMethod: #unlinkFreeChunk:atIndex:isLilliputianSize:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUnlinkFreeChunkatIndexisLilliputianSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unlinkFreeChunk:atIndex:isLilliputianSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unlinkFreeChunk:atIndex:isLilliputianSize:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUnlinkFreeChunkchunkBytesSmoke [
  self testMethod: #unlinkFreeChunk:chunkBytes:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUnlinkFreeChunkchunkBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unlinkFreeChunk:chunkBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unlinkFreeChunk:chunkBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUnlinkLilliputianChunkindexSmoke [
  self testMethod: #unlinkLilliputianChunk:index:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUnlinkLilliputianChunkindexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unlinkLilliputianChunk:index:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unlinkLilliputianChunk:index:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUnlinkSolitaryFreeTreeNodeSmoke [
  self testMethod: #unlinkSolitaryFreeTreeNode:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUnlinkSolitaryFreeTreeNodeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unlinkSolitaryFreeTreeNode:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unlinkSolitaryFreeTreeNode:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUnmarkAllObjectsSmoke [
  self testMethod: #unmarkAllObjects
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUnmarkAllObjectsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unmarkAllObjects.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unmarkAllObjects.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUnmarkObjectsInSmoke [
  self testMethod: #unmarkObjectsIn:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUnmarkObjectsInStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unmarkObjectsIn:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unmarkObjectsIn:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUnmarkSurvivingObjectsForCompactSmoke [
  self testMethod: #unmarkSurvivingObjectsForCompact
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUnmarkSurvivingObjectsForCompactStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unmarkSurvivingObjectsForCompact.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unmarkSurvivingObjectsForCompact.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUnpinObjectSmoke [
  self testMethod: #unpinObject:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUnpinObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unpinObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unpinObject:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUpdateFreeListsSmoke [
  self testMethod: #updateFreeLists
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUpdateFreeListsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #updateFreeLists.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #updateFreeLists.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUpdateFullGCStatsSmoke [
  self testMethod: #updateFullGCStats
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUpdateFullGCStatsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #updateFullGCStats.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #updateFullGCStats.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUpdateListStartingAtSmoke [
  self testMethod: #updateListStartingAt:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUpdateListStartingAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #updateListStartingAt:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #updateListStartingAt:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUpdatePostScavengeSmoke [
  self testMethod: #updatePostScavenge:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUpdatePostScavengeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #updatePostScavenge:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #updatePostScavenge:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUpdateRootOfObjStackAtwithSmoke [
  self testMethod: #updateRootOfObjStackAt:with:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUpdateRootOfObjStackAtwithStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #updateRootOfObjStackAt:with:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #updateRootOfObjStackAt:with:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testUpdateSweepEndUsecsSmoke [
  self testMethod: #updateSweepEndUsecs
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testUpdateSweepEndUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #updateSweepEndUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #updateSweepEndUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testValidClassTableHashesSmoke [
  self testMethod: #validClassTableHashes
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testValidClassTableHashesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #validClassTableHashes.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #validClassTableHashes.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testValidClassTableRootPagesSmoke [
  self testMethod: #validClassTableRootPages
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testValidClassTableRootPagesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #validClassTableRootPages.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #validClassTableRootPages.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testValidFreeTreeChunkSmoke [
  self testMethod: #validFreeTreeChunk:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testValidFreeTreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #validFreeTreeChunk:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #validFreeTreeChunk:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testValidFreeTreeChunkparentSmoke [
  self testMethod: #validFreeTreeChunk:parent:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testValidFreeTreeChunkparentStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #validFreeTreeChunk:parent:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #validFreeTreeChunk:parent:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testValidFreeTreeSmoke [
  self testMethod: #validFreeTree
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testValidFreeTreeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #validFreeTree.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #validFreeTree.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testValidObjStacksSmoke [
  self testMethod: #validObjStacks
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testValidObjStacksStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #validObjStacks.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #validObjStacks.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testVanillaRemapObjSmoke [
  self testMethod: #vanillaRemapObj:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testVanillaRemapObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #vanillaRemapObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #vanillaRemapObj:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testVanillaShouldRemapObjSmoke [
  self testMethod: #vanillaShouldRemapObj:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testVanillaShouldRemapObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #vanillaShouldRemapObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #vanillaShouldRemapObj:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testVmEndiannessSmoke [
  self testMethod: #vmEndianness
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testVmEndiannessStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #vmEndianness.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #vmEndianness.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testWeakArrayClassIndexPunSmoke [
  self testMethod: #weakArrayClassIndexPun
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testWeakArrayClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #weakArrayClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #weakArrayClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testWeakArrayFormatSmoke [
  self testMethod: #weakArrayFormat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testWeakArrayFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #weakArrayFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #weakArrayFormat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testWeaklingStackSmoke [
  self testMethod: #weaklingStack
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testWeaklingStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #weaklingStack.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #weaklingStack.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testWhereIsMaybeHeapThingSmoke [
  self testMethod: #whereIsMaybeHeapThing:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testWhereIsMaybeHeapThingStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #whereIsMaybeHeapThing:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #whereIsMaybeHeapThing:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testWithSimulatorFetchPointerMovedAsideDoSmoke [
  self testMethod: #withSimulatorFetchPointerMovedAsideDo:
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testWithSimulatorFetchPointerMovedAsideDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #withSimulatorFetchPointerMovedAsideDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #withSimulatorFetchPointerMovedAsideDo:.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testWordIndexableFormatSmoke [
  self testMethod: #wordIndexableFormat
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testWordIndexableFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #wordIndexableFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #wordIndexableFormat.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testWordSizeClassIndexPunSmoke [
  self testMethod: #wordSizeClassIndexPun
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testWordSizeClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #wordSizeClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #wordSizeClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
Spur64BitMemoryManagerTranslationTests >> testWordSizeSmoke [
  self testMethod: #wordSize
]

{ #category : #'equaliy-test' }
Spur64BitMemoryManagerTranslationTests >> testWordSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #wordSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #wordSize.
  self assert: illiString equals: slangString
]
