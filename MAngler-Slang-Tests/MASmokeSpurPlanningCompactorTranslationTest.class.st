Class {
	#name : #MASmokeSpurPlanningCompactorTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MASmokeSpurPlanningCompactorTranslationTest >> setUp [
	super setUp.
	testedClass := SpurPlanningCompactor
]

{ #category : #'compaction - api' }
MASmokeSpurPlanningCompactorTranslationTest >> testBiasForGCStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #biasForGC.
	self prettyPrintIllicium: illiAST
]

{ #category : #'compaction - api' }
MASmokeSpurPlanningCompactorTranslationTest >> testBiasForSnapshotStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #biasForSnapshot.
	self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testCheckStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #check:.
	self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testCoalesceFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #coalesceFrom:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testCopyAndUnmarkObjecttobytesfirstFieldStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #copyAndUnmarkObject:to:bytes:firstField:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testEndCompactionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #endCompaction.
	self prettyPrintIllicium: illiAST
]

{ #category : #'space management' }
MASmokeSpurPlanningCompactorTranslationTest >> testFindHighestSuitableFreeBlockStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #findHighestSuitableFreeBlock:.
	self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testForwardMobileObjecttosavedFirstFieldPtrStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #forwardMobileObject:to:savedFirstFieldPtr:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testInitializeCompactionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeCompaction.
	self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testLogPhaseStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #logPhase:.
	self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testNumPointerSlotsWhileCompactingOfwithFormatsavedFirstFieldPointerStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #numPointerSlotsWhileCompactingOf:withFormat:savedFirstFieldPointer:.
	self prettyPrintIllicium: illiAST
]

{ #category : #api }
MASmokeSpurPlanningCompactorTranslationTest >> testPostSwizzleActionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #postSwizzleAction.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurPlanningCompactorTranslationTest >> testPrintTheBogonsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printTheBogons:.
	self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testRecordMovementOftosavedFirstFieldPtrStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #recordMovementOf:to:savedFirstFieldPtr:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'space management' }
MASmokeSpurPlanningCompactorTranslationTest >> testReleaseSavedFirstFieldsSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #releaseSavedFirstFieldsSpace.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testRelocateObjectsInHeapEntityfromtoStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #relocateObjectsInHeapEntity:from:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testRepinRememberedSetStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #repinRememberedSet.
	self prettyPrintIllicium: illiAST
]

{ #category : #'space management' }
MASmokeSpurPlanningCompactorTranslationTest >> testSavedFirstFieldsSpaceInFreeChunkStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #savedFirstFieldsSpaceInFreeChunk.
	self prettyPrintIllicium: illiAST
]

{ #category : #'space management' }
MASmokeSpurPlanningCompactorTranslationTest >> testSelectSavedFirstFieldsSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #selectSavedFirstFieldsSpace.
	self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testThereAreObjectsToMoveStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #thereAreObjectsToMove.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUnmarkInitialImmobileObjectsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unmarkInitialImmobileObjects.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUnmarkObjectsInFullyCompactedHeapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unmarkObjectsInFullyCompactedHeap.
	self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testUnmarkPinnedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unmarkPinned:.
	self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testUnpinRememberedSetStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #unpinRememberedSet.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUpdatePointersInInitialImmobileObjectsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #updatePointersInInitialImmobileObjects.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUpdatePointersInManagerHeapEntitiesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #updatePointersInManagerHeapEntities.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUpdatePointersInMobileObjectsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updatePointersInMobileObjects.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUpdatePointersInObjectsOverflowingSavedFirstFieldsSpaceStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #updatePointersInObjectsOverflowingSavedFirstFieldsSpace.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUpdatePointersInStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updatePointersIn:.
	self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUpdatePointersInSurvivingObjectsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #updatePointersInSurvivingObjects.
	self prettyPrintIllicium: illiAST
]

{ #category : #'space management' }
MASmokeSpurPlanningCompactorTranslationTest >> testUpdateSavedFirstFieldsSpaceIfNecessaryStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #updateSavedFirstFieldsSpaceIfNecessary.
	self prettyPrintIllicium: illiAST
]

{ #category : #'space management' }
MASmokeSpurPlanningCompactorTranslationTest >> testUseEdenForSavedFirstFieldsSpaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #useEdenForSavedFirstFieldsSpace.
	self prettyPrintIllicium: illiAST
]

{ #category : #'space management' }
MASmokeSpurPlanningCompactorTranslationTest >> testUseFreeChunkForSavedFirstFieldsSpaceStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #useFreeChunkForSavedFirstFieldsSpace:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurPlanningCompactorTranslationTest >> translator [
	^ MASpurPlanningCompactorRessource current translator
]
