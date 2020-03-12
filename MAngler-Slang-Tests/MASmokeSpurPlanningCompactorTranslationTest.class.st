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
	| illiAST illiString |
	illiAST := self generateIllicium: #biasForGC.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'compaction - api' }
MASmokeSpurPlanningCompactorTranslationTest >> testBiasForSnapshotStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #biasForSnapshot.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testCheckStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #check:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testCoalesceFromStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #coalesceFrom:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testCopyAndUnmarkObjecttobytesfirstFieldStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #copyAndUnmarkObject:to:bytes:firstField:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testEndCompactionStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #endCompaction.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'space management' }
MASmokeSpurPlanningCompactorTranslationTest >> testFindHighestSuitableFreeBlockStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #findHighestSuitableFreeBlock:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testForwardMobileObjecttosavedFirstFieldPtrStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #forwardMobileObject:to:savedFirstFieldPtr:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testInitializeCompactionStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initializeCompaction.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testLogPhaseStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #logPhase:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testNumPointerSlotsWhileCompactingOfwithFormatsavedFirstFieldPointerStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #numPointerSlotsWhileCompactingOf:withFormat:savedFirstFieldPointer:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #api }
MASmokeSpurPlanningCompactorTranslationTest >> testPostSwizzleActionStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #postSwizzleAction.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurPlanningCompactorTranslationTest >> testPrintTheBogonsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printTheBogons:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testRecordMovementOftosavedFirstFieldPtrStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #recordMovementOf:to:savedFirstFieldPtr:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'space management' }
MASmokeSpurPlanningCompactorTranslationTest >> testReleaseSavedFirstFieldsSpaceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #releaseSavedFirstFieldsSpace.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testRelocateObjectsInHeapEntityfromtoStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #relocateObjectsInHeapEntity:from:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testRepinRememberedSetStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #repinRememberedSet.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'space management' }
MASmokeSpurPlanningCompactorTranslationTest >> testSavedFirstFieldsSpaceInFreeChunkStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #savedFirstFieldsSpaceInFreeChunk.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'space management' }
MASmokeSpurPlanningCompactorTranslationTest >> testSelectSavedFirstFieldsSpaceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #selectSavedFirstFieldsSpace.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testThereAreObjectsToMoveStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #thereAreObjectsToMove.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUnmarkInitialImmobileObjectsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unmarkInitialImmobileObjects.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUnmarkObjectsInFullyCompactedHeapStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unmarkObjectsInFullyCompactedHeap.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testUnmarkPinnedStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unmarkPinned:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurPlanningCompactorTranslationTest >> testUnpinRememberedSetStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #unpinRememberedSet.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUpdatePointersInInitialImmobileObjectsStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #updatePointersInInitialImmobileObjects.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUpdatePointersInManagerHeapEntitiesStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #updatePointersInManagerHeapEntities.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUpdatePointersInMobileObjectsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #updatePointersInMobileObjects.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUpdatePointersInObjectsOverflowingSavedFirstFieldsSpaceStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #updatePointersInObjectsOverflowingSavedFirstFieldsSpace.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUpdatePointersInStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #updatePointersIn:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #compaction }
MASmokeSpurPlanningCompactorTranslationTest >> testUpdatePointersInSurvivingObjectsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #updatePointersInSurvivingObjects.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'space management' }
MASmokeSpurPlanningCompactorTranslationTest >> testUpdateSavedFirstFieldsSpaceIfNecessaryStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #updateSavedFirstFieldsSpaceIfNecessary.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'space management' }
MASmokeSpurPlanningCompactorTranslationTest >> testUseEdenForSavedFirstFieldsSpaceStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #useEdenForSavedFirstFieldsSpace.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'space management' }
MASmokeSpurPlanningCompactorTranslationTest >> testUseFreeChunkForSavedFirstFieldsSpaceStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #useFreeChunkForSavedFirstFieldsSpace:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurPlanningCompactorTranslationTest >> translator [
	^ MASpurPlanningCompactorRessource current translator
]
