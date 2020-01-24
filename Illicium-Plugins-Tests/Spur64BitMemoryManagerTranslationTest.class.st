Class {
	#name : #Spur64BitMemoryManagerTranslationTest,
	#superclass : #ILVMSlangToCGeneratedTests,
	#category : #'Illicium-Plugins-Tests'
}

{ #category : #running }
Spur64BitMemoryManagerTranslationTest >> setUp [
  super setUp.
  testedClass := Spur64BitMemoryManager.
  translator := ASTCSlangTranslator new
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAccessibleObjectAfterSmoke [
  self testMethod: #accessibleObjectAfter:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAccessibleObjectAfterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #accessibleObjectAfter:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #accessibleObjectAfter:.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testActiveAndDeferredScanSmoke [
  self testMethod: #activeAndDeferredScan:
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testActiveAndDeferredScanStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #activeAndDeferredScan:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #activeAndDeferredScan:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAddFreeChunkWithBytesatSmoke [
  self testMethod: #addFreeChunkWithBytes:at:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAddFreeChunkWithBytesatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addFreeChunkWithBytes:at:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addFreeChunkWithBytes:at:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAddFreeSubTreeSmoke [
  self testMethod: #addFreeSubTree:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAddFreeSubTreeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addFreeSubTree:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addFreeSubTree:.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAddGCRootSmoke [
  self testMethod: #addGCRoot:
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAddGCRootStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addGCRoot:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addGCRoot:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAddToFreeListbytesSmoke [
  self testMethod: #addToFreeList:bytes:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAddToFreeListbytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addToFreeList:bytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addToFreeList:bytes:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAddToFreeTreebytesSmoke [
  self testMethod: #addToFreeTree:bytes:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAddToFreeTreebytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addToFreeTree:bytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addToFreeTree:bytes:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAddressAfterSmoke [
  self testMethod: #addressAfter:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAddressAfterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addressAfter:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addressAfter:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAddressCouldBeObjSmoke [
  self testMethod: #addressCouldBeObj:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAddressCouldBeObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addressCouldBeObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addressCouldBeObj:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAddressCouldBeOldObjSmoke [
  self testMethod: #addressCouldBeOldObj:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAddressCouldBeOldObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addressCouldBeOldObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addressCouldBeOldObj:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAddressCouldBeOopSmoke [
  self testMethod: #addressCouldBeOop:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAddressCouldBeOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #addressCouldBeOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #addressCouldBeOop:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAdjustAllOopsBySmoke [
  self testMethod: #adjustAllOopsBy:
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAdjustAllOopsByStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #adjustAllOopsBy:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #adjustAllOopsBy:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllExistingNewSpaceObjectsDoSmoke [
  self testMethod: #allExistingNewSpaceObjectsDo:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllExistingNewSpaceObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allExistingNewSpaceObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allExistingNewSpaceObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllExistingObjectsDoSmoke [
  self testMethod: #allExistingObjectsDo:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllExistingObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allExistingObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allExistingObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllExistingOldSpaceObjectsDoSmoke [
  self testMethod: #allExistingOldSpaceObjectsDo:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllExistingOldSpaceObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allExistingOldSpaceObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allExistingOldSpaceObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllFreeObjectsDoSmoke [
  self testMethod: #allFreeObjectsDo:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllFreeObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allFreeObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allFreeObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllHeapEntitiesDoSmoke [
  self testMethod: #allHeapEntitiesDo:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllHeapEntitiesDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allHeapEntitiesDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allHeapEntitiesDo:.
  self assert: illiString equals: slangString
]

{ #category : #'primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllInstancesOfSmoke [
  self testMethod: #allInstancesOf:
]

{ #category : #'primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllInstancesOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allInstancesOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allInstancesOf:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllNewSpaceEntitiesDoSmoke [
  self testMethod: #allNewSpaceEntitiesDo:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllNewSpaceEntitiesDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allNewSpaceEntitiesDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allNewSpaceEntitiesDo:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllNewSpaceObjectsDoSmoke [
  self testMethod: #allNewSpaceObjectsDo:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllNewSpaceObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allNewSpaceObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allNewSpaceObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllObjectsDoSafelySmoke [
  self testMethod: #allObjectsDoSafely:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllObjectsDoSafelyStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allObjectsDoSafely:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allObjectsDoSafely:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllObjectsDoSmoke [
  self testMethod: #allObjectsDo:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllObjectsInFreeTreeDoSmoke [
  self testMethod: #allObjectsInFreeTreeDo:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllObjectsInFreeTreeDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allObjectsInFreeTreeDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allObjectsInFreeTreeDo:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllObjectsInFreeTreedoSmoke [
  self testMethod: #allObjectsInFreeTree:do:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllObjectsInFreeTreedoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allObjectsInFreeTree:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allObjectsInFreeTree:do:.
  self assert: illiString equals: slangString
]

{ #category : #'primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllObjectsSmoke [
  self testMethod: #allObjects
]

{ #category : #'primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllObjectsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allObjects.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allObjects.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllObjectsUnmarkedSmoke [
  self testMethod: #allObjectsUnmarked
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllObjectsUnmarkedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allObjectsUnmarked.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allObjectsUnmarked.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldMarkedWeakObjectsOnWeaklingStackSmoke [
  self testMethod: #allOldMarkedWeakObjectsOnWeaklingStack
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldMarkedWeakObjectsOnWeaklingStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldMarkedWeakObjectsOnWeaklingStack.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldMarkedWeakObjectsOnWeaklingStack.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesDoSmoke [
  self testMethod: #allOldSpaceEntitiesDo:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldSpaceEntitiesDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldSpaceEntitiesDo:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesForCoalescingFromdoSmoke [
  self testMethod: #allOldSpaceEntitiesForCoalescingFrom:do:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesForCoalescingFromdoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldSpaceEntitiesForCoalescingFrom:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldSpaceEntitiesForCoalescingFrom:do:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesForCompactingFromtodoSmoke [
  self testMethod: #allOldSpaceEntitiesForCompactingFrom:to:do:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesForCompactingFromtodoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldSpaceEntitiesForCompactingFrom:to:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldSpaceEntitiesForCompactingFrom:to:do:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesFromdoSmoke [
  self testMethod: #allOldSpaceEntitiesFrom:do:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesFromdoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldSpaceEntitiesFrom:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldSpaceEntitiesFrom:do:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesFromtodoSmoke [
  self testMethod: #allOldSpaceEntitiesFrom:to:do:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldSpaceEntitiesFromtodoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldSpaceEntitiesFrom:to:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldSpaceEntitiesFrom:to:do:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldSpaceObjectsDoSmoke [
  self testMethod: #allOldSpaceObjectsDo:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldSpaceObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldSpaceObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldSpaceObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldSpaceObjectsFromdoSmoke [
  self testMethod: #allOldSpaceObjectsFrom:do:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllOldSpaceObjectsFromdoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allOldSpaceObjectsFrom:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allOldSpaceObjectsFrom:do:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllPastSpaceEntitiesDoSmoke [
  self testMethod: #allPastSpaceEntitiesDo:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllPastSpaceEntitiesDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allPastSpaceEntitiesDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allPastSpaceEntitiesDo:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllPastSpaceObjectsDoSmoke [
  self testMethod: #allPastSpaceObjectsDo:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllPastSpaceObjectsDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allPastSpaceObjectsDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allPastSpaceObjectsDo:.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllStrongSlotsOfWeaklingAreMarkedSmoke [
  self testMethod: #allStrongSlotsOfWeaklingAreMarked:
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllStrongSlotsOfWeaklingAreMarkedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allStrongSlotsOfWeaklingAreMarked:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allStrongSlotsOfWeaklingAreMarked:.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllUnscannedEphemeronsAreActiveSmoke [
  self testMethod: #allUnscannedEphemeronsAreActive
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllUnscannedEphemeronsAreActiveStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allUnscannedEphemeronsAreActive.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allUnscannedEphemeronsAreActive.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateBytesclassIndexSmoke [
  self testMethod: #allocateBytes:classIndex:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateBytesclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateBytes:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateBytes:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateLargestFreeChunkSmoke [
  self testMethod: #allocateLargestFreeChunk
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateLargestFreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateLargestFreeChunk.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateLargestFreeChunk.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateNewSpaceSlotsformatclassIndexSmoke [
  self testMethod: #allocateNewSpaceSlots:format:classIndex:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateNewSpaceSlotsformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateNewSpaceSlots:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateNewSpaceSlots:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateOldSpaceChunkOfBytesSmoke [
  self testMethod: #allocateOldSpaceChunkOfBytes:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateOldSpaceChunkOfBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateOldSpaceChunkOfBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateOldSpaceChunkOfBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateOldSpaceChunkOfBytessuchThatSmoke [
  self testMethod: #allocateOldSpaceChunkOfBytes:suchThat:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateOldSpaceChunkOfBytessuchThatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateOldSpaceChunkOfBytes:suchThat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateOldSpaceChunkOfBytes:suchThat:.
  self assert: illiString equals: slangString
]

{ #category : #'sista support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocatePinnedSlotsSmoke [
  self testMethod: #allocatePinnedSlots:
]

{ #category : #'sista support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocatePinnedSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocatePinnedSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocatePinnedSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateSlotsForPinningInOldSpacebytesformatclassIndexSmoke [
  self testMethod: #allocateSlotsForPinningInOldSpace:bytes:format:classIndex:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateSlotsForPinningInOldSpacebytesformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateSlotsForPinningInOldSpace:bytes:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateSlotsForPinningInOldSpace:bytes:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateSlotsInOldSpacebytesformatclassIndexSmoke [
  self testMethod: #allocateSlotsInOldSpace:bytes:format:classIndex:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateSlotsInOldSpacebytesformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateSlotsInOldSpace:bytes:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateSlotsInOldSpace:bytes:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateSlotsInOldSpaceformatclassIndexSmoke [
  self testMethod: #allocateSlotsInOldSpace:format:classIndex:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateSlotsInOldSpaceformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateSlotsInOldSpace:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateSlotsInOldSpace:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateSlotsformatclassIndexSmoke [
  self testMethod: #allocateSlots:format:classIndex:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateSlotsformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateSlots:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateSlots:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateSmallNewSpaceSlotsformatclassIndexSmoke [
  self testMethod: #allocateSmallNewSpaceSlots:format:classIndex:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocateSmallNewSpaceSlotsformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocateSmallNewSpaceSlots:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocateSmallNewSpaceSlots:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocationUnitSmoke [
  self testMethod: #allocationUnit
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAllocationUnitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #allocationUnit.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #allocationUnit.
  self assert: illiString equals: slangString
]

{ #category : #'primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAmbiguousClassallInstancesIntolimitresultsIntoSmoke [
  self testMethod: #ambiguousClass:allInstancesInto:limit:resultsInto:
]

{ #category : #'primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAmbiguousClassallInstancesIntolimitresultsIntoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ambiguousClass:allInstancesInto:limit:resultsInto:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ambiguousClass:allInstancesInto:limit:resultsInto:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAreIntegersandSmoke [
  self testMethod: #areIntegers:and:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAreIntegersandStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #areIntegers:and:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #areIntegers:and:.
  self assert: illiString equals: slangString
]

{ #category : #'class table puns-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testArrayClassIndexPunSmoke [
  self testMethod: #arrayClassIndexPun
]

{ #category : #'class table puns-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testArrayClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #arrayClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #arrayClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testArrayFormatSmoke [
  self testMethod: #arrayFormat
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testArrayFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #arrayFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #arrayFormat.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAssertFreeChunkPrevHeadZeroSmoke [
  self testMethod: #assertFreeChunkPrevHeadZero
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAssertFreeChunkPrevHeadZeroStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #assertFreeChunkPrevHeadZero.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #assertFreeChunkPrevHeadZero.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAssertInnerValidFreeObjectSmoke [
  self testMethod: #assertInnerValidFreeObject:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAssertInnerValidFreeObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #assertInnerValidFreeObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #assertInnerValidFreeObject:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAssertValidFreeObjectSmoke [
  self testMethod: #assertValidFreeObject:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAssertValidFreeObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #assertValidFreeObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #assertValidFreeObject:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAssignClassIndicesAndPinFromtooutPointersfillingSmoke [
  self testMethod: #assignClassIndicesAndPinFrom:to:outPointers:filling:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAssignClassIndicesAndPinFromtooutPointersfillingStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #assignClassIndicesAndPinFrom:to:outPointers:filling:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #assignClassIndicesAndPinFrom:to:outPointers:filling:.
  self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAssimilateNewSegmentSmoke [
  self testMethod: #assimilateNewSegment:
]

{ #category : #'growing/shrinking memory-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAssimilateNewSegmentStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #assimilateNewSegment:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #assimilateNewSegment:.
  self assert: illiString equals: slangString
]

{ #category : #'compaction-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAtLeastClassIndexHalfHeaderSmoke [
  self testMethod: #atLeastClassIndexHalfHeader:
]

{ #category : #'compaction-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAtLeastClassIndexHalfHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #atLeastClassIndexHalfHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #atLeastClassIndexHalfHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAttemptToShrinkSmoke [
  self testMethod: #attemptToShrink
]

{ #category : #'growing/shrinking memory-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAttemptToShrinkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #attemptToShrink.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #attemptToShrink.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testAverageObjectSizeInBytesSmoke [
  self testMethod: #averageObjectSizeInBytes
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testAverageObjectSizeInBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #averageObjectSizeInBytes.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #averageObjectSizeInBytes.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBaseAddressOfImageSmoke [
  self testMethod: #baseAddressOfImage
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBaseAddressOfImageStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #baseAddressOfImage.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #baseAddressOfImage.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBaseHeaderSizeSmoke [
  self testMethod: #baseHeaderSize
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBaseHeaderSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #baseHeaderSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #baseHeaderSize.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBaseHeaderSmoke [
  self testMethod: #baseHeader:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBaseHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #baseHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #baseHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'store check-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBeRootIfOldSmoke [
  self testMethod: #beRootIfOld:
]

{ #category : #'store check-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBeRootIfOldStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #beRootIfOld:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #beRootIfOld:.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBecomeEffectFlagsForSmoke [
  self testMethod: #becomeEffectFlagsFor:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBecomeEffectFlagsForStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #becomeEffectFlagsFor:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #becomeEffectFlagsFor:.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBecomewithSmoke [
  self testMethod: #become:with:
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBecomewithStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #become:with:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #become:with:.
  self assert: illiString equals: slangString
]

{ #category : #'become api-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBecomewithtwoWaycopyHashSmoke [
  self testMethod: #become:with:twoWay:copyHash:
]

{ #category : #'become api-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBecomewithtwoWaycopyHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #become:with:twoWay:copyHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #become:with:twoWay:copyHash:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBeginSlidingCompactionSmoke [
  self testMethod: #beginSlidingCompaction
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBeginSlidingCompactionStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #beginSlidingCompaction.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #beginSlidingCompaction.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBitsSetInFreeSpaceMaskForAllFreeListsSmoke [
  self testMethod: #bitsSetInFreeSpaceMaskForAllFreeLists
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBitsSetInFreeSpaceMaskForAllFreeListsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bitsSetInFreeSpaceMaskForAllFreeLists.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bitsSetInFreeSpaceMaskForAllFreeLists.
  self assert: illiString equals: slangString
]

{ #category : #'primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBooleanObjectOfSmoke [
  self testMethod: #booleanObjectOf:
]

{ #category : #'primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBooleanObjectOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #booleanObjectOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #booleanObjectOf:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBootstrappingSmoke [
  self testMethod: #bootstrapping
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBootstrappingStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bootstrapping.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bootstrapping.
  self assert: illiString equals: slangString
]

{ #category : #'segments-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBridgeSizeSmoke [
  self testMethod: #bridgeSize
]

{ #category : #'segments-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBridgeSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bridgeSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bridgeSize.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testByteFormatForNumBytesSmoke [
  self testMethod: #byteFormatForNumBytes:
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testByteFormatForNumBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #byteFormatForNumBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #byteFormatForNumBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testByteFormatMaskSmoke [
  self testMethod: #byteFormatMask
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testByteFormatMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #byteFormatMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #byteFormatMask.
  self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testByteSizeOfInstanceOferrIntoSmoke [
  self testMethod: #byteSizeOfInstanceOf:errInto:
]

{ #category : #'indexing primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testByteSizeOfInstanceOferrIntoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #byteSizeOfInstanceOf:errInto:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #byteSizeOfInstanceOf:errInto:.
  self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testByteSizeOfInstanceOfwithIndexableSlotserrIntoSmoke [
  self testMethod: #byteSizeOfInstanceOf:withIndexableSlots:errInto:
]

{ #category : #'indexing primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testByteSizeOfInstanceOfwithIndexableSlotserrIntoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #byteSizeOfInstanceOf:withIndexableSlots:errInto:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #byteSizeOfInstanceOf:withIndexableSlots:errInto:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testByteSizeOfSmoke [
  self testMethod: #byteSizeOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testByteSizeOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #byteSizeOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #byteSizeOf:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testByteSwappedSmoke [
  self testMethod: #byteSwapped:
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testByteSwappedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #byteSwapped:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #byteSwapped:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBytesInObjectSmoke [
  self testMethod: #bytesInObject:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBytesInObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bytesInObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bytesInObject:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBytesInObjectgivenSmoke [
  self testMethod: #bytesInObject:given:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBytesInObjectgivenStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bytesInObject:given:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bytesInObject:given:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBytesLeftInOldSpaceSmoke [
  self testMethod: #bytesLeftInOldSpace
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBytesLeftInOldSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bytesLeftInOldSpace.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bytesLeftInOldSpace.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBytesLeftSmoke [
  self testMethod: #bytesLeft:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBytesLeftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bytesLeft:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bytesLeft:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testBytesPerOopSmoke [
  self testMethod: #bytesPerOop
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testBytesPerOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #bytesPerOop.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #bytesPerOop.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCapacityOfObjStackSmoke [
  self testMethod: #capacityOfObjStack:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCapacityOfObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #capacityOfObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #capacityOfObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testChangeClassOftoSmoke [
  self testMethod: #changeClassOf:to:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testChangeClassOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #changeClassOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #changeClassOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCharacterObjectOfSmoke [
  self testMethod: #characterObjectOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCharacterObjectOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #characterObjectOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #characterObjectOf:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCharacterTableSmoke [
  self testMethod: #characterTable
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCharacterTableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #characterTable.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #characterTable.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCharacterTagSmoke [
  self testMethod: #characterTag
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCharacterTagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #characterTag.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #characterTag.
  self assert: illiString equals: slangString
]

{ #category : #'immediates-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCharacterValueOfSmoke [
  self testMethod: #characterValueOf:
]

{ #category : #'immediates-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCharacterValueOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #characterValueOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #characterValueOf:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCheapAddressCouldBeInHeapSmoke [
  self testMethod: #cheapAddressCouldBeInHeap:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCheapAddressCouldBeInHeapStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #cheapAddressCouldBeInHeap:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #cheapAddressCouldBeInHeap:.
  self assert: illiString equals: slangString
]

{ #category : #'initialization-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckCompactIndexisClassnamedSmoke [
  self testMethod: #checkCompactIndex:isClass:named:
]

{ #category : #'initialization-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckCompactIndexisClassnamedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkCompactIndex:isClass:named:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkCompactIndex:isClass:named:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckForAvailableSlotsSmoke [
  self testMethod: #checkForAvailableSlots:
]

{ #category : #'gc - scavenging-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckForAvailableSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkForAvailableSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkForAvailableSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckForLeaksSmoke [
  self testMethod: #checkForLeaks
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckForLeaksStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkForLeaks.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkForLeaks.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckFreeSpaceSmoke [
  self testMethod: #checkFreeSpace:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckFreeSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkFreeSpace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkFreeSpace:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckHeapFreeSpaceIntegritySmoke [
  self testMethod: #checkHeapFreeSpaceIntegrity
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckHeapFreeSpaceIntegrityStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkHeapFreeSpaceIntegrity.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkHeapFreeSpaceIntegrity.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckHeapIntegrityclassIndicesShouldBeValidSmoke [
  self testMethod: #checkHeapIntegrity:classIndicesShouldBeValid:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckHeapIntegrityclassIndicesShouldBeValidStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkHeapIntegrity:classIndicesShouldBeValid:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkHeapIntegrity:classIndicesShouldBeValid:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckMemoryMapSmoke [
  self testMethod: #checkMemoryMap
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckMemoryMapStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkMemoryMap.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkMemoryMap.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckOkayOopSmoke [
  self testMethod: #checkOkayOop:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckOkayOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkOkayOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkOkayOop:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckOkayYoungReferrerSmoke [
  self testMethod: #checkOkayYoungReferrer:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckOkayYoungReferrerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkOkayYoungReferrer:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkOkayYoungReferrer:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckOopHasOkayClassSmoke [
  self testMethod: #checkOopHasOkayClass:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckOopHasOkayClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkOopHasOkayClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkOopHasOkayClass:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckOopIntegritynamedSmoke [
  self testMethod: #checkOopIntegrity:named:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckOopIntegritynamedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkOopIntegrity:named:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkOopIntegrity:named:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckOopIntegritynamedindexSmoke [
  self testMethod: #checkOopIntegrity:named:index:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckOopIntegritynamedindexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkOopIntegrity:named:index:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkOopIntegrity:named:index:.
  self assert: illiString equals: slangString
]

{ #category : #'memory access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckedLongAtSmoke [
  self testMethod: #checkedLongAt:
]

{ #category : #'memory access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCheckedLongAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #checkedLongAt:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #checkedLongAt:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassAlienSmoke [
  self testMethod: #classAlien
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassAlienStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classAlien.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classAlien.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassArraySmoke [
  self testMethod: #classArray
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassArrayStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classArray.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classArray.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassAtIndexSmoke [
  self testMethod: #classAtIndex:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassAtIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classAtIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classAtIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassAtIndexputSmoke [
  self testMethod: #classAtIndex:put:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassAtIndexputStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classAtIndex:put:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classAtIndex:put:.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassBitmapSmoke [
  self testMethod: #classBitmap
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassBitmapStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classBitmap.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classBitmap.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassByteArraySmoke [
  self testMethod: #classByteArray
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassByteArrayStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classByteArray.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classByteArray.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassCharacterSmoke [
  self testMethod: #classCharacter
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassCharacterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classCharacter.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classCharacter.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassExternalAddressSmoke [
  self testMethod: #classExternalAddress
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassExternalAddressStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classExternalAddress.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classExternalAddress.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassExternalDataSmoke [
  self testMethod: #classExternalData
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassExternalDataStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classExternalData.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classExternalData.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassExternalFunctionSmoke [
  self testMethod: #classExternalFunction
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassExternalFunctionStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classExternalFunction.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classExternalFunction.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassExternalLibrarySmoke [
  self testMethod: #classExternalLibrary
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassExternalLibraryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classExternalLibrary.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classExternalLibrary.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassExternalStructureSmoke [
  self testMethod: #classExternalStructure
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassExternalStructureStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classExternalStructure.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classExternalStructure.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassFloatSmoke [
  self testMethod: #classFloat
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassFloatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classFloat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classFloat.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassForClassTagSmoke [
  self testMethod: #classForClassTag:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassForClassTagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classForClassTag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classForClassTag:.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassFormatForInstanceFormatSmoke [
  self testMethod: #classFormatForInstanceFormat:
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassFormatForInstanceFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classFormatForInstanceFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classFormatForInstanceFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassFormatFromInstFormatSmoke [
  self testMethod: #classFormatFromInstFormat:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassFormatFromInstFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classFormatFromInstFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classFormatFromInstFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassIndexFieldWidthSmoke [
  self testMethod: #classIndexFieldWidth
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassIndexFieldWidthStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classIndexFieldWidth.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classIndexFieldWidth.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassIndexMaskSmoke [
  self testMethod: #classIndexMask
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassIndexMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classIndexMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classIndexMask.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassIndexOfHeaderSmoke [
  self testMethod: #classIndexOfHeader:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassIndexOfHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classIndexOfHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classIndexOfHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassIndexOfSmoke [
  self testMethod: #classIndexOf:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassIndexOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classIndexOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classIndexOf:.
  self assert: illiString equals: slangString
]

{ #category : #'class table puns-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassIsItselfClassIndexPunSmoke [
  self testMethod: #classIsItselfClassIndexPun
]

{ #category : #'class table puns-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassIsItselfClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classIsItselfClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classIsItselfClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassLargeNegativeIntegerSmoke [
  self testMethod: #classLargeNegativeInteger
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassLargeNegativeIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classLargeNegativeInteger.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classLargeNegativeInteger.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassLargePositiveIntegerSmoke [
  self testMethod: #classLargePositiveInteger
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassLargePositiveIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classLargePositiveInteger.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classLargePositiveInteger.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassMutexSmoke [
  self testMethod: #classMutex
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassMutexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classMutex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classMutex.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassOrNilAtIndexSmoke [
  self testMethod: #classOrNilAtIndex:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassOrNilAtIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classOrNilAtIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classOrNilAtIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassPointSmoke [
  self testMethod: #classPoint
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassPointStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classPoint.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classPoint.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassSemaphoreSmoke [
  self testMethod: #classSemaphore
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassSemaphoreStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classSemaphore.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classSemaphore.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassSmallIntegerSmoke [
  self testMethod: #classSmallInteger
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassSmallIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classSmallInteger.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classSmallInteger.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassStringSmoke [
  self testMethod: #classString
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassStringStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classString.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classString.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTableEntriesDoSmoke [
  self testMethod: #classTableEntriesDo:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTableEntriesDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTableEntriesDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTableEntriesDo:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTableFirstPageSmoke [
  self testMethod: #classTableFirstPage
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTableFirstPageStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTableFirstPage.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTableFirstPage.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTableIndexSmoke [
  self testMethod: #classTableIndex
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTableIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTableIndex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTableIndex.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTableMajorIndexShiftSmoke [
  self testMethod: #classTableMajorIndexShift
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTableMajorIndexShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTableMajorIndexShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTableMajorIndexShift.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTableMinorIndexMaskSmoke [
  self testMethod: #classTableMinorIndexMask
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTableMinorIndexMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTableMinorIndexMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTableMinorIndexMask.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTablePageSizeSmoke [
  self testMethod: #classTablePageSize
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTablePageSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTablePageSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTablePageSize.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTableRootObjSmoke [
  self testMethod: #classTableRootObj
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTableRootObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTableRootObj.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTableRootObj.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTableRootSlotsSmoke [
  self testMethod: #classTableRootSlots
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTableRootSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTableRootSlots.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTableRootSlots.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTagForClassSmoke [
  self testMethod: #classTagForClass:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTagForClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTagForClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTagForClass:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTagForSpecialObjectsIndexcompactClassIndexSmoke [
  self testMethod: #classTagForSpecialObjectsIndex:compactClassIndex:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassTagForSpecialObjectsIndexcompactClassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classTagForSpecialObjectsIndex:compactClassIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classTagForSpecialObjectsIndex:compactClassIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClassUnsafeAlienSmoke [
  self testMethod: #classUnsafeAlien
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClassUnsafeAlienStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #classUnsafeAlien.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #classUnsafeAlien.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClearLeakMapAndMapAccessibleFreeSpaceSmoke [
  self testMethod: #clearLeakMapAndMapAccessibleFreeSpace
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClearLeakMapAndMapAccessibleFreeSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #clearLeakMapAndMapAccessibleFreeSpace.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #clearLeakMapAndMapAccessibleFreeSpace.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testClearLeakMapAndMapAccessibleObjectsSmoke [
  self testMethod: #clearLeakMapAndMapAccessibleObjects
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testClearLeakMapAndMapAccessibleObjectsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #clearLeakMapAndMapAccessibleObjects.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #clearLeakMapAndMapAccessibleObjects.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCleverSwapHeadersandcopyHashFlagSmoke [
  self testMethod: #cleverSwapHeaders:and:copyHashFlag:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCleverSwapHeadersandcopyHashFlagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #cleverSwapHeaders:and:copyHashFlag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #cleverSwapHeaders:and:copyHashFlag:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCloneInOldSpaceforPinningSmoke [
  self testMethod: #cloneInOldSpace:forPinning:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCloneInOldSpaceforPinningStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #cloneInOldSpace:forPinning:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #cloneInOldSpace:forPinning:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCloneSmoke [
  self testMethod: #clone:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCloneStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #clone:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #clone:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCoalesceandSmoke [
  self testMethod: #coalesce:and:
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCoalesceandStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #coalesce:and:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #coalesce:and:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCoallesceFreeChunkSmoke [
  self testMethod: #coallesceFreeChunk:
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCoallesceFreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #coallesceFreeChunk:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #coallesceFreeChunk:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCompactClassIndexOfSmoke [
  self testMethod: #compactClassIndexOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCompactClassIndexOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #compactClassIndexOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #compactClassIndexOf:.
  self assert: illiString equals: slangString
]

{ #category : #'class membership-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCompactIndexOfClassSmoke [
  self testMethod: #compactIndexOfClass:
]

{ #category : #'class membership-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCompactIndexOfClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #compactIndexOfClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #compactIndexOfClass:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCompactorSmoke [
  self testMethod: #compactor
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCompactorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #compactor.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #compactor.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCompiledMethodFormatForNumBytesSmoke [
  self testMethod: #compiledMethodFormatForNumBytes:
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCompiledMethodFormatForNumBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #compiledMethodFormatForNumBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #compiledMethodFormatForNumBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testComputeFreeSpacePostSwizzleSmoke [
  self testMethod: #computeFreeSpacePostSwizzle
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testComputeFreeSpacePostSwizzleStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #computeFreeSpacePostSwizzle.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #computeFreeSpacePostSwizzle.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testContainsOnlyValidBecomeObjectsandtwoWaycopyHashSmoke [
  self testMethod: #containsOnlyValidBecomeObjects:and:twoWay:copyHash:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testContainsOnlyValidBecomeObjectsandtwoWaycopyHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #containsOnlyValidBecomeObjects:and:twoWay:copyHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #containsOnlyValidBecomeObjects:and:twoWay:copyHash:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCopyObjtoAddrstopAtsavedFirstFieldsindexSmoke [
  self testMethod: #copyObj:toAddr:stopAt:savedFirstFields:index:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCopyObjtoAddrstopAtsavedFirstFieldsindexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #copyObj:toAddr:stopAt:savedFirstFields:index:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #copyObj:toAddr:stopAt:savedFirstFields:index:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCountMarkedAndUnmarkdObjectsSmoke [
  self testMethod: #countMarkedAndUnmarkdObjects:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCountMarkedAndUnmarkdObjectsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #countMarkedAndUnmarkdObjects:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #countMarkedAndUnmarkdObjects:.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCountNumClassPagesPreSwizzleSmoke [
  self testMethod: #countNumClassPagesPreSwizzle:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCountNumClassPagesPreSwizzleStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #countNumClassPagesPreSwizzle:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #countNumClassPagesPreSwizzle:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation accounting-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testCurrentAllocatedBytesSmoke [
  self testMethod: #currentAllocatedBytes
]

{ #category : #'allocation accounting-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testCurrentAllocatedBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #currentAllocatedBytes.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #currentAllocatedBytes.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testDbgFloatValueOfSmoke [
  self testMethod: #dbgFloatValueOf:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testDbgFloatValueOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #dbgFloatValueOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #dbgFloatValueOf:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testDefaultEdenBytesSmoke [
  self testMethod: #defaultEdenBytes
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testDefaultEdenBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #defaultEdenBytes.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #defaultEdenBytes.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testDequeueMournerSmoke [
  self testMethod: #dequeueMourner
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testDequeueMournerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #dequeueMourner.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #dequeueMourner.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testDetachFreeObjectSmoke [
  self testMethod: #detachFreeObject:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testDetachFreeObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #detachFreeObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #detachFreeObject:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testDisplayObjectSmoke [
  self testMethod: #displayObject
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testDisplayObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #displayObject.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #displayObject.
  self assert: illiString equals: slangString
]

{ #category : #'allocation accounting-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testDoAllocationAccountingForScavengeSmoke [
  self testMethod: #doAllocationAccountingForScavenge
]

{ #category : #'allocation accounting-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testDoAllocationAccountingForScavengeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #doAllocationAccountingForScavenge.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #doAllocationAccountingForScavenge.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testDoBecomeandcopyHashSmoke [
  self testMethod: #doBecome:and:copyHash:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testDoBecomeandcopyHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #doBecome:and:copyHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #doBecome:and:copyHash:.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testDoBecometocopyHashSmoke [
  self testMethod: #doBecome:to:copyHash:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testDoBecometocopyHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #doBecome:to:copyHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #doBecome:to:copyHash:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testDoScavengeSmoke [
  self testMethod: #doScavenge:
]

{ #category : #'gc - scavenging-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testDoScavengeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #doScavenge:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #doScavenge:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEdenBytesSmoke [
  self testMethod: #edenBytes:
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEdenBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #edenBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #edenBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'instantiation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEeInstantiateClassIndexformatnumSlotsSmoke [
  self testMethod: #eeInstantiateClassIndex:format:numSlots:
]

{ #category : #'instantiation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEeInstantiateClassIndexformatnumSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #eeInstantiateClassIndex:format:numSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #eeInstantiateClassIndex:format:numSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'instantiation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEeInstantiateMethodContextSlotsSmoke [
  self testMethod: #eeInstantiateMethodContextSlots:
]

{ #category : #'instantiation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEeInstantiateMethodContextSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #eeInstantiateMethodContextSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #eeInstantiateMethodContextSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'instantiation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEeInstantiateSmallClassIndexformatnumSlotsSmoke [
  self testMethod: #eeInstantiateSmallClassIndex:format:numSlots:
]

{ #category : #'instantiation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEeInstantiateSmallClassIndexformatnumSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #eeInstantiateSmallClassIndex:format:numSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #eeInstantiateSmallClassIndex:format:numSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'instantiation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEeInstantiateSmallClassnumSlotsSmoke [
  self testMethod: #eeInstantiateSmallClass:numSlots:
]

{ #category : #'instantiation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEeInstantiateSmallClassnumSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #eeInstantiateSmallClass:numSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #eeInstantiateSmallClass:numSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEekSmoke [
  self testMethod: #eek
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEekStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #eek.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #eek.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEmptyObjStackSmoke [
  self testMethod: #emptyObjStack:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEmptyObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #emptyObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #emptyObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEndOfMemorySmoke [
  self testMethod: #endOfMemory
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEndOfMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #endOfMemory.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #endOfMemory.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEndSlidingCompactionSmoke [
  self testMethod: #endSlidingCompaction
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEndSlidingCompactionStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #endSlidingCompaction.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #endSlidingCompaction.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEnsureBehaviorHashSmoke [
  self testMethod: #ensureBehaviorHash:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEnsureBehaviorHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ensureBehaviorHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ensureBehaviorHash:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEnsureHasOverflowHeaderforwardIfClonedSmoke [
  self testMethod: #ensureHasOverflowHeader:forwardIfCloned:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEnsureHasOverflowHeaderforwardIfClonedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ensureHasOverflowHeader:forwardIfCloned:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ensureHasOverflowHeader:forwardIfCloned:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEnsureNoNewObjectsInSmoke [
  self testMethod: #ensureNoNewObjectsIn:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEnsureNoNewObjectsInStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ensureNoNewObjectsIn:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ensureNoNewObjectsIn:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEnsureRoomOnObjStackAtSmoke [
  self testMethod: #ensureRoomOnObjStackAt:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEnsureRoomOnObjStackAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ensureRoomOnObjStackAt:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ensureRoomOnObjStackAt:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEnsureSemaphoreUnforwardedThroughContextSmoke [
  self testMethod: #ensureSemaphoreUnforwardedThroughContext:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEnsureSemaphoreUnforwardedThroughContextStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ensureSemaphoreUnforwardedThroughContext:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ensureSemaphoreUnforwardedThroughContext:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEnterClassesIntoClassTableFromtoSmoke [
  self testMethod: #enterClassesIntoClassTableFrom:to:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEnterClassesIntoClassTableFromtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #enterClassesIntoClassTableFrom:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #enterClassesIntoClassTableFrom:to:.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEnterIntoClassTableSmoke [
  self testMethod: #enterIntoClassTable:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEnterIntoClassTableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #enterIntoClassTable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #enterIntoClassTable:.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testEphemeronFormatSmoke [
  self testMethod: #ephemeronFormat
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testEphemeronFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ephemeronFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ephemeronFormat.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testExistInstancesInNewSpaceOfSmoke [
  self testMethod: #existInstancesInNewSpaceOf:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testExistInstancesInNewSpaceOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #existInstancesInNewSpaceOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #existInstancesInNewSpaceOf:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testExponentOfSmallFloatSmoke [
  self testMethod: #exponentOfSmallFloat:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testExponentOfSmallFloatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #exponentOfSmallFloat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #exponentOfSmallFloat:.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testExpungeDuplicateAndUnmarkedClassesSmoke [
  self testMethod: #expungeDuplicateAndUnmarkedClasses:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testExpungeDuplicateAndUnmarkedClassesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #expungeDuplicateAndUnmarkedClasses:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #expungeDuplicateAndUnmarkedClasses:.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testExpungeFromClassTableSmoke [
  self testMethod: #expungeFromClassTable:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testExpungeFromClassTableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #expungeFromClassTable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #expungeFromClassTable:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFalseObjectSmoke [
  self testMethod: #falseObject:
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFalseObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #falseObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #falseObject:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchByteofObjectSmoke [
  self testMethod: #fetchByte:ofObject:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchByteofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchByte:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchByte:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchClassOfNonImmSmoke [
  self testMethod: #fetchClassOfNonImm:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchClassOfNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchClassOfNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchClassOfNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchClassOfSmoke [
  self testMethod: #fetchClassOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchClassOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchClassOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchClassOf:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchClassTagOfNonImmSmoke [
  self testMethod: #fetchClassTagOfNonImm:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchClassTagOfNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchClassTagOfNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchClassTagOfNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchClassTagOfSmoke [
  self testMethod: #fetchClassTagOf:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchClassTagOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchClassTagOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchClassTagOf:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchLongofFloatObjectSmoke [
  self testMethod: #fetchLong32:ofFloatObject:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchLongofFloatObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchLong32:ofFloatObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchLong32:ofFloatObject:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchLongofObjectSmoke [
  self testMethod: #fetchLong64:ofObject:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchLongofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchLong64:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchLong64:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'heap management-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchPointerofFreeChunkSmoke [
  self testMethod: #fetchPointer:ofFreeChunk:
]

{ #category : #'heap management-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchPointerofFreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchPointer:ofFreeChunk:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchPointer:ofFreeChunk:.
  self assert: illiString equals: slangString
]

{ #category : #'heap management-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchPointerofMaybeForwardedObjectSmoke [
  self testMethod: #fetchPointer:ofMaybeForwardedObject:
]

{ #category : #'heap management-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchPointerofMaybeForwardedObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchPointer:ofMaybeForwardedObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchPointer:ofMaybeForwardedObject:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchPointerofObjectSmoke [
  self testMethod: #fetchPointer:ofObject:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchPointerofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchPointer:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchPointer:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchShortofObjectSmoke [
  self testMethod: #fetchShort16:ofObject:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchShortofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchShort16:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchShort16:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchUnsignedShortofObjectSmoke [
  self testMethod: #fetchUnsignedShort16:ofObject:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFetchUnsignedShortofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fetchUnsignedShort16:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fetchUnsignedShort16:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'instantiation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFillObjnumSlotswithSmoke [
  self testMethod: #fillObj:numSlots:with:
]

{ #category : #'instantiation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFillObjnumSlotswithStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fillObj:numSlots:with:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fillObj:numSlots:with:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFindLargestFreeChunkSmoke [
  self testMethod: #findLargestFreeChunk
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFindLargestFreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #findLargestFreeChunk.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #findLargestFreeChunk.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFindStringBeginningWithSmoke [
  self testMethod: #findStringBeginningWith:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFindStringBeginningWithStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #findStringBeginningWith:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #findStringBeginningWith:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFindStringSmoke [
  self testMethod: #findString:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFindStringStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #findString:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #findString:.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFireAllUnscannedEphemeronsSmoke [
  self testMethod: #fireAllUnscannedEphemerons
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFireAllUnscannedEphemeronsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fireAllUnscannedEphemerons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fireAllUnscannedEphemerons.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstAccessibleObjectSmoke [
  self testMethod: #firstAccessibleObject
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstAccessibleObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstAccessibleObject.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstAccessibleObject.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstByteFormatSmoke [
  self testMethod: #firstByteFormat
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstByteFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstByteFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstByteFormat.
  self assert: illiString equals: slangString
]

{ #category : #'class table puns-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstClassIndexPunSmoke [
  self testMethod: #firstClassIndexPun
]

{ #category : #'class table puns-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstCompiledMethodFormatSmoke [
  self testMethod: #firstCompiledMethodFormat
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstCompiledMethodFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstCompiledMethodFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstCompiledMethodFormat.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstFixedFieldOfMaybeImmediateSmoke [
  self testMethod: #firstFixedFieldOfMaybeImmediate:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstFixedFieldOfMaybeImmediateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstFixedFieldOfMaybeImmediate:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstFixedFieldOfMaybeImmediate:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstFixedFieldSmoke [
  self testMethod: #firstFixedField:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstFixedFieldStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstFixedField:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstFixedField:.
  self assert: illiString equals: slangString
]

{ #category : #'object format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstIndexableFieldSmoke [
  self testMethod: #firstIndexableField:
]

{ #category : #'object format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstIndexableFieldStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstIndexableField:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstIndexableField:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstLilliputianChunkSmoke [
  self testMethod: #firstLilliputianChunk
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstLilliputianChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstLilliputianChunk.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstLilliputianChunk.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstLongFormatSmoke [
  self testMethod: #firstLongFormat
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstLongFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstLongFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstLongFormat.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstObjectSmoke [
  self testMethod: #firstObject
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstObject.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstObject.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstShortFormatSmoke [
  self testMethod: #firstShortFormat
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstShortFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstShortFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstShortFormat.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstStringyFakeFormatSmoke [
  self testMethod: #firstStringyFakeFormat
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstStringyFakeFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstStringyFakeFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstStringyFakeFormat.
  self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstValidIndexOfIndexableObjectwithFormatSmoke [
  self testMethod: #firstValidIndexOfIndexableObject:withFormat:
]

{ #category : #'indexing primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFirstValidIndexOfIndexableObjectwithFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #firstValidIndexOfIndexableObject:withFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #firstValidIndexOfIndexableObject:withFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'forwarding-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFixFollowedFieldofObjectwithInitialValueSmoke [
  self testMethod: #fixFollowedField:ofObject:withInitialValue:
]

{ #category : #'forwarding-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFixFollowedFieldofObjectwithInitialValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fixFollowedField:ofObject:withInitialValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fixFollowedField:ofObject:withInitialValue:.
  self assert: illiString equals: slangString
]

{ #category : #'object format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFixedFieldsFieldWidthSmoke [
  self testMethod: #fixedFieldsFieldWidth
]

{ #category : #'object format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFixedFieldsFieldWidthStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fixedFieldsFieldWidth.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fixedFieldsFieldWidth.
  self assert: illiString equals: slangString
]

{ #category : #'object format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFixedFieldsOfClassFormatMaskSmoke [
  self testMethod: #fixedFieldsOfClassFormatMask
]

{ #category : #'object format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFixedFieldsOfClassFormatMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fixedFieldsOfClassFormatMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fixedFieldsOfClassFormatMask.
  self assert: illiString equals: slangString
]

{ #category : #'object format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFixedFieldsOfClassFormatSmoke [
  self testMethod: #fixedFieldsOfClassFormat:
]

{ #category : #'object format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFixedFieldsOfClassFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fixedFieldsOfClassFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fixedFieldsOfClassFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'object format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFixedFieldsOfClassSmoke [
  self testMethod: #fixedFieldsOfClass:
]

{ #category : #'object format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFixedFieldsOfClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fixedFieldsOfClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fixedFieldsOfClass:.
  self assert: illiString equals: slangString
]

{ #category : #'object format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFixedFieldsOfformatlengthSmoke [
  self testMethod: #fixedFieldsOf:format:length:
]

{ #category : #'object format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFixedFieldsOfformatlengthStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fixedFieldsOf:format:length:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fixedFieldsOf:format:length:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFloatObjectOfSmoke [
  self testMethod: #floatObjectOf:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFloatObjectOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #floatObjectOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #floatObjectOf:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFloatValueOfSmoke [
  self testMethod: #floatValueOf:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFloatValueOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #floatValueOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #floatValueOf:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFlushEdenSmoke [
  self testMethod: #flushEden
]

{ #category : #'gc - scavenging-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFlushEdenStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #flushEden.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #flushEden.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFlushNewSpaceInstancesOfSmoke [
  self testMethod: #flushNewSpaceInstancesOf:
]

{ #category : #'gc - scavenging-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFlushNewSpaceInstancesOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #flushNewSpaceInstancesOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #flushNewSpaceInstancesOf:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFlushNewSpaceSmoke [
  self testMethod: #flushNewSpace
]

{ #category : #'gc - scavenging-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFlushNewSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #flushNewSpace.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #flushNewSpace.
  self assert: illiString equals: slangString
]

{ #category : #'selective compaction-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowClassTableSmoke [
  self testMethod: #followClassTable
]

{ #category : #'selective compaction-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowClassTableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followClassTable.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followClassTable.
  self assert: illiString equals: slangString
]

{ #category : #'forwarding-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowFieldofObjectSmoke [
  self testMethod: #followField:ofObject:
]

{ #category : #'forwarding-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowFieldofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followField:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followField:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowForwardedInObjStackatIndexSmoke [
  self testMethod: #followForwardedInObjStack:atIndex:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowForwardedInObjStackatIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followForwardedInObjStack:atIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followForwardedInObjStack:atIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'compaction-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowForwardedObjStacksSmoke [
  self testMethod: #followForwardedObjStacks
]

{ #category : #'compaction-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowForwardedObjStacksStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followForwardedObjStacks.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followForwardedObjStacks.
  self assert: illiString equals: slangString
]

{ #category : #'forwarding-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowForwardedObjectFieldstoDepthSmoke [
  self testMethod: #followForwardedObjectFields:toDepth:
]

{ #category : #'forwarding-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowForwardedObjectFieldstoDepthStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followForwardedObjectFields:toDepth:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followForwardedObjectFields:toDepth:.
  self assert: illiString equals: slangString
]

{ #category : #'forwarding-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowForwardedSmoke [
  self testMethod: #followForwarded:
]

{ #category : #'forwarding-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowForwardedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followForwarded:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followForwarded:.
  self assert: illiString equals: slangString
]

{ #category : #'forwarding-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowMaybeForwardedSmoke [
  self testMethod: #followMaybeForwarded:
]

{ #category : #'forwarding-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowMaybeForwardedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followMaybeForwarded:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followMaybeForwarded:.
  self assert: illiString equals: slangString
]

{ #category : #'forwarding-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowObjFieldofObjectSmoke [
  self testMethod: #followObjField:ofObject:
]

{ #category : #'forwarding-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowObjFieldofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followObjField:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followObjField:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'forwarding-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowOopFieldofObjectSmoke [
  self testMethod: #followOopField:ofObject:
]

{ #category : #'forwarding-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowOopFieldofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followOopField:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followOopField:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'selective compaction-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowProcessListSmoke [
  self testMethod: #followProcessList
]

{ #category : #'selective compaction-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowProcessListStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followProcessList.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followProcessList.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowSpecialObjectsOopSmoke [
  self testMethod: #followSpecialObjectsOop
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowSpecialObjectsOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followSpecialObjectsOop.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followSpecialObjectsOop.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowedKeyOfEphemeronSmoke [
  self testMethod: #followedKeyOfEphemeron:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowedKeyOfEphemeronStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followedKeyOfEphemeron:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followedKeyOfEphemeron:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowedKeyOfMaybeFiredEphemeronSmoke [
  self testMethod: #followedKeyOfMaybeFiredEphemeron:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFollowedKeyOfMaybeFiredEphemeronStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #followedKeyOfMaybeFiredEphemeron:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #followedKeyOfMaybeFiredEphemeron:.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFormatFieldWidthShiftSmoke [
  self testMethod: #formatFieldWidthShift
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFormatFieldWidthShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #formatFieldWidthShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #formatFieldWidthShift.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFormatMaskSmoke [
  self testMethod: #formatMask
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFormatMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #formatMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #formatMask.
  self assert: illiString equals: slangString
]

{ #category : #'object format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFormatOfClassSmoke [
  self testMethod: #formatOfClass:
]

{ #category : #'object format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFormatOfClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #formatOfClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #formatOfClass:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFormatOfHeaderSmoke [
  self testMethod: #formatOfHeader:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFormatOfHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #formatOfHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #formatOfHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFormatOfSmoke [
  self testMethod: #formatOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFormatOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #formatOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #formatOf:.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFormatShiftSmoke [
  self testMethod: #formatShift
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFormatShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #formatShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #formatShift.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testForwardSurvivortoSmoke [
  self testMethod: #forwardSurvivor:to:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testForwardSurvivortoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #forwardSurvivor:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #forwardSurvivor:to:.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testForwardUncheckedtoSmoke [
  self testMethod: #forwardUnchecked:to:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testForwardUncheckedtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #forwardUnchecked:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #forwardUnchecked:to:.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testForwardedFormatSmoke [
  self testMethod: #forwardedFormat
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testForwardedFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #forwardedFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #forwardedFormat.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testForwardersInSmoke [
  self testMethod: #forwardersIn:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testForwardersInStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #forwardersIn:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #forwardersIn:.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testForwardtoSmoke [
  self testMethod: #forward:to:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testForwardtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #forward:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #forward:to:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeChunkLargerIndexSmoke [
  self testMethod: #freeChunkLargerIndex
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeChunkLargerIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeChunkLargerIndex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeChunkLargerIndex.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeChunkNextIndexSmoke [
  self testMethod: #freeChunkNextIndex
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeChunkNextIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeChunkNextIndex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeChunkNextIndex.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeChunkParentIndexSmoke [
  self testMethod: #freeChunkParentIndex
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeChunkParentIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeChunkParentIndex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeChunkParentIndex.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeChunkPrevIndexSmoke [
  self testMethod: #freeChunkPrevIndex
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeChunkPrevIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeChunkPrevIndex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeChunkPrevIndex.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeChunkSmallerIndexSmoke [
  self testMethod: #freeChunkSmallerIndex
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeChunkSmallerIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeChunkSmallerIndex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeChunkSmallerIndex.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeChunkWithBytesatSmoke [
  self testMethod: #freeChunkWithBytes:at:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeChunkWithBytesatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeChunkWithBytes:at:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeChunkWithBytes:at:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeListHeadsEmptySmoke [
  self testMethod: #freeListHeadsEmpty
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeListHeadsEmptyStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeListHeadsEmpty.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeListHeadsEmpty.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeListsObjSmoke [
  self testMethod: #freeListsObj
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeListsObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeListsObj.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeListsObj.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeListsObjectSmoke [
  self testMethod: #freeListsObject
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeListsObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeListsObject.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeListsObject.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeObjectSmoke [
  self testMethod: #freeObject:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeObject:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeOldSpaceStartSmoke [
  self testMethod: #freeOldSpaceStart
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeOldSpaceStartStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeOldSpaceStart.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeOldSpaceStart.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeSizeSmoke [
  self testMethod: #freeSize
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeSize.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeStartSmoke [
  self testMethod: #freeStart
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeStartStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeStart.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeStart.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeTreeNodesDoSmoke [
  self testMethod: #freeTreeNodesDo:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFreeTreeNodesDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #freeTreeNodesDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #freeTreeNodesDo:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFullGCLockSmoke [
  self testMethod: #fullGCLock
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFullGCLockStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fullGCLock.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fullGCLock.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testFullGCSmoke [
  self testMethod: #fullGC
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testFullGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #fullGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #fullGC.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testGarbageCollectForSnapshotSmoke [
  self testMethod: #garbageCollectForSnapshot
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testGarbageCollectForSnapshotStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #garbageCollectForSnapshot.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #garbageCollectForSnapshot.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testGcStartUsecsSmoke [
  self testMethod: #gcStartUsecs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testGcStartUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #gcStartUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #gcStartUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testGetHeapGrowthToSizeGCRatioSmoke [
  self testMethod: #getHeapGrowthToSizeGCRatio
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testGetHeapGrowthToSizeGCRatioStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #getHeapGrowthToSizeGCRatio.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #getHeapGrowthToSizeGCRatio.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testGlobalGarbageCollectSmoke [
  self testMethod: #globalGarbageCollect
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testGlobalGarbageCollectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #globalGarbageCollect.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #globalGarbageCollect.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testGoodContextSizeSmoke [
  self testMethod: #goodContextSize:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testGoodContextSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #goodContextSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #goodContextSize:.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testGreyBitShiftSmoke [
  self testMethod: #greyBitShift
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testGreyBitShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #greyBitShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #greyBitShift.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testGrowHeadroomSmoke [
  self testMethod: #growHeadroom
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testGrowHeadroomStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #growHeadroom.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #growHeadroom.
  self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testGrowOldSpaceByAtLeastSmoke [
  self testMethod: #growOldSpaceByAtLeast:
]

{ #category : #'growing/shrinking memory-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testGrowOldSpaceByAtLeastStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #growOldSpaceByAtLeast:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #growOldSpaceByAtLeast:.
  self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testGrowToAccomodateContainerWithNumSlotsSmoke [
  self testMethod: #growToAccomodateContainerWithNumSlots:
]

{ #category : #'growing/shrinking memory-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testGrowToAccomodateContainerWithNumSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #growToAccomodateContainerWithNumSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #growToAccomodateContainerWithNumSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testHasIdentityHashSmoke [
  self testMethod: #hasIdentityHash:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testHasIdentityHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hasIdentityHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hasIdentityHash:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testHasOverflowHeaderSmoke [
  self testMethod: #hasOverflowHeader:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testHasOverflowHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hasOverflowHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hasOverflowHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testHasPointerFieldsNonImmSmoke [
  self testMethod: #hasPointerFieldsNonImm:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testHasPointerFieldsNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hasPointerFieldsNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hasPointerFieldsNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testHasPointerFieldsSmoke [
  self testMethod: #hasPointerFields:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testHasPointerFieldsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hasPointerFields:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hasPointerFields:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testHasSixtyFourBitImmediatesSmoke [
  self testMethod: #hasSixtyFourBitImmediates
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testHasSixtyFourBitImmediatesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hasSixtyFourBitImmediates.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hasSixtyFourBitImmediates.
  self assert: illiString equals: slangString
]

{ #category : #'api characterization-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testHasSpurMemoryManagerAPISmoke [
  self testMethod: #hasSpurMemoryManagerAPI
]

{ #category : #'api characterization-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testHasSpurMemoryManagerAPIStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hasSpurMemoryManagerAPI.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hasSpurMemoryManagerAPI.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testHasYoungReferentsSmoke [
  self testMethod: #hasYoungReferents:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testHasYoungReferentsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hasYoungReferents:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hasYoungReferents:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testHashBitsOfSmoke [
  self testMethod: #hashBitsOf:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testHashBitsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hashBitsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hashBitsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testHeaderForSlotsformatclassIndexSmoke [
  self testMethod: #headerForSlots:format:classIndex:
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testHeaderForSlotsformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #headerForSlots:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #headerForSlots:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testHeaderForSlotshashformatclassIndexSmoke [
  self testMethod: #headerForSlots:hash:format:classIndex:
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testHeaderForSlotshashformatclassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #headerForSlots:hash:format:classIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #headerForSlots:hash:format:classIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'method access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testHeaderIndicatesAlternateBytecodeSetSmoke [
  self testMethod: #headerIndicatesAlternateBytecodeSet:
]

{ #category : #'method access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testHeaderIndicatesAlternateBytecodeSetStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #headerIndicatesAlternateBytecodeSet:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #headerIndicatesAlternateBytecodeSet:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testHeapMapSmoke [
  self testMethod: #heapMap
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testHeapMapStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #heapMap.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #heapMap.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testHiddenRootSlotsSmoke [
  self testMethod: #hiddenRootSlots
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testHiddenRootSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hiddenRootSlots.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hiddenRootSlots.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testHiddenRootsObjectSmoke [
  self testMethod: #hiddenRootsObject
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testHiddenRootsObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #hiddenRootsObject.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #hiddenRootsObject.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIdentityHashFieldWidthSmoke [
  self testMethod: #identityHashFieldWidth
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIdentityHashFieldWidthStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #identityHashFieldWidth.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #identityHashFieldWidth.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIdentityHashFullWordMaskSmoke [
  self testMethod: #identityHashFullWordMask
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIdentityHashFullWordMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #identityHashFullWordMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #identityHashFullWordMask.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIdentityHashFullWordShiftSmoke [
  self testMethod: #identityHashFullWordShift
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIdentityHashFullWordShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #identityHashFullWordShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #identityHashFullWordShift.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIdentityHashHalfWordMaskSmoke [
  self testMethod: #identityHashHalfWordMask
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIdentityHashHalfWordMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #identityHashHalfWordMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #identityHashHalfWordMask.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIfAProxyupdateCopySmoke [
  self testMethod: #ifAProxy:updateCopy:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIfAProxyupdateCopyStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ifAProxy:updateCopy:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ifAProxy:updateCopy:.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIfOopInvalidForBecomeerrorCodeIntoSmoke [
  self testMethod: #ifOopInvalidForBecome:errorCodeInto:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIfOopInvalidForBecomeerrorCodeIntoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #ifOopInvalidForBecome:errorCodeInto:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #ifOopInvalidForBecome:errorCodeInto:.
  self assert: illiString equals: slangString
]

{ #category : #'immediates-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testImageFormatVersionSmoke [
  self testMethod: #imageFormatVersion
]

{ #category : #'immediates-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testImageFormatVersionStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #imageFormatVersion.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #imageFormatVersion.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testImageSegmentVersionSmoke [
  self testMethod: #imageSegmentVersion
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testImageSegmentVersionStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #imageSegmentVersion.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #imageSegmentVersion.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testImageSizeToWriteSmoke [
  self testMethod: #imageSizeToWrite
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testImageSizeToWriteStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #imageSizeToWrite.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #imageSizeToWrite.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testImmutableBitMaskSmoke [
  self testMethod: #immutableBitMask
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testImmutableBitMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #immutableBitMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #immutableBitMask.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testImmutableBitShiftSmoke [
  self testMethod: #immutableBitShift
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testImmutableBitShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #immutableBitShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #immutableBitShift.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInFreeTreeReplacewithSmoke [
  self testMethod: #inFreeTreeReplace:with:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInFreeTreeReplacewithStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #inFreeTreeReplace:with:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #inFreeTreeReplace:with:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInLineRunLeakCheckerForexcludeUnmarkedObjsclassIndicesShouldBeValidSmoke [
  self testMethod: #inLineRunLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInLineRunLeakCheckerForexcludeUnmarkedObjsclassIndicesShouldBeValidStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #inLineRunLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #inLineRunLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInOrderPrintFreeTreeprintListSmoke [
  self testMethod: #inOrderPrintFreeTree:printList:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInOrderPrintFreeTreeprintListStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #inOrderPrintFreeTree:printList:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #inOrderPrintFreeTree:printList:.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInPlaceBecomeandcopyHashFlagSmoke [
  self testMethod: #inPlaceBecome:and:copyHashFlag:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInPlaceBecomeandcopyHashFlagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #inPlaceBecome:and:copyHashFlag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #inPlaceBecome:and:copyHashFlag:.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInactiveOrFailedToDeferScanSmoke [
  self testMethod: #inactiveOrFailedToDeferScan:
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInactiveOrFailedToDeferScanStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #inactiveOrFailedToDeferScan:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #inactiveOrFailedToDeferScan:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIncreaseFreeOldSpaceBySmoke [
  self testMethod: #increaseFreeOldSpaceBy:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIncreaseFreeOldSpaceByStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #increaseFreeOldSpaceBy:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #increaseFreeOldSpaceBy:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIncrementalGCSmoke [
  self testMethod: #incrementalGC
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIncrementalGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #incrementalGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #incrementalGC.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIndexOfinSmoke [
  self testMethod: #indexOf:in:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIndexOfinStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #indexOf:in:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #indexOf:in:.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIndexablePointersFormatSmoke [
  self testMethod: #indexablePointersFormat
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIndexablePointersFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #indexablePointersFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #indexablePointersFormat.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInitFreeChunkWithBytesatSmoke [
  self testMethod: #initFreeChunkWithBytes:at:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInitFreeChunkWithBytesatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initFreeChunkWithBytes:at:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initFreeChunkWithBytes:at:.
  self assert: illiString equals: slangString
]

{ #category : #'segments-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInitSegmentBridgeWithBytesatSmoke [
  self testMethod: #initSegmentBridgeWithBytes:at:
]

{ #category : #'segments-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInitSegmentBridgeWithBytesatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initSegmentBridgeWithBytes:at:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initSegmentBridgeWithBytes:at:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInitSpaceForAllocationChecklimitSmoke [
  self testMethod: #initSpaceForAllocationCheck:limit:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInitSpaceForAllocationChecklimitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initSpaceForAllocationCheck:limit:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initSpaceForAllocationCheck:limit:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInitialHeadroomgivenFreeOldSpaceInImageSmoke [
  self testMethod: #initialHeadroom:givenFreeOldSpaceInImage:
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInitialHeadroomgivenFreeOldSpaceInImageStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initialHeadroom:givenFreeOldSpaceInImage:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initialHeadroom:givenFreeOldSpaceInImage:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInitialInstanceOfSmoke [
  self testMethod: #initialInstanceOf:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInitialInstanceOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initialInstanceOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initialInstanceOf:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeFreeSpacePostLoadSmoke [
  self testMethod: #initializeFreeSpacePostLoad:
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeFreeSpacePostLoadStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializeFreeSpacePostLoad:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializeFreeSpacePostLoad:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeMarkStackSmoke [
  self testMethod: #initializeMarkStack
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeMarkStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializeMarkStack.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializeMarkStack.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeNewSpaceVariablesSmoke [
  self testMethod: #initializeNewSpaceVariables
]

{ #category : #'gc - scavenging-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeNewSpaceVariablesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializeNewSpaceVariables.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializeNewSpaceVariables.
  self assert: illiString equals: slangString
]

{ #category : #'initialization-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeObjectMemorySmoke [
  self testMethod: #initializeObjectMemory:
]

{ #category : #'initialization-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeObjectMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializeObjectMemory:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializeObjectMemory:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeOldSpaceFirstFreeSmoke [
  self testMethod: #initializeOldSpaceFirstFree:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeOldSpaceFirstFreeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializeOldSpaceFirstFree:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializeOldSpaceFirstFree:.
  self assert: illiString equals: slangString
]

{ #category : #'spur bootstrap-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializePostBootstrapSmoke [
  self testMethod: #initializePostBootstrap
]

{ #category : #'spur bootstrap-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializePostBootstrapStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializePostBootstrap.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializePostBootstrap.
  self assert: illiString equals: slangString
]

{ #category : #'initialization-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeSmoke [
  self testMethod: #initialize
]

{ #category : #'initialization-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initialize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initialize.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeUnscannedEphemeronsSmoke [
  self testMethod: #initializeUnscannedEphemerons
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeUnscannedEphemeronsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializeUnscannedEphemerons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializeUnscannedEphemerons.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeWeaklingStackSmoke [
  self testMethod: #initializeWeaklingStack
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInitializeWeaklingStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #initializeWeaklingStack.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #initializeWeaklingStack.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInnerBecomeObjectsInandcopyHashSmoke [
  self testMethod: #innerBecomeObjectsIn:and:copyHash:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInnerBecomeObjectsInandcopyHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #innerBecomeObjectsIn:and:copyHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #innerBecomeObjectsIn:and:copyHash:.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInnerBecomeObjectsIntocopyHashSmoke [
  self testMethod: #innerBecomeObjectsIn:to:copyHash:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInnerBecomeObjectsIntocopyHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #innerBecomeObjectsIn:to:copyHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #innerBecomeObjectsIn:to:copyHash:.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInstSpecForImmediateClassesSmoke [
  self testMethod: #instSpecForImmediateClasses
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInstSpecForImmediateClassesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instSpecForImmediateClasses.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instSpecForImmediateClasses.
  self assert: illiString equals: slangString
]

{ #category : #'object format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInstSpecOfClassFormatSmoke [
  self testMethod: #instSpecOfClassFormat:
]

{ #category : #'object format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInstSpecOfClassFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instSpecOfClassFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instSpecOfClassFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'object format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInstSpecOfClassSmoke [
  self testMethod: #instSpecOfClass:
]

{ #category : #'object format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInstSpecOfClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instSpecOfClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instSpecOfClass:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInstanceAfterSmoke [
  self testMethod: #instanceAfter:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInstanceAfterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instanceAfter:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instanceAfter:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInstanceSizeOfSmoke [
  self testMethod: #instanceSizeOf:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInstanceSizeOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instanceSizeOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instanceSizeOf:.
  self assert: illiString equals: slangString
]

{ #category : #'instantiation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInstantiateClassSmoke [
  self testMethod: #instantiateClass:
]

{ #category : #'instantiation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInstantiateClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instantiateClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instantiateClass:.
  self assert: illiString equals: slangString
]

{ #category : #'instantiation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInstantiateClassindexableSizeSmoke [
  self testMethod: #instantiateClass:indexableSize:
]

{ #category : #'instantiation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInstantiateClassindexableSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instantiateClass:indexableSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instantiateClass:indexableSize:.
  self assert: illiString equals: slangString
]

{ #category : #'instantiation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testInstantiateCompiledMethodClassindexableSizeSmoke [
  self testMethod: #instantiateCompiledMethodClass:indexableSize:
]

{ #category : #'instantiation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testInstantiateCompiledMethodClassindexableSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #instantiateCompiledMethodClass:indexableSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #instantiateCompiledMethodClass:indexableSize:.
  self assert: illiString equals: slangString
]

{ #category : #'immediates-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIntegerObjectOfCharacterObjectSmoke [
  self testMethod: #integerObjectOfCharacterObject:
]

{ #category : #'immediates-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIntegerObjectOfCharacterObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #integerObjectOfCharacterObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #integerObjectOfCharacterObject:.
  self assert: illiString equals: slangString
]

{ #category : #'immediates-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIntegerObjectOfSmoke [
  self testMethod: #integerObjectOf:
]

{ #category : #'immediates-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIntegerObjectOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #integerObjectOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #integerObjectOf:.
  self assert: illiString equals: slangString
]

{ #category : #'immediates-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIntegerValueOfSmoke [
  self testMethod: #integerValueOf:
]

{ #category : #'immediates-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIntegerValueOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #integerValueOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #integerValueOf:.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsAnyPointerFormatSmoke [
  self testMethod: #isAnyPointerFormat:
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsAnyPointerFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isAnyPointerFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isAnyPointerFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsArrayNonImmSmoke [
  self testMethod: #isArrayNonImm:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsArrayNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isArrayNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isArrayNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsArraySmoke [
  self testMethod: #isArray:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsArrayStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isArray:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isArray:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsBytesNonImmSmoke [
  self testMethod: #isBytesNonImm:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsBytesNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isBytesNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isBytesNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsBytesSmoke [
  self testMethod: #isBytes:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'immediates-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsCharacterObjectSmoke [
  self testMethod: #isCharacterObject:
]

{ #category : #'immediates-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsCharacterObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isCharacterObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isCharacterObject:.
  self assert: illiString equals: slangString
]

{ #category : #'immediates-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsCharacterValueSmoke [
  self testMethod: #isCharacterValue:
]

{ #category : #'immediates-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsCharacterValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isCharacterValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isCharacterValue:.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsClassAtUniqueIndexSmoke [
  self testMethod: #isClassAtUniqueIndex:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsClassAtUniqueIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isClassAtUniqueIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isClassAtUniqueIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsClassOfNonImmequalToSmoke [
  self testMethod: #isClassOfNonImm:equalTo:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsClassOfNonImmequalToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isClassOfNonImm:equalTo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isClassOfNonImm:equalTo:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsClassOfNonImmequalTocompactClassIndexSmoke [
  self testMethod: #isClassOfNonImm:equalTo:compactClassIndex:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsClassOfNonImmequalTocompactClassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isClassOfNonImm:equalTo:compactClassIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isClassOfNonImm:equalTo:compactClassIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsCompactInstanceSmoke [
  self testMethod: #isCompactInstance:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsCompactInstanceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isCompactInstance:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isCompactInstance:.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsCompiledMethodFormatSmoke [
  self testMethod: #isCompiledMethodFormat:
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsCompiledMethodFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isCompiledMethodFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isCompiledMethodFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsCompiledMethodHeaderSmoke [
  self testMethod: #isCompiledMethodHeader:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsCompiledMethodHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isCompiledMethodHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isCompiledMethodHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsCompiledMethodSmoke [
  self testMethod: #isCompiledMethod:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsCompiledMethodStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isCompiledMethod:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isCompiledMethod:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsContextHeaderSmoke [
  self testMethod: #isContextHeader:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsContextHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isContextHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isContextHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsContextNonImmSmoke [
  self testMethod: #isContextNonImm:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsContextNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isContextNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isContextNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsContextSmoke [
  self testMethod: #isContext:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsContextStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isContext:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isContext:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsCopiedIntoSegmentSmoke [
  self testMethod: #isCopiedIntoSegment:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsCopiedIntoSegmentStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isCopiedIntoSegment:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isCopiedIntoSegment:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsEmptyObjStackSmoke [
  self testMethod: #isEmptyObjStack:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsEmptyObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isEmptyObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isEmptyObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsEnumerableObjectNoAssertSmoke [
  self testMethod: #isEnumerableObjectNoAssert:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsEnumerableObjectNoAssertStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isEnumerableObjectNoAssert:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isEnumerableObjectNoAssert:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsEnumerableObjectSmoke [
  self testMethod: #isEnumerableObject:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsEnumerableObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isEnumerableObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isEnumerableObject:.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsEphemeronFormatSmoke [
  self testMethod: #isEphemeronFormat:
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsEphemeronFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isEphemeronFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isEphemeronFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsEphemeronSmoke [
  self testMethod: #isEphemeron:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsEphemeronStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isEphemeron:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isEphemeron:.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsFixedSizePointerFormatSmoke [
  self testMethod: #isFixedSizePointerFormat:
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsFixedSizePointerFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isFixedSizePointerFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isFixedSizePointerFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsFloatInstanceSmoke [
  self testMethod: #isFloatInstance:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsFloatInstanceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isFloatInstance:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isFloatInstance:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsFloatOrIntSmoke [
  self testMethod: #isFloatOrInt:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsFloatOrIntStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isFloatOrInt:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isFloatOrInt:.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsForwardedClassTagSmoke [
  self testMethod: #isForwardedClassTag:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsForwardedClassTagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isForwardedClassTag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isForwardedClassTag:.
  self assert: illiString equals: slangString
]

{ #category : #'class table puns-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsForwardedObjectClassIndexPunSmoke [
  self testMethod: #isForwardedObjectClassIndexPun
]

{ #category : #'class table puns-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsForwardedObjectClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isForwardedObjectClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isForwardedObjectClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsForwardedSmoke [
  self testMethod: #isForwarded:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsForwardedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isForwarded:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isForwarded:.
  self assert: illiString equals: slangString
]

{ #category : #'class table puns-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsFreeObjectClassIndexPunSmoke [
  self testMethod: #isFreeObjectClassIndexPun
]

{ #category : #'class table puns-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsFreeObjectClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isFreeObjectClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isFreeObjectClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsFreeObjectSmoke [
  self testMethod: #isFreeObject:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsFreeObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isFreeObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isFreeObject:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsFreeOopSmoke [
  self testMethod: #isFreeOop:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsFreeOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isFreeOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isFreeOop:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsGreySmoke [
  self testMethod: #isGrey:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsGreyStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isGrey:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isGrey:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsHiddenObjSmoke [
  self testMethod: #isHiddenObj:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsHiddenObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isHiddenObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isHiddenObj:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsImmediateCharacterSmoke [
  self testMethod: #isImmediateCharacter:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsImmediateCharacterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isImmediateCharacter:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isImmediateCharacter:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsImmediateFloatSmoke [
  self testMethod: #isImmediateFloat:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsImmediateFloatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isImmediateFloat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isImmediateFloat:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsImmediateSmoke [
  self testMethod: #isImmediate:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsImmediateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isImmediate:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isImmediate:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsImmutableSmoke [
  self testMethod: #isImmutable:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsImmutableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isImmutable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isImmutable:.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInClassTableSmoke [
  self testMethod: #isInClassTable:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInClassTableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInClassTable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInClassTable:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInEdenSmoke [
  self testMethod: #isInEden:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInEdenStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInEden:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInEden:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInFutureSpaceSmoke [
  self testMethod: #isInFutureSpace:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInFutureSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInFutureSpace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInFutureSpace:.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInMemorySmoke [
  self testMethod: #isInMemory:
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInMemory:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInMemory:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInNewSpaceSmoke [
  self testMethod: #isInNewSpace:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInNewSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInNewSpace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInNewSpace:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInOldSpaceSmoke [
  self testMethod: #isInOldSpace:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInOldSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInOldSpace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInOldSpace:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInPastSpaceSmoke [
  self testMethod: #isInPastSpace:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInPastSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInPastSpace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInPastSpace:.
  self assert: illiString equals: slangString
]

{ #category : #'immediates-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInRangeCharacterCodeSmoke [
  self testMethod: #isInRangeCharacterCode:
]

{ #category : #'immediates-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInRangeCharacterCodeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInRangeCharacterCode:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInRangeCharacterCode:.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsIndexableFormatSmoke [
  self testMethod: #isIndexableFormat:
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsIndexableFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isIndexableFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isIndexableFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsIndexableSmoke [
  self testMethod: #isIndexable:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsIndexableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isIndexable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isIndexable:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInstanceOfClassLargeNegativeIntegerSmoke [
  self testMethod: #isInstanceOfClassLargeNegativeInteger:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInstanceOfClassLargeNegativeIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInstanceOfClassLargeNegativeInteger:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInstanceOfClassLargeNegativeInteger:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInstanceOfClassLargePositiveIntegerSmoke [
  self testMethod: #isInstanceOfClassLargePositiveInteger:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsInstanceOfClassLargePositiveIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isInstanceOfClassLargePositiveInteger:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isInstanceOfClassLargePositiveInteger:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsIntegerObjectSmoke [
  self testMethod: #isIntegerObject:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsIntegerObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isIntegerObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isIntegerObject:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsIntegerValueSmoke [
  self testMethod: #isIntegerValue:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsIntegerValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isIntegerValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isIntegerValue:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsLargeFreeObjectSmoke [
  self testMethod: #isLargeFreeObject:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsLargeFreeObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isLargeFreeObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isLargeFreeObject:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsLargeIntegerInstanceSmoke [
  self testMethod: #isLargeIntegerInstance:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsLargeIntegerInstanceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isLargeIntegerInstance:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isLargeIntegerInstance:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsLilliputianSizeSmoke [
  self testMethod: #isLilliputianSize:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsLilliputianSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isLilliputianSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isLilliputianSize:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsLongsNonImmSmoke [
  self testMethod: #isLong64sNonImm:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsLongsNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isLong64sNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isLong64sNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsLongsSmoke [
  self testMethod: #isLong64s:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsLongsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isLong64s:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isLong64s:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsMarkedSmoke [
  self testMethod: #isMarked:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsMarkedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isMarked:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isMarked:.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsMaybeFiredEphemeronFormatSmoke [
  self testMethod: #isMaybeFiredEphemeronFormat:
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsMaybeFiredEphemeronFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isMaybeFiredEphemeronFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isMaybeFiredEphemeronFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsMaybeFiredEphemeronSmoke [
  self testMethod: #isMaybeFiredEphemeron:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsMaybeFiredEphemeronStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isMaybeFiredEphemeron:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isMaybeFiredEphemeron:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsMobileObjectHeaderSmoke [
  self testMethod: #isMobileObjectHeader:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsMobileObjectHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isMobileObjectHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isMobileObjectHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsMobileObjectSmoke [
  self testMethod: #isMobileObject:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsMobileObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isMobileObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isMobileObject:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsNegativeSmallFloatSmoke [
  self testMethod: #isNegativeSmallFloat:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsNegativeSmallFloatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isNegativeSmallFloat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isNegativeSmallFloat:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsNonImmediateSmoke [
  self testMethod: #isNonImmediate:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsNonImmediateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isNonImmediate:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isNonImmediate:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsNonIntegerImmediateSmoke [
  self testMethod: #isNonIntegerImmediate:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsNonIntegerImmediateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isNonIntegerImmediate:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isNonIntegerImmediate:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsNonIntegerNonImmediateSmoke [
  self testMethod: #isNonIntegerNonImmediate:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsNonIntegerNonImmediateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isNonIntegerNonImmediate:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isNonIntegerNonImmediate:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsNonIntegerObjectSmoke [
  self testMethod: #isNonIntegerObject:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsNonIntegerObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isNonIntegerObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isNonIntegerObject:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsNormalObjectSmoke [
  self testMethod: #isNormalObject:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsNormalObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isNormalObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isNormalObject:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsObjEphemeronSmoke [
  self testMethod: #isObjEphemeron:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsObjEphemeronStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isObjEphemeron:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isObjEphemeron:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsObjImmutableSmoke [
  self testMethod: #isObjImmutable:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsObjImmutableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isObjImmutable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isObjImmutable:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsOldObjectSmoke [
  self testMethod: #isOldObject:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsOldObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isOldObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isOldObject:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsOopCompiledMethodSmoke [
  self testMethod: #isOopCompiledMethod:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsOopCompiledMethodStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isOopCompiledMethod:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isOopCompiledMethod:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsOopForwardedSmoke [
  self testMethod: #isOopForwarded:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsOopForwardedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isOopForwarded:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isOopForwarded:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsOopImmutableSmoke [
  self testMethod: #isOopImmutable:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsOopImmutableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isOopImmutable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isOopImmutable:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsOopMutableSmoke [
  self testMethod: #isOopMutable:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsOopMutableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isOopMutable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isOopMutable:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsPinnedSmoke [
  self testMethod: #isPinned:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsPinnedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isPinned:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isPinned:.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsPointersFormatSmoke [
  self testMethod: #isPointersFormat:
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsPointersFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isPointersFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isPointersFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsPointersNonImmSmoke [
  self testMethod: #isPointersNonImm:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsPointersNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isPointersNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isPointersNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsPointersSmoke [
  self testMethod: #isPointers:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsPointersStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isPointers:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isPointers:.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsPureBitsFormatSmoke [
  self testMethod: #isPureBitsFormat:
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsPureBitsFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isPureBitsFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isPureBitsFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsPureBitsNonImmSmoke [
  self testMethod: #isPureBitsNonImm:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsPureBitsNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isPureBitsNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isPureBitsNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsReallyYoungObjectSmoke [
  self testMethod: #isReallyYoungObject:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsReallyYoungObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isReallyYoungObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isReallyYoungObject:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsReallyYoungSmoke [
  self testMethod: #isReallyYoung:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsReallyYoungStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isReallyYoung:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isReallyYoung:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsRememberedObjectHeaderSmoke [
  self testMethod: #isRememberedObjectHeader:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsRememberedObjectHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isRememberedObjectHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isRememberedObjectHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsRememberedSmoke [
  self testMethod: #isRemembered:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsRememberedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isRemembered:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isRemembered:.
  self assert: illiString equals: slangString
]

{ #category : #'segments-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsSegmentBridgeSmoke [
  self testMethod: #isSegmentBridge:
]

{ #category : #'segments-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsSegmentBridgeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isSegmentBridge:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isSegmentBridge:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsSemaphoreObjSmoke [
  self testMethod: #isSemaphoreObj:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsSemaphoreObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isSemaphoreObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isSemaphoreObj:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsSemaphoreOopSmoke [
  self testMethod: #isSemaphoreOop:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsSemaphoreOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isSemaphoreOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isSemaphoreOop:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsShortsNonImmSmoke [
  self testMethod: #isShortsNonImm:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsShortsNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isShortsNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isShortsNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsShortsSmoke [
  self testMethod: #isShorts:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsShortsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isShorts:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isShorts:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsSmallFloatValueSmoke [
  self testMethod: #isSmallFloatValue:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsSmallFloatValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isSmallFloatValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isSmallFloatValue:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsSmallFloatZeroSmoke [
  self testMethod: #isSmallFloatZero:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsSmallFloatZeroStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isSmallFloatZero:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isSmallFloatZero:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsUnambiguouslyForwarderSmoke [
  self testMethod: #isUnambiguouslyForwarder:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsUnambiguouslyForwarderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isUnambiguouslyForwarder:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isUnambiguouslyForwarder:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsUnmarkedSmoke [
  self testMethod: #isUnmarked:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsUnmarkedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isUnmarked:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isUnmarked:.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsValidClassIndexSmoke [
  self testMethod: #isValidClassIndex:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsValidClassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isValidClassIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isValidClassIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsValidClassTagSmoke [
  self testMethod: #isValidClassTag:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsValidClassTagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isValidClassTag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isValidClassTag:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsValidObjStackAtSmoke [
  self testMethod: #isValidObjStackAt:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsValidObjStackAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isValidObjStackAt:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isValidObjStackAt:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsValidObjStackPagemyIndexSmoke [
  self testMethod: #isValidObjStackPage:myIndex:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsValidObjStackPagemyIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isValidObjStackPage:myIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isValidObjStackPage:myIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsValidObjStackPagemyIndexfirstPageSmoke [
  self testMethod: #isValidObjStackPage:myIndex:firstPage:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsValidObjStackPagemyIndexfirstPageStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isValidObjStackPage:myIndex:firstPage:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isValidObjStackPage:myIndex:firstPage:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsValidObjStackSmoke [
  self testMethod: #isValidObjStack:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsValidObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isValidObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isValidObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsWeakFormatSmoke [
  self testMethod: #isWeakFormat:
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsWeakFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isWeakFormat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isWeakFormat:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsWeakNonImmSmoke [
  self testMethod: #isWeakNonImm:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsWeakNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isWeakNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isWeakNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsWeakSmoke [
  self testMethod: #isWeak:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsWeakStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isWeak:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isWeak:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsWordsNonImmSmoke [
  self testMethod: #isWordsNonImm:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsWordsNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isWordsNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isWordsNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsWordsOrBytesNonImmSmoke [
  self testMethod: #isWordsOrBytesNonImm:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsWordsOrBytesNonImmStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isWordsOrBytesNonImm:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isWordsOrBytesNonImm:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsWordsOrBytesSmoke [
  self testMethod: #isWordsOrBytes:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsWordsOrBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isWordsOrBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isWordsOrBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsWordsSmoke [
  self testMethod: #isWords:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsWordsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isWords:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isWords:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsYoungObjectSmoke [
  self testMethod: #isYoungObject:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsYoungObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isYoungObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isYoungObject:.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsYoungSmoke [
  self testMethod: #isYoung:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsYoungStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #isYoung:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #isYoung:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsinstanceOfSmoke [
  self testMethod: #is:instanceOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsinstanceOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #is:instanceOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #is:instanceOf:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsinstanceOfcompactClassIndexSmoke [
  self testMethod: #is:instanceOf:compactClassIndex:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsinstanceOfcompactClassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #is:instanceOf:compactClassIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #is:instanceOf:compactClassIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsonObjStackSmoke [
  self testMethod: #is:onObjStack:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsonObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #is:onObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #is:onObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testIsoutPointerClassHashForinlimitSmoke [
  self testMethod: #is:outPointerClassHashFor:in:limit:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testIsoutPointerClassHashForinlimitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #is:outPointerClassHashFor:in:limit:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #is:outPointerClassHashFor:in:limit:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testKeyOfEphemeronSmoke [
  self testMethod: #keyOfEphemeron:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testKeyOfEphemeronStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #keyOfEphemeron:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #keyOfEphemeron:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testKeyOfMaybeFiredEphemeronSmoke [
  self testMethod: #keyOfMaybeFiredEphemeron:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testKeyOfMaybeFiredEphemeronStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #keyOfMaybeFiredEphemeron:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #keyOfMaybeFiredEphemeron:.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testKnownClassAtIndexSmoke [
  self testMethod: #knownClassAtIndex:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testKnownClassAtIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #knownClassAtIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #knownClassAtIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLargeObjectBytesForSlotsSmoke [
  self testMethod: #largeObjectBytesForSlots:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLargeObjectBytesForSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #largeObjectBytesForSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #largeObjectBytesForSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'class table puns-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLastClassIndexPunSmoke [
  self testMethod: #lastClassIndexPun
]

{ #category : #'class table puns-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLastClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lastClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lastClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLastHashSmoke [
  self testMethod: #lastHash:
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLastHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lastHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lastHash:.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLastPointerFormatSmoke [
  self testMethod: #lastPointerFormat
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLastPointerFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lastPointerFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lastPointerFormat.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLastPointerOfArraySmoke [
  self testMethod: #lastPointerOfArray:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLastPointerOfArrayStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lastPointerOfArray:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lastPointerOfArray:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLastPointerOfMethodHeaderSmoke [
  self testMethod: #lastPointerOfMethodHeader:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLastPointerOfMethodHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lastPointerOfMethodHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lastPointerOfMethodHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLastPointerOfSmoke [
  self testMethod: #lastPointerOf:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLastPointerOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lastPointerOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lastPointerOf:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLastPointerOfWhileSwizzlingSmoke [
  self testMethod: #lastPointerOfWhileSwizzling:
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLastPointerOfWhileSwizzlingStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lastPointerOfWhileSwizzling:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lastPointerOfWhileSwizzling:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLeakCheckBecomeSmoke [
  self testMethod: #leakCheckBecome
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLeakCheckBecomeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #leakCheckBecome.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #leakCheckBecome.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLeakCheckFullGCSmoke [
  self testMethod: #leakCheckFullGC
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLeakCheckFullGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #leakCheckFullGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #leakCheckFullGC.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLeakCheckImageSegmentsSmoke [
  self testMethod: #leakCheckImageSegments
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLeakCheckImageSegmentsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #leakCheckImageSegments.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #leakCheckImageSegments.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLeakCheckIncrementalSmoke [
  self testMethod: #leakCheckIncremental
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLeakCheckIncrementalStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #leakCheckIncremental.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #leakCheckIncremental.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLeakCheckNewSpaceGCSmoke [
  self testMethod: #leakCheckNewSpaceGC
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLeakCheckNewSpaceGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #leakCheckNewSpaceGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #leakCheckNewSpaceGC.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLengthOfMaybeImmediateSmoke [
  self testMethod: #lengthOfMaybeImmediate:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLengthOfMaybeImmediateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lengthOfMaybeImmediate:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lengthOfMaybeImmediate:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLengthOfSmoke [
  self testMethod: #lengthOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLengthOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lengthOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lengthOf:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLengthOfbaseHeaderformatSmoke [
  self testMethod: #lengthOf:baseHeader:format:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLengthOfbaseHeaderformatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lengthOf:baseHeader:format:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lengthOf:baseHeader:format:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLengthOfformatSmoke [
  self testMethod: #lengthOf:format:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLengthOfformatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lengthOf:format:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lengthOf:format:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLilliputianChunkIndexSmoke [
  self testMethod: #lilliputianChunkIndex
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLilliputianChunkIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lilliputianChunkIndex.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lilliputianChunkIndex.
  self assert: illiString equals: slangString
]

{ #category : #'method access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLiteralCountOfMethodHeaderSmoke [
  self testMethod: #literalCountOfMethodHeader:
]

{ #category : #'method access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLiteralCountOfMethodHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #literalCountOfMethodHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #literalCountOfMethodHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'method access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLiteralCountOfSmoke [
  self testMethod: #literalCountOf:
]

{ #category : #'method access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLiteralCountOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #literalCountOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #literalCountOf:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLoadFloatOrIntFromSmoke [
  self testMethod: #loadFloatOrIntFrom:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLoadFloatOrIntFromStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #loadFloatOrIntFrom:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #loadFloatOrIntFrom:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLoadImageSegmentFromoutPointersSmoke [
  self testMethod: #loadImageSegmentFrom:outPointers:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLoadImageSegmentFromoutPointersStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #loadImageSegmentFrom:outPointers:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #loadImageSegmentFrom:outPointers:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLogBytesPerOopSmoke [
  self testMethod: #logBytesPerOop
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLogBytesPerOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #logBytesPerOop.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #logBytesPerOop.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLongPrintInstancesOfSmoke [
  self testMethod: #longPrintInstancesOf:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLongPrintInstancesOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #longPrintInstancesOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #longPrintInstancesOf:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLongPrintInstancesWithClassIndexSmoke [
  self testMethod: #longPrintInstancesWithClassIndex:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLongPrintInstancesWithClassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #longPrintInstancesWithClassIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #longPrintInstancesWithClassIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLongPrintReferencesToSmoke [
  self testMethod: #longPrintReferencesTo:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLongPrintReferencesToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #longPrintReferencesTo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #longPrintReferencesTo:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testLowSpaceThresholdSmoke [
  self testMethod: #lowSpaceThreshold:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testLowSpaceThresholdStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #lowSpaceThreshold:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #lowSpaceThreshold:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMapExtraRootsSmoke [
  self testMethod: #mapExtraRoots
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMapExtraRootsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #mapExtraRoots.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #mapExtraRoots.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMapMournQueueSmoke [
  self testMethod: #mapMournQueue
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMapMournQueueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #mapMournQueue.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #mapMournQueue.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMapOopsAndValidateClassRefsFromtooutPointersSmoke [
  self testMethod: #mapOopsAndValidateClassRefsFrom:to:outPointers:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMapOopsAndValidateClassRefsFromtooutPointersStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #mapOopsAndValidateClassRefsFrom:to:outPointers:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #mapOopsAndValidateClassRefsFrom:to:outPointers:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMapOopsFromtooutPointersoutHashesSmoke [
  self testMethod: #mapOopsFrom:to:outPointers:outHashes:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMapOopsFromtooutPointersoutHashesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #mapOopsFrom:to:outPointers:outHashes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #mapOopsFrom:to:outPointers:outHashes:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMapSignedSmallFloatToSignedSmallFloatZeroSmoke [
  self testMethod: #mapSignedSmallFloatToSignedSmallFloatZero:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMapSignedSmallFloatToSignedSmallFloatZeroStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #mapSignedSmallFloatToSignedSmallFloatZero:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #mapSignedSmallFloatToSignedSmallFloatZero:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAccessibleObjectsAndFireEphemeronsSmoke [
  self testMethod: #markAccessibleObjectsAndFireEphemerons
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAccessibleObjectsAndFireEphemeronsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAccessibleObjectsAndFireEphemerons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAccessibleObjectsAndFireEphemerons.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAllUnscannedEphemeronsSmoke [
  self testMethod: #markAllUnscannedEphemerons
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAllUnscannedEphemeronsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAllUnscannedEphemerons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAllUnscannedEphemerons.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAndShouldScanSmoke [
  self testMethod: #markAndShouldScan:
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAndShouldScanStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAndShouldScan:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAndShouldScan:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAndTraceClassOfSmoke [
  self testMethod: #markAndTraceClassOf:
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAndTraceClassOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAndTraceClassOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAndTraceClassOf:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAndTraceExtraRootsSmoke [
  self testMethod: #markAndTraceExtraRoots
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAndTraceExtraRootsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAndTraceExtraRoots.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAndTraceExtraRoots.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAndTraceHiddenRootsSmoke [
  self testMethod: #markAndTraceHiddenRoots
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAndTraceHiddenRootsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAndTraceHiddenRoots.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAndTraceHiddenRoots.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAndTraceObjStackandContentsSmoke [
  self testMethod: #markAndTraceObjStack:andContents:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAndTraceObjStackandContentsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAndTraceObjStack:andContents:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAndTraceObjStack:andContents:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAndTraceSmoke [
  self testMethod: #markAndTrace:
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAndTraceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAndTrace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAndTrace:.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAndTraceWeaklingsFromSmoke [
  self testMethod: #markAndTraceWeaklingsFrom:
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAndTraceWeaklingsFromStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAndTraceWeaklingsFrom:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAndTraceWeaklingsFrom:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAsCopiedIntoSegmentSmoke [
  self testMethod: #markAsCopiedIntoSegment:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkAsCopiedIntoSegmentStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markAsCopiedIntoSegment:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markAsCopiedIntoSegment:.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkInactiveEphemeronsSmoke [
  self testMethod: #markInactiveEphemerons
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkInactiveEphemeronsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markInactiveEphemerons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markInactiveEphemerons.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkLoopFromSmoke [
  self testMethod: #markLoopFrom:
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkLoopFromStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markLoopFrom:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markLoopFrom:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkObjectsInSmoke [
  self testMethod: #markObjectsIn:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkObjectsInStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markObjectsIn:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markObjectsIn:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkObjectsSmoke [
  self testMethod: #markObjects:
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkObjectsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markObjects:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markObjects:.
  self assert: illiString equals: slangString
]

{ #category : #'primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkSmoke [
  self testMethod: #mark:
]

{ #category : #'spur bootstrap-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkStackSmoke [
  self testMethod: #markStack
]

{ #category : #'spur bootstrap-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markStack.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markStack.
  self assert: illiString equals: slangString
]

{ #category : #'primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #mark:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #mark:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkWeaklingsAndMarkAndFireEphemeronsSmoke [
  self testMethod: #markWeaklingsAndMarkAndFireEphemerons
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkWeaklingsAndMarkAndFireEphemeronsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markWeaklingsAndMarkAndFireEphemerons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markWeaklingsAndMarkAndFireEphemerons.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkedBitFullShiftSmoke [
  self testMethod: #markedBitFullShift
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkedBitFullShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markedBitFullShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markedBitFullShift.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkedBitHalfShiftSmoke [
  self testMethod: #markedBitHalfShift
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMarkedBitHalfShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #markedBitHalfShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #markedBitHalfShift.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMaxCIntegerSmoke [
  self testMethod: #maxCInteger
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMaxCIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maxCInteger.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maxCInteger.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMaxIdentityHashSmoke [
  self testMethod: #maxIdentityHash
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMaxIdentityHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maxIdentityHash.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maxIdentityHash.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMaxOldSpaceSizeSmoke [
  self testMethod: #maxOldSpaceSize
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMaxOldSpaceSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maxOldSpaceSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maxOldSpaceSize.
  self assert: illiString equals: slangString
]

{ #category : #'instantiation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMaxSlotsForAllocSmoke [
  self testMethod: #maxSlotsForAlloc
]

{ #category : #'instantiation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMaxSlotsForAllocStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maxSlotsForAlloc.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maxSlotsForAlloc.
  self assert: illiString equals: slangString
]

{ #category : #'instantiation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMaxSlotsForNewSpaceAllocSmoke [
  self testMethod: #maxSlotsForNewSpaceAlloc
]

{ #category : #'instantiation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMaxSlotsForNewSpaceAllocStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maxSlotsForNewSpaceAlloc.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maxSlotsForNewSpaceAlloc.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMaxSmallIntegerSmoke [
  self testMethod: #maxSmallInteger
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMaxSmallIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maxSmallInteger.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maxSmallInteger.
  self assert: illiString equals: slangString
]

{ #category : #'object testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMaybeMethodClassOfseemsToBeInstantiatingSmoke [
  self testMethod: #maybeMethodClassOf:seemsToBeInstantiating:
]

{ #category : #'object testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMaybeMethodClassOfseemsToBeInstantiatingStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maybeMethodClassOf:seemsToBeInstantiating:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maybeMethodClassOf:seemsToBeInstantiating:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMaybeSplObjSmoke [
  self testMethod: #maybeSplObj:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMaybeSplObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #maybeSplObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #maybeSplObj:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMemoryActiveProcessSmoke [
  self testMethod: #memoryActiveProcess
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMemoryActiveProcessStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #memoryActiveProcess.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #memoryActiveProcess.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMemoryBaseForImageReadSmoke [
  self testMethod: #memoryBaseForImageRead
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMemoryBaseForImageReadStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #memoryBaseForImageRead.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #memoryBaseForImageRead.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMemoryLimitSmoke [
  self testMethod: #memoryLimit
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMemoryLimitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #memoryLimit.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #memoryLimit.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMemorySchedulerPointerSmoke [
  self testMethod: #memorySchedulerPointer
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMemorySchedulerPointerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #memorySchedulerPointer.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #memorySchedulerPointer.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMemorySmoke [
  self testMethod: #memory
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #memory.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #memory.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMethodCacheHashOfwithSmoke [
  self testMethod: #methodCacheHashOf:with:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMethodCacheHashOfwithStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #methodCacheHashOf:with:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #methodCacheHashOf:with:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMethodDictionaryHashmaskSmoke [
  self testMethod: #methodDictionaryHash:mask:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMethodDictionaryHashmaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #methodDictionaryHash:mask:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #methodDictionaryHash:mask:.
  self assert: illiString equals: slangString
]

{ #category : #'compaction-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMethodHeaderFromSavedFirstFieldSmoke [
  self testMethod: #methodHeaderFromSavedFirstField:
]

{ #category : #'compaction-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMethodHeaderFromSavedFirstFieldStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #methodHeaderFromSavedFirstField:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #methodHeaderFromSavedFirstField:.
  self assert: illiString equals: slangString
]

{ #category : #'memory access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMethodHeaderOfSmoke [
  self testMethod: #methodHeaderOf:
]

{ #category : #'memory access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMethodHeaderOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #methodHeaderOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #methodHeaderOf:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMinSlotsForShorteningSmoke [
  self testMethod: #minSlotsForShortening
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMinSlotsForShorteningStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #minSlotsForShortening.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #minSlotsForShortening.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMinSmallIntegerSmoke [
  self testMethod: #minSmallInteger
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMinSmallIntegerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #minSmallInteger.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #minSmallInteger.
  self assert: illiString equals: slangString
]

{ #category : #'spur bootstrap-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMournQueueSmoke [
  self testMethod: #mournQueue
]

{ #category : #'spur bootstrap-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMournQueueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #mournQueue.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #mournQueue.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testMoveClassesForwardsInSmoke [
  self testMethod: #moveClassesForwardsIn:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testMoveClassesForwardsInStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #moveClassesForwardsIn:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #moveClassesForwardsIn:.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNaiveSwapHeadersandcopyHashFlagSmoke [
  self testMethod: #naiveSwapHeaders:and:copyHashFlag:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNaiveSwapHeadersandcopyHashFlagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #naiveSwapHeaders:and:copyHashFlag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #naiveSwapHeaders:and:copyHashFlag:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNeedGCFlagSmoke [
  self testMethod: #needGCFlag
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNeedGCFlagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #needGCFlag.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #needGCFlag.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNegativeSmallFloatZeroSmoke [
  self testMethod: #negativeSmallFloatZero
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNegativeSmallFloatZeroStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #negativeSmallFloatZero.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #negativeSmallFloatZero.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNewHashBitsOfSmoke [
  self testMethod: #newHashBitsOf:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNewHashBitsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newHashBitsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newHashBitsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNewObjectHashSmoke [
  self testMethod: #newObjectHash
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNewObjectHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newObjectHash.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newObjectHash.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNewOutPointeratinhashesSmoke [
  self testMethod: #newOutPointer:at:in:hashes:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNewOutPointeratinhashesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newOutPointer:at:in:hashes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newOutPointer:at:in:hashes:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNewSpaceBytesSmoke [
  self testMethod: #newSpaceBytes
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNewSpaceBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newSpaceBytes.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newSpaceBytes.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNewSpaceIsEmptySmoke [
  self testMethod: #newSpaceIsEmpty
]

{ #category : #'gc - scavenging-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNewSpaceIsEmptyStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newSpaceIsEmpty.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newSpaceIsEmpty.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNewSpaceLimitSmoke [
  self testMethod: #newSpaceLimit
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNewSpaceLimitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newSpaceLimit.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newSpaceLimit.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNewSpaceRefCountMaskSmoke [
  self testMethod: #newSpaceRefCountMask
]

{ #category : #'gc - scavenging-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNewSpaceRefCountMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newSpaceRefCountMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newSpaceRefCountMask.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNewSpaceSizeSmoke [
  self testMethod: #newSpaceSize
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNewSpaceSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newSpaceSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newSpaceSize.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNewSpaceStartSmoke [
  self testMethod: #newSpaceStart
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNewSpaceStartStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #newSpaceStart.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #newSpaceStart.
  self assert: illiString equals: slangString
]

{ #category : #'primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNilFieldsOfSmoke [
  self testMethod: #nilFieldsOf:
]

{ #category : #'primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNilFieldsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #nilFieldsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #nilFieldsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNilObjectSmoke [
  self testMethod: #nilObject:
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNilObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #nilObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #nilObject:.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNilUnmarkedWeaklingSlotsInSmoke [
  self testMethod: #nilUnmarkedWeaklingSlotsIn:
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNilUnmarkedWeaklingSlotsInStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #nilUnmarkedWeaklingSlotsIn:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #nilUnmarkedWeaklingSlotsIn:.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNilUnmarkedWeaklingSlotsSmoke [
  self testMethod: #nilUnmarkedWeaklingSlots
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNilUnmarkedWeaklingSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #nilUnmarkedWeaklingSlots.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #nilUnmarkedWeaklingSlots.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNoCheckClassAtIndexSmoke [
  self testMethod: #noCheckClassAtIndex:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNoCheckClassAtIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #noCheckClassAtIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #noCheckClassAtIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNoCheckPushonObjStackSmoke [
  self testMethod: #noCheckPush:onObjStack:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNoCheckPushonObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #noCheckPush:onObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #noCheckPush:onObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'forwarding-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNoFixupFollowFieldofObjectSmoke [
  self testMethod: #noFixupFollowField:ofObject:
]

{ #category : #'forwarding-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNoFixupFollowFieldofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #noFixupFollowField:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #noFixupFollowField:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'forwarding-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNoInlineFollowForwardedSmoke [
  self testMethod: #noInlineFollowForwarded:
]

{ #category : #'forwarding-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNoInlineFollowForwardedStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #noInlineFollowForwarded:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #noInlineFollowForwarded:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNoInlineObjectAfterlimitSmoke [
  self testMethod: #noInlineObjectAfter:limit:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNoInlineObjectAfterlimitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #noInlineObjectAfter:limit:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #noInlineObjectAfter:limit:.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNoUnscannedEphemeronsSmoke [
  self testMethod: #noUnscannedEphemerons
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNoUnscannedEphemeronsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #noUnscannedEphemerons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #noUnscannedEphemerons.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNonIndexablePointerFormatSmoke [
  self testMethod: #nonIndexablePointerFormat
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNonIndexablePointerFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #nonIndexablePointerFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #nonIndexablePointerFormat.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumBitUnitsOfSmoke [
  self testMethod: #num64BitUnitsOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumBitUnitsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #num64BitUnitsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #num64BitUnitsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumBytesOfBytesSmoke [
  self testMethod: #numBytesOfBytes:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumBytesOfBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numBytesOfBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numBytesOfBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumBytesOfSmoke [
  self testMethod: #numBytesOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumBytesOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numBytesOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numBytesOf:.
  self assert: illiString equals: slangString
]

{ #category : #'object format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumFixedSlotsOfSmoke [
  self testMethod: #numFixedSlotsOf:
]

{ #category : #'object format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumFixedSlotsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numFixedSlotsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numFixedSlotsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumFreeListsSmoke [
  self testMethod: #numFreeLists
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumFreeListsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numFreeLists.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numFreeLists.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumPointerSlotsOfSmoke [
  self testMethod: #numPointerSlotsOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumPointerSlotsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numPointerSlotsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numPointerSlotsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSlotsForBytesSmoke [
  self testMethod: #numSlotsForBytes:
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSlotsForBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSlotsForBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSlotsForBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSlotsForShorteningtoIndexableSizeSmoke [
  self testMethod: #numSlotsForShortening:toIndexableSize:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSlotsForShorteningtoIndexableSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSlotsForShortening:toIndexableSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSlotsForShortening:toIndexableSize:.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSlotsFullShiftSmoke [
  self testMethod: #numSlotsFullShift
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSlotsFullShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSlotsFullShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSlotsFullShift.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSlotsHalfShiftSmoke [
  self testMethod: #numSlotsHalfShift
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSlotsHalfShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSlotsHalfShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSlotsHalfShift.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSlotsMaskSmoke [
  self testMethod: #numSlotsMask
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSlotsMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSlotsMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSlotsMask.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSlotsOfAnySmoke [
  self testMethod: #numSlotsOfAny:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSlotsOfAnyStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSlotsOfAny:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSlotsOfAny:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSlotsOfSmoke [
  self testMethod: #numSlotsOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSlotsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSlotsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSlotsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSmallIntegerBitsSmoke [
  self testMethod: #numSmallIntegerBits
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSmallIntegerBitsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSmallIntegerBits.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSmallIntegerBits.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSmallIntegerTagBitsSmoke [
  self testMethod: #numSmallIntegerTagBits
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSmallIntegerTagBitsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSmallIntegerTagBits.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSmallIntegerTagBits.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumStrongSlotsOfInephemeralSmoke [
  self testMethod: #numStrongSlotsOfInephemeral:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumStrongSlotsOfInephemeralStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numStrongSlotsOfInephemeral:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numStrongSlotsOfInephemeral:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumStrongSlotsOfWeaklingSmoke [
  self testMethod: #numStrongSlotsOfWeakling:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumStrongSlotsOfWeaklingStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numStrongSlotsOfWeakling:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numStrongSlotsOfWeakling:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumStrongSlotsOfformatephemeronInactiveIfSmoke [
  self testMethod: #numStrongSlotsOf:format:ephemeronInactiveIf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumStrongSlotsOfformatephemeronInactiveIfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numStrongSlotsOf:format:ephemeronInactiveIf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numStrongSlotsOf:format:ephemeronInactiveIf:.
  self assert: illiString equals: slangString
]

{ #category : #'scavenger-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSurvivorSpacesSmoke [
  self testMethod: #numSurvivorSpaces
]

{ #category : #'scavenger-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumSurvivorSpacesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numSurvivorSpaces.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numSurvivorSpaces.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumTagBitsSmoke [
  self testMethod: #numTagBits
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumTagBitsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numTagBits.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numTagBits.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testNumberOfForwardersSmoke [
  self testMethod: #numberOfForwarders
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testNumberOfForwardersStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #numberOfForwarders.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #numberOfForwarders.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testObjStackdoSmoke [
  self testMethod: #objStack:do:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testObjStackdoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objStack:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objStack:do:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testObjStackfromdoSmoke [
  self testMethod: #objStack:from:do:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testObjStackfromdoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objStack:from:do:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objStack:from:do:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testObjectAfterSmoke [
  self testMethod: #objectAfter:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testObjectAfterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objectAfter:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objectAfter:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testObjectAfterlimitSmoke [
  self testMethod: #objectAfter:limit:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testObjectAfterlimitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objectAfter:limit:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objectAfter:limit:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testObjectBeforeSmoke [
  self testMethod: #objectBefore:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testObjectBeforeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objectBefore:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objectBefore:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testObjectBytesForSlotsSmoke [
  self testMethod: #objectBytesForSlots:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testObjectBytesForSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objectBytesForSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objectBytesForSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testObjectStartingAtSmoke [
  self testMethod: #objectStartingAt:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testObjectStartingAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objectStartingAt:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objectStartingAt:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testObjectWithRawSlotsHasOverflowHeaderSmoke [
  self testMethod: #objectWithRawSlotsHasOverflowHeader:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testObjectWithRawSlotsHasOverflowHeaderStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objectWithRawSlotsHasOverflowHeader:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objectWithRawSlotsHasOverflowHeader:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testObjectsReachableFromRootsSmoke [
  self testMethod: #objectsReachableFromRoots:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testObjectsReachableFromRootsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #objectsReachableFromRoots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #objectsReachableFromRoots:.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testObsoleteDontUseThisFetchWordofObjectSmoke [
  self testMethod: #obsoleteDontUseThisFetchWord:ofObject:
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testObsoleteDontUseThisFetchWordofObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #obsoleteDontUseThisFetchWord:ofObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #obsoleteDontUseThisFetchWord:ofObject:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testOkayOopSmoke [
  self testMethod: #okayOop:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testOkayOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #okayOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #okayOop:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testOldRawNumSlotsOfSmoke [
  self testMethod: #oldRawNumSlotsOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testOldRawNumSlotsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #oldRawNumSlotsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #oldRawNumSlotsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'cog jit support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testOldSmallFloatTagSmoke [
  self testMethod: #oldSmallFloatTag
]

{ #category : #'cog jit support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testOldSmallFloatTagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #oldSmallFloatTag.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #oldSmallFloatTag.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testOldSpaceObjectAfterSmoke [
  self testMethod: #oldSpaceObjectAfter:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testOldSpaceObjectAfterStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #oldSpaceObjectAfter:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #oldSpaceObjectAfter:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testOldSpaceSizeSmoke [
  self testMethod: #oldSpaceSize
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testOldSpaceSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #oldSpaceSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #oldSpaceSize.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testOldSpaceStartSmoke [
  self testMethod: #oldSpaceStart
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testOldSpaceStartStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #oldSpaceStart.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #oldSpaceStart.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testOutOfPlaceBecomeandcopyHashFlagSmoke [
  self testMethod: #outOfPlaceBecome:and:copyHashFlag:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testOutOfPlaceBecomeandcopyHashFlagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #outOfPlaceBecome:and:copyHashFlag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #outOfPlaceBecome:and:copyHashFlag:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPastSpaceStartSmoke [
  self testMethod: #pastSpaceStart
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPastSpaceStartStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #pastSpaceStart.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #pastSpaceStart.
  self assert: illiString equals: slangString
]

{ #category : #'primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPinObjectSmoke [
  self testMethod: #pinObject:
]

{ #category : #'primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPinObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #pinObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #pinObject:.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPinnedBitShiftSmoke [
  self testMethod: #pinnedBitShift
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPinnedBitShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #pinnedBitShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #pinnedBitShift.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPopObjStackSmoke [
  self testMethod: #popObjStack:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPopObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #popObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #popObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPopRemappableOopSmoke [
  self testMethod: #popRemappableOop
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPopRemappableOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #popRemappableOop.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #popRemappableOop.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPositiveSmallFloatZeroSmoke [
  self testMethod: #positiveSmallFloatZero
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPositiveSmallFloatZeroStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #positiveSmallFloatZero.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #positiveSmallFloatZero.
  self assert: illiString equals: slangString
]

{ #category : #'store check-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPossibleRootStoreIntoSmoke [
  self testMethod: #possibleRootStoreInto:
]

{ #category : #'store check-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPossibleRootStoreIntoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #possibleRootStoreInto:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #possibleRootStoreInto:.
  self assert: illiString equals: slangString
]

{ #category : #'become implementation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPostBecomeScanClassTableSmoke [
  self testMethod: #postBecomeScanClassTable:
]

{ #category : #'become implementation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPostBecomeScanClassTableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #postBecomeScanClassTable:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #postBecomeScanClassTable:.
  self assert: illiString equals: slangString
]

{ #category : #'compaction-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrepareObjStackForPlanningCompactorSmoke [
  self testMethod: #prepareObjStackForPlanningCompactor:
]

{ #category : #'compaction-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrepareObjStackForPlanningCompactorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #prepareObjStackForPlanningCompactor:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #prepareObjStackForPlanningCompactor:.
  self assert: illiString equals: slangString
]

{ #category : #'compaction-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrepareObjStacksForPlanningCompactorSmoke [
  self testMethod: #prepareObjStacksForPlanningCompactor
]

{ #category : #'compaction-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrepareObjStacksForPlanningCompactorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #prepareObjStacksForPlanningCompactor.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #prepareObjStacksForPlanningCompactor.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrimitiveErrorTableSmoke [
  self testMethod: #primitiveErrorTable
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrimitiveErrorTableStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveErrorTable.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveErrorTable.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintActivationsOfSmoke [
  self testMethod: #printActivationsOf:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintActivationsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printActivationsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printActivationsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintBogonsSmoke [
  self testMethod: #printBogons
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintBogonsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printBogons.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printBogons.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintContextReferencesToSmoke [
  self testMethod: #printContextReferencesTo:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintContextReferencesToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printContextReferencesTo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printContextReferencesTo:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintEntitySmoke [
  self testMethod: #printEntity:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintEntityStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printEntity:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printEntity:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintForwardersSmoke [
  self testMethod: #printForwarders
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintForwardersStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printForwarders.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printForwarders.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintFreeChunkSmoke [
  self testMethod: #printFreeChunk:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintFreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printFreeChunk:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printFreeChunk:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintFreeChunkprintAsTreeNodeSmoke [
  self testMethod: #printFreeChunk:printAsTreeNode:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintFreeChunkprintAsTreeNodeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printFreeChunk:printAsTreeNode:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printFreeChunk:printAsTreeNode:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintFreeChunksSmoke [
  self testMethod: #printFreeChunks
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintFreeChunksStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printFreeChunks.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printFreeChunks.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintFreeListHeadsSmoke [
  self testMethod: #printFreeListHeads
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintFreeListHeadsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printFreeListHeads.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printFreeListHeads.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintFreeListSmoke [
  self testMethod: #printFreeList:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintFreeListStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printFreeList:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printFreeList:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintFreeTreeChunkSmoke [
  self testMethod: #printFreeTreeChunk:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintFreeTreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printFreeTreeChunk:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printFreeTreeChunk:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintFreeTreeSmoke [
  self testMethod: #printFreeTree
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintFreeTreeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printFreeTree.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printFreeTree.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintHeaderOfSmoke [
  self testMethod: #printHeaderOf:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintHeaderOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printHeaderOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printHeaderOf:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintHeaderTypeOfSmoke [
  self testMethod: #printHeaderTypeOf:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintHeaderTypeOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printHeaderTypeOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printHeaderTypeOf:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintInstancesOfSmoke [
  self testMethod: #printInstancesOf:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintInstancesOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printInstancesOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printInstancesOf:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintInstancesWithClassIndexSmoke [
  self testMethod: #printInstancesWithClassIndex:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintInstancesWithClassIndexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printInstancesWithClassIndex:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printInstancesWithClassIndex:.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintInvalidClassTableEntriesSmoke [
  self testMethod: #printInvalidClassTableEntries
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintInvalidClassTableEntriesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printInvalidClassTableEntries.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printInvalidClassTableEntries.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintInvalidClassTableHashesSmoke [
  self testMethod: #printInvalidClassTableHashes
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintInvalidClassTableHashesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printInvalidClassTableHashes.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printInvalidClassTableHashes.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintMarkedOopsSmoke [
  self testMethod: #printMarkedOops
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintMarkedOopsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printMarkedOops.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printMarkedOops.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintMethodImplementorsOfSmoke [
  self testMethod: #printMethodImplementorsOf:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintMethodImplementorsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printMethodImplementorsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printMethodImplementorsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintMethodReferencesToSmoke [
  self testMethod: #printMethodReferencesTo:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintMethodReferencesToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printMethodReferencesTo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printMethodReferencesTo:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintObjStackPagemyIndexpageTypeSmoke [
  self testMethod: #printObjStackPage:myIndex:pageType:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintObjStackPagemyIndexpageTypeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printObjStackPage:myIndex:pageType:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printObjStackPage:myIndex:pageType:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintObjStackPagemyIndextagSmoke [
  self testMethod: #printObjStackPage:myIndex:tag:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintObjStackPagemyIndextagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printObjStackPage:myIndex:tag:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printObjStackPage:myIndex:tag:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintObjStackSmoke [
  self testMethod: #printObjStack:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintObjectsFromtoSmoke [
  self testMethod: #printObjectsFrom:to:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintObjectsFromtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printObjectsFrom:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printObjectsFrom:to:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintObjectsWithHashSmoke [
  self testMethod: #printObjectsWithHash:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintObjectsWithHashStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printObjectsWithHash:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printObjectsWithHash:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintOopsExceptSmoke [
  self testMethod: #printOopsExcept:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintOopsExceptStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printOopsExcept:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printOopsExcept:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintOopsFromtoSmoke [
  self testMethod: #printOopsFrom:to:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintOopsFromtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printOopsFrom:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printOopsFrom:to:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintOopsSuchThatSmoke [
  self testMethod: #printOopsSuchThat:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintOopsSuchThatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printOopsSuchThat:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printOopsSuchThat:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintReferencesToSmoke [
  self testMethod: #printReferencesTo:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintReferencesToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printReferencesTo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printReferencesTo:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintUnmarkedOopsSmoke [
  self testMethod: #printUnmarkedOops
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPrintUnmarkedOopsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #printUnmarkedOops.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #printUnmarkedOops.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPurgeDuplicateClassTableEntriesForSmoke [
  self testMethod: #purgeDuplicateClassTableEntriesFor:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPurgeDuplicateClassTableEntriesForStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #purgeDuplicateClassTableEntriesFor:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #purgeDuplicateClassTableEntriesFor:.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPushOnUnscannedEphemeronsStackSmoke [
  self testMethod: #pushOnUnscannedEphemeronsStack:
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPushOnUnscannedEphemeronsStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #pushOnUnscannedEphemeronsStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #pushOnUnscannedEphemeronsStack:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPushRemappableOopSmoke [
  self testMethod: #pushRemappableOop:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPushRemappableOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #pushRemappableOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #pushRemappableOop:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testPushonObjStackSmoke [
  self testMethod: #push:onObjStack:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testPushonObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #push:onObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #push:onObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testQueueMournerSmoke [
  self testMethod: #queueMourner:
]

{ #category : #'weakness and ephemerality-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testQueueMournerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #queueMourner:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #queueMourner:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRawClassTagForClassSmoke [
  self testMethod: #rawClassTagForClass:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRawClassTagForClassStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rawClassTagForClass:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rawClassTagForClass:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRawHashBitsOfSmoke [
  self testMethod: #rawHashBitsOf:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRawHashBitsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rawHashBitsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rawHashBitsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRawNumSlotsOfSmoke [
  self testMethod: #rawNumSlotsOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRawNumSlotsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rawNumSlotsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rawNumSlotsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRawNumSlotsOfputSmoke [
  self testMethod: #rawNumSlotsOf:put:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRawNumSlotsOfputStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rawNumSlotsOf:put:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rawNumSlotsOf:put:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRawOverflowSlotsOfSmoke [
  self testMethod: #rawOverflowSlotsOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRawOverflowSlotsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rawOverflowSlotsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rawOverflowSlotsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRawOverflowSlotsOfputSmoke [
  self testMethod: #rawOverflowSlotsOf:put:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRawOverflowSlotsOfputStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rawOverflowSlotsOf:put:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rawOverflowSlotsOf:put:.
  self assert: illiString equals: slangString
]

{ #category : #'compaction-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRelocateObjStackForPlanningCompactorSmoke [
  self testMethod: #relocateObjStackForPlanningCompactor:
]

{ #category : #'compaction-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRelocateObjStackForPlanningCompactorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #relocateObjStackForPlanningCompactor:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #relocateObjStackForPlanningCompactor:.
  self assert: illiString equals: slangString
]

{ #category : #'compaction-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRelocateObjStacksForPlanningCompactorSmoke [
  self testMethod: #relocateObjStacksForPlanningCompactor
]

{ #category : #'compaction-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRelocateObjStacksForPlanningCompactorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #relocateObjStacksForPlanningCompactor.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #relocateObjStacksForPlanningCompactor.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRemapBufferCountSmoke [
  self testMethod: #remapBufferCount
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRemapBufferCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #remapBufferCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #remapBufferCount.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRemapBufferSmoke [
  self testMethod: #remapBuffer
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRemapBufferStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #remapBuffer.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #remapBuffer.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRemapSmoke [
  self testMethod: #remap:
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRemapStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #remap:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #remap:.
  self assert: illiString equals: slangString
]

{ #category : #'header format-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRememberedBitShiftSmoke [
  self testMethod: #rememberedBitShift
]

{ #category : #'header format-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRememberedBitShiftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rememberedBitShift.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rememberedBitShift.
  self assert: illiString equals: slangString
]

{ #category : #'scavenger-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRememberedSetObjSmoke [
  self testMethod: #rememberedSetObj
]

{ #category : #'scavenger-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRememberedSetObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rememberedSetObj.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rememberedSetObj.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRemoveGCRootSmoke [
  self testMethod: #removeGCRoot:
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRemoveGCRootStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #removeGCRoot:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #removeGCRoot:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation accounting-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testResetAllocationAccountingAfterGCSmoke [
  self testMethod: #resetAllocationAccountingAfterGC
]

{ #category : #'allocation accounting-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testResetAllocationAccountingAfterGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #resetAllocationAccountingAfterGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #resetAllocationAccountingAfterGC.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testResetFreeListHeadsSmoke [
  self testMethod: #resetFreeListHeads
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testResetFreeListHeadsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #resetFreeListHeads.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #resetFreeListHeads.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRestoreObjectsInsavedHashesSmoke [
  self testMethod: #restoreObjectsIn:savedHashes:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRestoreObjectsInsavedHashesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #restoreObjectsIn:savedHashes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #restoreObjectsIn:savedHashes:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRestoreObjectsInupTosavedFirstFieldsSmoke [
  self testMethod: #restoreObjectsIn:upTo:savedFirstFields:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRestoreObjectsInupTosavedFirstFieldsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #restoreObjectsIn:upTo:savedFirstFields:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #restoreObjectsIn:upTo:savedFirstFields:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testReturnrestoringObjectsInsavedFirstFieldsandsavedHashesSmoke [
  self testMethod: #return:restoringObjectsIn:savedFirstFields:and:savedHashes:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testReturnrestoringObjectsInsavedFirstFieldsandsavedHashesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #return:restoringObjectsIn:savedFirstFields:and:savedHashes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #return:restoringObjectsIn:savedFirstFields:and:savedHashes:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testReturnrestoringObjectsInupTosavedFirstFieldsSmoke [
  self testMethod: #return:restoringObjectsIn:upTo:savedFirstFields:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testReturnrestoringObjectsInupTosavedFirstFieldsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #return:restoringObjectsIn:upTo:savedFirstFields:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #return:restoringObjectsIn:upTo:savedFirstFields:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testReverseBytesFromtoSmoke [
  self testMethod: #reverseBytesFrom:to:
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testReverseBytesFromtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #reverseBytesFrom:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #reverseBytesFrom:to:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testReverseBytesInBitWordsFromtoSmoke [
  self testMethod: #reverseBytesIn32BitWordsFrom:to:
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testReverseBytesInBitWordsFromtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #reverseBytesIn32BitWordsFrom:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #reverseBytesIn32BitWordsFrom:to:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testReverseBytesInBitWordsInSmoke [
  self testMethod: #reverseBytesIn32BitWordsIn:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testReverseBytesInBitWordsInStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #reverseBytesIn32BitWordsIn:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #reverseBytesIn32BitWordsIn:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testReverseBytesInMemorySmoke [
  self testMethod: #reverseBytesInMemory
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testReverseBytesInMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #reverseBytesInMemory.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #reverseBytesInMemory.
  self assert: illiString equals: slangString
]

{ #category : #'scavenger-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRootTableCapacitySmoke [
  self testMethod: #rootTableCapacity
]

{ #category : #'scavenger-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRootTableCapacityStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rootTableCapacity.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rootTableCapacity.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRootTableCountSmoke [
  self testMethod: #rootTableCount
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRootTableCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rootTableCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rootTableCount.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRotateLeftSmoke [
  self testMethod: #rotateLeft:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRotateLeftStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rotateLeft:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rotateLeft:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRotateRightSmoke [
  self testMethod: #rotateRight:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRotateRightStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rotateRight:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rotateRight:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRotatedFloatBitsOfSmoke [
  self testMethod: #rotatedFloatBitsOf:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRotatedFloatBitsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rotatedFloatBitsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rotatedFloatBitsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRoundBytesToAllocationUnitSmoke [
  self testMethod: #roundBytesToAllocationUnit:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRoundBytesToAllocationUnitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #roundBytesToAllocationUnit:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #roundBytesToAllocationUnit:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRoundUpHeapSizeSmoke [
  self testMethod: #roundUpHeapSize:
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRoundUpHeapSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #roundUpHeapSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #roundUpHeapSize:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRtRefCountOfSmoke [
  self testMethod: #rtRefCountOf:
]

{ #category : #'gc - scavenging-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRtRefCountOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rtRefCountOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rtRefCountOf:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRtRefCountOfputSmoke [
  self testMethod: #rtRefCountOf:put:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRtRefCountOfputStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #rtRefCountOf:put:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #rtRefCountOf:put:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRunLeakCheckerForFreeSpaceSmoke [
  self testMethod: #runLeakCheckerForFreeSpace:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRunLeakCheckerForFreeSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #runLeakCheckerForFreeSpace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #runLeakCheckerForFreeSpace:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRunLeakCheckerForSmoke [
  self testMethod: #runLeakCheckerFor:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRunLeakCheckerForStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #runLeakCheckerFor:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #runLeakCheckerFor:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testRunLeakCheckerForexcludeUnmarkedObjsclassIndicesShouldBeValidSmoke [
  self testMethod: #runLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testRunLeakCheckerForexcludeUnmarkedObjsclassIndicesShouldBeValidStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #runLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #runLeakCheckerFor:excludeUnmarkedObjs:classIndicesShouldBeValid:.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSafePrintStringOfSmoke [
  self testMethod: #safePrintStringOf:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSafePrintStringOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #safePrintStringOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #safePrintStringOf:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSavedOutHashFillValueSmoke [
  self testMethod: #savedOutHashFillValue
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSavedOutHashFillValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #savedOutHashFillValue.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #savedOutHashFillValue.
  self assert: illiString equals: slangString
]

{ #category : #'testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testScavengeInProgressSmoke [
  self testMethod: #scavengeInProgress
]

{ #category : #'testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testScavengeInProgressStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #scavengeInProgress.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #scavengeInProgress.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testScavengeThresholdAsExtentSmoke [
  self testMethod: #scavengeThresholdAsExtent
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testScavengeThresholdAsExtentStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #scavengeThresholdAsExtent.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #scavengeThresholdAsExtent.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testScavengeThresholdSmoke [
  self testMethod: #scavengeThreshold
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testScavengeThresholdStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #scavengeThreshold.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #scavengeThreshold.
  self assert: illiString equals: slangString
]

{ #category : #'scavenger-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testScavengerDenominatorSmoke [
  self testMethod: #scavengerDenominator
]

{ #category : #'scavenger-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testScavengerDenominatorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #scavengerDenominator.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #scavengerDenominator.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testScavengingGCSmoke [
  self testMethod: #scavengingGC
]

{ #category : #'gc - scavenging-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testScavengingGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #scavengingGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #scavengingGC.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testScavengingGCTenuringIfSmoke [
  self testMethod: #scavengingGCTenuringIf:
]

{ #category : #'gc - scavenging-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testScavengingGCTenuringIfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #scavengingGCTenuringIf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #scavengingGCTenuringIf:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testScheduleScavengeSmoke [
  self testMethod: #scheduleScavenge
]

{ #category : #'gc - scavenging-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testScheduleScavengeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #scheduleScavenge.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #scheduleScavenge.
  self assert: illiString equals: slangString
]

{ #category : #'class table puns-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSegmentBridgePunSmoke [
  self testMethod: #segmentBridgePun
]

{ #category : #'class table puns-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSegmentBridgePunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #segmentBridgePun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #segmentBridgePun.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSegmentManagerSmoke [
  self testMethod: #segmentManager
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSegmentManagerStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #segmentManager.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #segmentManager.
  self assert: illiString equals: slangString
]

{ #category : #'spur bootstrap-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetCheckForLeaksSmoke [
  self testMethod: #setCheckForLeaks:
]

{ #category : #'spur bootstrap-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetCheckForLeaksStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setCheckForLeaks:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setCheckForLeaks:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetClassIndexOftoSmoke [
  self testMethod: #setClassIndexOf:to:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetClassIndexOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setClassIndexOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setClassIndexOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation accounting-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetCurrentAllocatedBytesToSmoke [
  self testMethod: #setCurrentAllocatedBytesTo:
]

{ #category : #'allocation accounting-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetCurrentAllocatedBytesToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setCurrentAllocatedBytesTo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setCurrentAllocatedBytesTo:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetEndOfMemorySmoke [
  self testMethod: #setEndOfMemory:
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetEndOfMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setEndOfMemory:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setEndOfMemory:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetFormatOftoSmoke [
  self testMethod: #setFormatOf:to:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetFormatOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setFormatOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setFormatOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetFreeOldSpaceStartSmoke [
  self testMethod: #setFreeOldSpaceStart:
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetFreeOldSpaceStartStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setFreeOldSpaceStart:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setFreeOldSpaceStart:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetFreeSmoke [
  self testMethod: #setFree:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetFreeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setFree:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setFree:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetHashBitsOftoSmoke [
  self testMethod: #setHashBitsOf:to:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetHashBitsOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setHashBitsOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setHashBitsOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetHeapBasememoryLimitendOfMemorySmoke [
  self testMethod: #setHeapBase:memoryLimit:endOfMemory:
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetHeapBasememoryLimitendOfMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setHeapBase:memoryLimit:endOfMemory:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setHeapBase:memoryLimit:endOfMemory:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetHeapGrowthToSizeGCRatioSmoke [
  self testMethod: #setHeapGrowthToSizeGCRatio:
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetHeapGrowthToSizeGCRatioStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setHeapGrowthToSizeGCRatio:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setHeapGrowthToSizeGCRatio:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation accounting-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetHeapSizeAtPreviousGCSmoke [
  self testMethod: #setHeapSizeAtPreviousGC
]

{ #category : #'allocation accounting-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetHeapSizeAtPreviousGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setHeapSizeAtPreviousGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setHeapSizeAtPreviousGC.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetHiddenRootsObjSmoke [
  self testMethod: #setHiddenRootsObj:
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetHiddenRootsObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setHiddenRootsObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setHiddenRootsObj:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetIsGreyOftoSmoke [
  self testMethod: #setIsGreyOf:to:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetIsGreyOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setIsGreyOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setIsGreyOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetIsImmutableOftoSmoke [
  self testMethod: #setIsImmutableOf:to:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetIsImmutableOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setIsImmutableOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setIsImmutableOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetIsMarkedOftoSmoke [
  self testMethod: #setIsMarkedOf:to:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetIsMarkedOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setIsMarkedOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setIsMarkedOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetIsPinnedOftoSmoke [
  self testMethod: #setIsPinnedOf:to:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetIsPinnedOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setIsPinnedOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setIsPinnedOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetIsRememberedOftoSmoke [
  self testMethod: #setIsRememberedOf:to:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetIsRememberedOftoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setIsRememberedOf:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setIsRememberedOf:to:.
  self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetLastSegmentSmoke [
  self testMethod: #setLastSegment:
]

{ #category : #'growing/shrinking memory-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetLastSegmentStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setLastSegment:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setLastSegment:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetMaxOldSpaceSizeSmoke [
  self testMethod: #setMaxOldSpaceSize:
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetMaxOldSpaceSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setMaxOldSpaceSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setMaxOldSpaceSize:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetNextFreeChunkOfwithValuechunkBytesSmoke [
  self testMethod: #setNextFreeChunkOf:withValue:chunkBytes:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetNextFreeChunkOfwithValuechunkBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setNextFreeChunkOf:withValue:chunkBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setNextFreeChunkOf:withValue:chunkBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetNextFreeChunkOfwithValueisLilliputianSizeSmoke [
  self testMethod: #setNextFreeChunkOf:withValue:isLilliputianSize:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetNextFreeChunkOfwithValueisLilliputianSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setNextFreeChunkOf:withValue:isLilliputianSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setNextFreeChunkOf:withValue:isLilliputianSize:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetObjectFreeSmoke [
  self testMethod: #setObjectFree:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetObjectFreeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #setObjectFree:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #setObjectFree:.
  self assert: illiString equals: slangString
]

{ #category : #'header access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSetclassIndexToformatToSmoke [
  self testMethod: #set:classIndexTo:formatTo:
]

{ #category : #'header access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSetclassIndexToformatToStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #set:classIndexTo:formatTo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #set:classIndexTo:formatTo:.
  self assert: illiString equals: slangString
]

{ #category : #'word size-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testShiftForAllocationUnitSmoke [
  self testMethod: #shiftForAllocationUnit
]

{ #category : #'word size-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testShiftForAllocationUnitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shiftForAllocationUnit.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shiftForAllocationUnit.
  self assert: illiString equals: slangString
]

{ #category : #'word size-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testShiftForWordSmoke [
  self testMethod: #shiftForWord
]

{ #category : #'word size-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testShiftForWordStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shiftForWord.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shiftForWord.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testShortPrintObjectsFromtoSmoke [
  self testMethod: #shortPrintObjectsFrom:to:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testShortPrintObjectsFromtoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shortPrintObjectsFrom:to:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shortPrintObjectsFrom:to:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testShortentoIndexableSizeSmoke [
  self testMethod: #shorten:toIndexableSize:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testShortentoIndexableSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shorten:toIndexableSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shorten:toIndexableSize:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testShouldBreakForLookupIngivenSmoke [
  self testMethod: #shouldBreakForLookupIn:given:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testShouldBreakForLookupIngivenStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shouldBreakForLookupIn:given:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shouldBreakForLookupIn:given:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testShouldRemapOopSmoke [
  self testMethod: #shouldRemapOop:
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testShouldRemapOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shouldRemapOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shouldRemapOop:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testShrinkThresholdSmoke [
  self testMethod: #shrinkThreshold
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testShrinkThresholdStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shrinkThreshold.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shrinkThreshold.
  self assert: illiString equals: slangString
]

{ #category : #'gc - incremental-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testShutDownIncrementalGCSmoke [
  self testMethod: #shutDownIncrementalGC:
]

{ #category : #'gc - incremental-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testShutDownIncrementalGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #shutDownIncrementalGC:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #shutDownIncrementalGC:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSignalLowSpaceSmoke [
  self testMethod: #signalLowSpace
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSignalLowSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #signalLowSpace.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #signalLowSpace.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSixtyFourBitIndexableFormatSmoke [
  self testMethod: #sixtyFourBitIndexableFormat
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSixtyFourBitIndexableFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sixtyFourBitIndexableFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sixtyFourBitIndexableFormat.
  self assert: illiString equals: slangString
]

{ #category : #'class table puns-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSixtyFourBitLongsClassIndexPunSmoke [
  self testMethod: #sixtyFourBitLongsClassIndexPun
]

{ #category : #'class table puns-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSixtyFourBitLongsClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sixtyFourBitLongsClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sixtyFourBitLongsClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSizeBitsOfSafeSmoke [
  self testMethod: #sizeBitsOfSafe:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSizeBitsOfSafeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sizeBitsOfSafe:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sizeBitsOfSafe:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSizeBitsOfSmoke [
  self testMethod: #sizeBitsOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSizeBitsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sizeBitsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sizeBitsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSizeOfFreeSmoke [
  self testMethod: #sizeOfFree:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSizeOfFreeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sizeOfFree:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sizeOfFree:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSizeOfLargestFreeChunkSmoke [
  self testMethod: #sizeOfLargestFreeChunk
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSizeOfLargestFreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sizeOfLargestFreeChunk.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sizeOfLargestFreeChunk.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSizeOfObjStackSmoke [
  self testMethod: #sizeOfObjStack:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSizeOfObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sizeOfObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sizeOfObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'testing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSlidingCompactionInProgressSmoke [
  self testMethod: #slidingCompactionInProgress
]

{ #category : #'testing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSlidingCompactionInProgressStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #slidingCompactionInProgress.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #slidingCompactionInProgress.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSlidingCompactionRemapObjSmoke [
  self testMethod: #slidingCompactionRemapObj:
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSlidingCompactionRemapObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #slidingCompactionRemapObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #slidingCompactionRemapObj:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSlidingCompactionShouldRemapObjSmoke [
  self testMethod: #slidingCompactionShouldRemapObj:
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSlidingCompactionShouldRemapObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #slidingCompactionShouldRemapObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #slidingCompactionShouldRemapObj:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSlotSizeOfSmoke [
  self testMethod: #slotSizeOf:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSlotSizeOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #slotSizeOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #slotSizeOf:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatBitsOfSmoke [
  self testMethod: #smallFloatBitsOf:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatBitsOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatBitsOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatBitsOf:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatExponentBitsSmoke [
  self testMethod: #smallFloatExponentBits
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatExponentBitsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatExponentBits.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatExponentBits.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatExponentOffsetSmoke [
  self testMethod: #smallFloatExponentOffset
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatExponentOffsetStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatExponentOffset.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatExponentOffset.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatMantissaBitsSmoke [
  self testMethod: #smallFloatMantissaBits
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatMantissaBitsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatMantissaBits.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatMantissaBits.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatObjectOfSmoke [
  self testMethod: #smallFloatObjectOf:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatObjectOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatObjectOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatObjectOf:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatSignBitSmoke [
  self testMethod: #smallFloatSignBit
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatSignBitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatSignBit.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatSignBit.
  self assert: illiString equals: slangString
]

{ #category : #'cog jit support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatTagSmoke [
  self testMethod: #smallFloatTag
]

{ #category : #'cog jit support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatTagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatTag.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatTag.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatValueOfSmoke [
  self testMethod: #smallFloatValueOf:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallFloatValueOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallFloatValueOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallFloatValueOf:.
  self assert: illiString equals: slangString
]

{ #category : #'cog jit support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallIntegerTagSmoke [
  self testMethod: #smallIntegerTag
]

{ #category : #'cog jit support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallIntegerTagStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallIntegerTag.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallIntegerTag.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallObjectBytesForSlotsSmoke [
  self testMethod: #smallObjectBytesForSlots:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSmallObjectBytesForSlotsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #smallObjectBytesForSlots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #smallObjectBytesForSlots:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSpecialObjectsOopSmoke [
  self testMethod: #specialObjectsOop:
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSpecialObjectsOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #specialObjectsOop:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #specialObjectsOop:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSplObjSmoke [
  self testMethod: #splObj:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSplObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #splObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #splObj:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSplObjputSmoke [
  self testMethod: #splObj:put:
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSplObjputStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #splObj:put:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #splObj:put:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStackValueofObjStackSmoke [
  self testMethod: #stackValue:ofObjStack:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStackValueofObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #stackValue:ofObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #stackValue:ofObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStartOfMemorySmoke [
  self testMethod: #startOfMemory
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStartOfMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #startOfMemory.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #startOfMemory.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStartOfObjectSmoke [
  self testMethod: #startOfObject:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStartOfObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #startOfObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #startOfObject:.
  self assert: illiString equals: slangString
]

{ #category : #'object enumeration-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStartOfObjectgivenSmoke [
  self testMethod: #startOfObject:given:
]

{ #category : #'object enumeration-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStartOfObjectgivenStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #startOfObject:given:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #startOfObject:given:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatCompMoveCountSmoke [
  self testMethod: #statCompMoveCount
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatCompMoveCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statCompMoveCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statCompMoveCount.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatCompactPassCountSmoke [
  self testMethod: #statCompactPassCount:
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatCompactPassCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statCompactPassCount:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statCompactPassCount:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatCompactionUsecsSmoke [
  self testMethod: #statCompactionUsecs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatCompactionUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statCompactionUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statCompactionUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatFGCDeltaUsecsSmoke [
  self testMethod: #statFGCDeltaUsecs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatFGCDeltaUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statFGCDeltaUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statFGCDeltaUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatFullGCUsecsSmoke [
  self testMethod: #statFullGCUsecs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatFullGCUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statFullGCUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statFullGCUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatFullGCsSmoke [
  self testMethod: #statFullGCs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatFullGCsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statFullGCs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statFullGCs.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatGCEndUsecsSmoke [
  self testMethod: #statGCEndUsecs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatGCEndUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statGCEndUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statGCEndUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatGrowMemorySmoke [
  self testMethod: #statGrowMemory
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatGrowMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statGrowMemory.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statGrowMemory.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatIGCDeltaUsecsSmoke [
  self testMethod: #statIGCDeltaUsecs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatIGCDeltaUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statIGCDeltaUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statIGCDeltaUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatIncrGCUsecsSmoke [
  self testMethod: #statIncrGCUsecs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatIncrGCUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statIncrGCUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statIncrGCUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatIncrGCsSmoke [
  self testMethod: #statIncrGCs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatIncrGCsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statIncrGCs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statIncrGCs.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatMarkCountSmoke [
  self testMethod: #statMarkCount
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatMarkCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statMarkCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statMarkCount.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatMarkUsecsSmoke [
  self testMethod: #statMarkUsecs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatMarkUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statMarkUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statMarkUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatMaxAllocSegmentTimeSmoke [
  self testMethod: #statMaxAllocSegmentTime:
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatMaxAllocSegmentTimeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statMaxAllocSegmentTime:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statMaxAllocSegmentTime:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatMkFwdCountSmoke [
  self testMethod: #statMkFwdCount
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatMkFwdCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statMkFwdCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statMkFwdCount.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatNumGCsSmoke [
  self testMethod: #statNumGCs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatNumGCsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statNumGCs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statNumGCs.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatRootTableCountSmoke [
  self testMethod: #statRootTableCount
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatRootTableCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statRootTableCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statRootTableCount.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatRootTableOverflowsSmoke [
  self testMethod: #statRootTableOverflows
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatRootTableOverflowsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statRootTableOverflows.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statRootTableOverflows.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatSGCDeltaUsecsSmoke [
  self testMethod: #statSGCDeltaUsecs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatSGCDeltaUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statSGCDeltaUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statSGCDeltaUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatScavengeGCUsecsSmoke [
  self testMethod: #statScavengeGCUsecs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatScavengeGCUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statScavengeGCUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statScavengeGCUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatScavengesSmoke [
  self testMethod: #statScavenges
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatScavengesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statScavenges.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statScavenges.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatShrinkMemorySmoke [
  self testMethod: #statShrinkMemory
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatShrinkMemoryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statShrinkMemory.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statShrinkMemory.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatSpecialMarkCountSmoke [
  self testMethod: #statSpecialMarkCount
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatSpecialMarkCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statSpecialMarkCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statSpecialMarkCount.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatSweepCountSmoke [
  self testMethod: #statSweepCount
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatSweepCountStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statSweepCount.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statSweepCount.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStatSweepUsecsSmoke [
  self testMethod: #statSweepUsecs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStatSweepUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #statSweepUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #statSweepUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStoreByteofObjectwithValueSmoke [
  self testMethod: #storeByte:ofObject:withValue:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStoreByteofObjectwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storeByte:ofObject:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storeByte:ofObject:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStoreCheckBoundarySmoke [
  self testMethod: #storeCheckBoundary
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStoreCheckBoundaryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storeCheckBoundary.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storeCheckBoundary.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStoreImageSegmentIntooutPointersrootsSmoke [
  self testMethod: #storeImageSegmentInto:outPointers:roots:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStoreImageSegmentIntooutPointersrootsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storeImageSegmentInto:outPointers:roots:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storeImageSegmentInto:outPointers:roots:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStoreLongofObjectwithValueSmoke [
  self testMethod: #storeLong32:ofObject:withValue:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStoreLongofObjectwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storeLong32:ofObject:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storeLong32:ofObject:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerImmutabilityCheckofObjectwithValueSmoke [
  self testMethod: #storePointerImmutabilityCheck:ofObject:withValue:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerImmutabilityCheckofObjectwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointerImmutabilityCheck:ofObject:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointerImmutabilityCheck:ofObject:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'heap management-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerNoAssertofFreeChunkwithValueSmoke [
  self testMethod: #storePointerNoAssert:ofFreeChunk:withValue:
]

{ #category : #'heap management-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerNoAssertofFreeChunkwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointerNoAssert:ofFreeChunk:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointerNoAssert:ofFreeChunk:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerUncheckedofMaybeForwardedObjectwithValueSmoke [
  self testMethod: #storePointerUnchecked:ofMaybeForwardedObject:withValue:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerUncheckedofMaybeForwardedObjectwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointerUnchecked:ofMaybeForwardedObject:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointerUnchecked:ofMaybeForwardedObject:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerUncheckedofObjectwithValueSmoke [
  self testMethod: #storePointerUnchecked:ofObject:withValue:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerUncheckedofObjectwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointerUnchecked:ofObject:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointerUnchecked:ofObject:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'heap management-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerofForwarderwithValueSmoke [
  self testMethod: #storePointer:ofForwarder:withValue:
]

{ #category : #'heap management-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerofForwarderwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointer:ofForwarder:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointer:ofForwarder:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'heap management-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerofFreeChunkwithUncheckedValueSmoke [
  self testMethod: #storePointer:ofFreeChunk:withUncheckedValue:
]

{ #category : #'heap management-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerofFreeChunkwithUncheckedValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointer:ofFreeChunk:withUncheckedValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointer:ofFreeChunk:withUncheckedValue:.
  self assert: illiString equals: slangString
]

{ #category : #'heap management-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerofFreeChunkwithValueSmoke [
  self testMethod: #storePointer:ofFreeChunk:withValue:
]

{ #category : #'heap management-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerofFreeChunkwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointer:ofFreeChunk:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointer:ofFreeChunk:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerofObjStackwithValueSmoke [
  self testMethod: #storePointer:ofObjStack:withValue:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerofObjStackwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointer:ofObjStack:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointer:ofObjStack:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerofObjectwithValueSmoke [
  self testMethod: #storePointer:ofObject:withValue:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStorePointerofObjectwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storePointer:ofObject:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storePointer:ofObject:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'object access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStoreShortofObjectwithValueSmoke [
  self testMethod: #storeShort16:ofObject:withValue:
]

{ #category : #'object access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStoreShortofObjectwithValueStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #storeShort16:ofObject:withValue:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #storeShort16:ofObject:withValue:.
  self assert: illiString equals: slangString
]

{ #category : #'primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testStringForCStringSmoke [
  self testMethod: #stringForCString:
]

{ #category : #'primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testStringForCStringStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #stringForCString:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #stringForCString:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenging-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSufficientSpaceAfterGCSmoke [
  self testMethod: #sufficientSpaceAfterGC:
]

{ #category : #'gc - scavenging-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSufficientSpaceAfterGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sufficientSpaceAfterGC:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sufficientSpaceAfterGC:.
  self assert: illiString equals: slangString
]

{ #category : #'allocation-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSufficientSpaceToInstantiateindexableSizeSmoke [
  self testMethod: #sufficientSpaceToInstantiate:indexableSize:
]

{ #category : #'allocation-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSufficientSpaceToInstantiateindexableSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #sufficientSpaceToInstantiate:indexableSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #sufficientSpaceToInstantiate:indexableSize:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSwizzleFieldsOfFreeChunkSmoke [
  self testMethod: #swizzleFieldsOfFreeChunk:
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSwizzleFieldsOfFreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #swizzleFieldsOfFreeChunk:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #swizzleFieldsOfFreeChunk:.
  self assert: illiString equals: slangString
]

{ #category : #'snapshot-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSwizzleFieldsOfObjectSmoke [
  self testMethod: #swizzleFieldsOfObject:
]

{ #category : #'snapshot-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSwizzleFieldsOfObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #swizzleFieldsOfObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #swizzleFieldsOfObject:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testSwizzleObjStackAtSmoke [
  self testMethod: #swizzleObjStackAt:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testSwizzleObjStackAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #swizzleObjStackAt:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #swizzleObjStackAt:.
  self assert: illiString equals: slangString
]

{ #category : #'word size-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testTagMaskSmoke [
  self testMethod: #tagMask
]

{ #category : #'word size-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testTagMaskStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #tagMask.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #tagMask.
  self assert: illiString equals: slangString
]

{ #category : #'plugin support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testTenuringIncrementalGCSmoke [
  self testMethod: #tenuringIncrementalGC
]

{ #category : #'plugin support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testTenuringIncrementalGCStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #tenuringIncrementalGC.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #tenuringIncrementalGC.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testTenuringThresholdSmoke [
  self testMethod: #tenuringThreshold
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testTenuringThresholdStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #tenuringThreshold.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #tenuringThreshold.
  self assert: illiString equals: slangString
]

{ #category : #'class table puns-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testThirtyTwoBitLongsClassIndexPunSmoke [
  self testMethod: #thirtyTwoBitLongsClassIndexPun
]

{ #category : #'class table puns-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testThirtyTwoBitLongsClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #thirtyTwoBitLongsClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #thirtyTwoBitLongsClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testTopOfObjStackSmoke [
  self testMethod: #topOfObjStack:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testTopOfObjStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #topOfObjStack:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #topOfObjStack:.
  self assert: illiString equals: slangString
]

{ #category : #'interpreter access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testTopRemappableOopSmoke [
  self testMethod: #topRemappableOop
]

{ #category : #'interpreter access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testTopRemappableOopStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #topRemappableOop.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #topRemappableOop.
  self assert: illiString equals: slangString
]

{ #category : #'indexing primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testTotalByteSizeOfSmoke [
  self testMethod: #totalByteSizeOf:
]

{ #category : #'indexing primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testTotalByteSizeOfStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #totalByteSizeOf:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #totalByteSizeOf:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testTotalFreeListBytesSmoke [
  self testMethod: #totalFreeListBytes
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testTotalFreeListBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #totalFreeListBytes.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #totalFreeListBytes.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testTotalFreeOldSpaceSmoke [
  self testMethod: #totalFreeOldSpace:
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testTotalFreeOldSpaceStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #totalFreeOldSpace:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #totalFreeOldSpace:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testTotalMemorySizeSmoke [
  self testMethod: #totalMemorySize
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testTotalMemorySizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #totalMemorySize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #totalMemorySize.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testTraceImmediatelySlotLimitSmoke [
  self testMethod: #traceImmediatelySlotLimit
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testTraceImmediatelySlotLimitStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #traceImmediatelySlotLimit.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #traceImmediatelySlotLimit.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testTrueObjectSmoke [
  self testMethod: #trueObject
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testTrueObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #trueObject.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #trueObject.
  self assert: illiString equals: slangString
]

{ #category : #'primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUniqueIndexallInstancesIntolimitresultsIntoSmoke [
  self testMethod: #uniqueIndex:allInstancesInto:limit:resultsInto:
]

{ #category : #'primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUniqueIndexallInstancesIntolimitresultsIntoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #uniqueIndex:allInstancesInto:limit:resultsInto:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #uniqueIndex:allInstancesInto:limit:resultsInto:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUnlinkFreeChunkatIndexchunkBytesSmoke [
  self testMethod: #unlinkFreeChunk:atIndex:chunkBytes:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUnlinkFreeChunkatIndexchunkBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unlinkFreeChunk:atIndex:chunkBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unlinkFreeChunk:atIndex:chunkBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUnlinkFreeChunkatIndexisLilliputianSizeSmoke [
  self testMethod: #unlinkFreeChunk:atIndex:isLilliputianSize:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUnlinkFreeChunkatIndexisLilliputianSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unlinkFreeChunk:atIndex:isLilliputianSize:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unlinkFreeChunk:atIndex:isLilliputianSize:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUnlinkFreeChunkchunkBytesSmoke [
  self testMethod: #unlinkFreeChunk:chunkBytes:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUnlinkFreeChunkchunkBytesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unlinkFreeChunk:chunkBytes:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unlinkFreeChunk:chunkBytes:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUnlinkLilliputianChunkindexSmoke [
  self testMethod: #unlinkLilliputianChunk:index:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUnlinkLilliputianChunkindexStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unlinkLilliputianChunk:index:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unlinkLilliputianChunk:index:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUnlinkSolitaryFreeTreeNodeSmoke [
  self testMethod: #unlinkSolitaryFreeTreeNode:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUnlinkSolitaryFreeTreeNodeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unlinkSolitaryFreeTreeNode:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unlinkSolitaryFreeTreeNode:.
  self assert: illiString equals: slangString
]

{ #category : #'primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUnmarkAllObjectsSmoke [
  self testMethod: #unmarkAllObjects
]

{ #category : #'primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUnmarkAllObjectsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unmarkAllObjects.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unmarkAllObjects.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUnmarkObjectsInSmoke [
  self testMethod: #unmarkObjectsIn:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUnmarkObjectsInStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unmarkObjectsIn:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unmarkObjectsIn:.
  self assert: illiString equals: slangString
]

{ #category : #'compaction-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUnmarkSurvivingObjectsForCompactSmoke [
  self testMethod: #unmarkSurvivingObjectsForCompact
]

{ #category : #'compaction-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUnmarkSurvivingObjectsForCompactStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unmarkSurvivingObjectsForCompact.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unmarkSurvivingObjectsForCompact.
  self assert: illiString equals: slangString
]

{ #category : #'primitive support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUnpinObjectSmoke [
  self testMethod: #unpinObject:
]

{ #category : #'primitive support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUnpinObjectStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #unpinObject:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #unpinObject:.
  self assert: illiString equals: slangString
]

{ #category : #'initialization-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUpdateFreeListsSmoke [
  self testMethod: #updateFreeLists
]

{ #category : #'initialization-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUpdateFreeListsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #updateFreeLists.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #updateFreeLists.
  self assert: illiString equals: slangString
]

{ #category : #'gc - global-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUpdateFullGCStatsSmoke [
  self testMethod: #updateFullGCStats
]

{ #category : #'gc - global-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUpdateFullGCStatsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #updateFullGCStats.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #updateFullGCStats.
  self assert: illiString equals: slangString
]

{ #category : #'initialization-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUpdateListStartingAtSmoke [
  self testMethod: #updateListStartingAt:
]

{ #category : #'initialization-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUpdateListStartingAtStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #updateListStartingAt:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #updateListStartingAt:.
  self assert: illiString equals: slangString
]

{ #category : #'image segment in/out-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUpdatePostScavengeSmoke [
  self testMethod: #updatePostScavenge:
]

{ #category : #'image segment in/out-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUpdatePostScavengeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #updatePostScavenge:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #updatePostScavenge:.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUpdateRootOfObjStackAtwithSmoke [
  self testMethod: #updateRootOfObjStackAt:with:
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUpdateRootOfObjStackAtwithStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #updateRootOfObjStackAt:with:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #updateRootOfObjStackAt:with:.
  self assert: illiString equals: slangString
]

{ #category : #'accessing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testUpdateSweepEndUsecsSmoke [
  self testMethod: #updateSweepEndUsecs
]

{ #category : #'accessing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testUpdateSweepEndUsecsStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #updateSweepEndUsecs.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #updateSweepEndUsecs.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testValidClassTableHashesSmoke [
  self testMethod: #validClassTableHashes
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testValidClassTableHashesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #validClassTableHashes.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #validClassTableHashes.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testValidClassTableRootPagesSmoke [
  self testMethod: #validClassTableRootPages
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testValidClassTableRootPagesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #validClassTableRootPages.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #validClassTableRootPages.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testValidFreeTreeChunkSmoke [
  self testMethod: #validFreeTreeChunk:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testValidFreeTreeChunkStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #validFreeTreeChunk:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #validFreeTreeChunk:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testValidFreeTreeChunkparentSmoke [
  self testMethod: #validFreeTreeChunk:parent:
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testValidFreeTreeChunkparentStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #validFreeTreeChunk:parent:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #validFreeTreeChunk:parent:.
  self assert: illiString equals: slangString
]

{ #category : #'free space-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testValidFreeTreeSmoke [
  self testMethod: #validFreeTree
]

{ #category : #'free space-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testValidFreeTreeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #validFreeTree.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #validFreeTree.
  self assert: illiString equals: slangString
]

{ #category : #'obj stacks-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testValidObjStacksSmoke [
  self testMethod: #validObjStacks
]

{ #category : #'obj stacks-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testValidObjStacksStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #validObjStacks.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #validObjStacks.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testVanillaRemapObjSmoke [
  self testMethod: #vanillaRemapObj:
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testVanillaRemapObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #vanillaRemapObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #vanillaRemapObj:.
  self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testVanillaShouldRemapObjSmoke [
  self testMethod: #vanillaShouldRemapObj:
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testVanillaShouldRemapObjStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #vanillaShouldRemapObj:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #vanillaShouldRemapObj:.
  self assert: illiString equals: slangString
]

{ #category : #'memory access-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testVmEndiannessSmoke [
  self testMethod: #vmEndianness
]

{ #category : #'memory access-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testVmEndiannessStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #vmEndianness.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #vmEndianness.
  self assert: illiString equals: slangString
]

{ #category : #'class table puns-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testWeakArrayClassIndexPunSmoke [
  self testMethod: #weakArrayClassIndexPun
]

{ #category : #'class table puns-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testWeakArrayClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #weakArrayClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #weakArrayClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testWeakArrayFormatSmoke [
  self testMethod: #weakArrayFormat
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testWeakArrayFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #weakArrayFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #weakArrayFormat.
  self assert: illiString equals: slangString
]

{ #category : #'spur bootstrap-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testWeaklingStackSmoke [
  self testMethod: #weaklingStack
]

{ #category : #'spur bootstrap-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testWeaklingStackStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #weaklingStack.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #weaklingStack.
  self assert: illiString equals: slangString
]

{ #category : #'debug printing-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testWhereIsMaybeHeapThingSmoke [
  self testMethod: #whereIsMaybeHeapThing:
]

{ #category : #'debug printing-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testWhereIsMaybeHeapThingStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #whereIsMaybeHeapThing:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #whereIsMaybeHeapThing:.
  self assert: illiString equals: slangString
]

{ #category : #'debug support-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testWithSimulatorFetchPointerMovedAsideDoSmoke [
  self testMethod: #withSimulatorFetchPointerMovedAsideDo:
]

{ #category : #'debug support-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testWithSimulatorFetchPointerMovedAsideDoStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #withSimulatorFetchPointerMovedAsideDo:.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #withSimulatorFetchPointerMovedAsideDo:.
  self assert: illiString equals: slangString
]

{ #category : #'header formats-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testWordIndexableFormatSmoke [
  self testMethod: #wordIndexableFormat
]

{ #category : #'header formats-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testWordIndexableFormatStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #wordIndexableFormat.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #wordIndexableFormat.
  self assert: illiString equals: slangString
]

{ #category : #'class table-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testWordSizeClassIndexPunSmoke [
  self testMethod: #wordSizeClassIndexPun
]

{ #category : #'class table-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testWordSizeClassIndexPunStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #wordSizeClassIndexPun.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #wordSizeClassIndexPun.
  self assert: illiString equals: slangString
]

{ #category : #'word size-smoke-test' }
Spur64BitMemoryManagerTranslationTest >> testWordSizeSmoke [
  self testMethod: #wordSize
]

{ #category : #'word size-equaliy-test' }
Spur64BitMemoryManagerTranslationTest >> testWordSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #wordSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #wordSize.
  self assert: illiString equals: slangString
]
