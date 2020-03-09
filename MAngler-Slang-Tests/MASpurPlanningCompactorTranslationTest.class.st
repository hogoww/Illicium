Class {
	#name : #MASpurPlanningCompactorTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MASpurPlanningCompactorTranslationTest >> setUp [
	super setUp.
	testedClass := SpurPlanningCompactor
]

{ #category : #'compaction - api-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testCompactStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #compact.
	illiAST := self generateIllicium: #compact.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testCopyAndUnmarkMobileObjectsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyAndUnmarkMobileObjects.
	illiAST := self generateIllicium: #copyAndUnmarkMobileObjects.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testCopyAndUnmarkStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyAndUnmark:.
	illiAST := self generateIllicium: #copyAndUnmark:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'private-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testFreeFromupTonextObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeFrom:upTo:nextObject:.
	illiAST := self generateIllicium: #freeFrom:upTo:nextObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testInitializeScanCheckingForFullyCompactedHeapStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #initializeScanCheckingForFullyCompactedHeap.
	illiAST := self
		generateIllicium: #initializeScanCheckingForFullyCompactedHeap.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'private-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testIsMobileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isMobile:.
	illiAST := self generateIllicium: #isMobile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'private-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testIsPostMobileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isPostMobile:.
	illiAST := self generateIllicium: #isPostMobile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testPlanCompactSavingForwardersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #planCompactSavingForwarders.
	illiAST := self generateIllicium: #planCompactSavingForwarders.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testReinitializeScanFromStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #reinitializeScanFrom:.
	illiAST := self generateIllicium: #reinitializeScanFrom:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testRemapObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #remapObj:.
	illiAST := self generateIllicium: #remapObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'space management-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testSavedFirstFieldsSpaceWasAllocatedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #savedFirstFieldsSpaceWasAllocated.
	illiAST := self generateIllicium: #savedFirstFieldsSpaceWasAllocated.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testScanForFirstFreeAndFirstMobileObjectFromStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #scanForFirstFreeAndFirstMobileObjectFrom:.
	illiAST := self
		generateIllicium: #scanForFirstFreeAndFirstMobileObjectFrom:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testShouldRemapObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shouldRemapObj:.
	illiAST := self generateIllicium: #shouldRemapObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testUnmarkObjectsFromFirstFreeObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #unmarkObjectsFromFirstFreeObject.
	illiAST := self generateIllicium: #unmarkObjectsFromFirstFreeObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testUpdatePointersInsavedFirstFieldPointerStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #updatePointersIn:savedFirstFieldPointer:.
	illiAST := self
		generateIllicium: #updatePointersIn:savedFirstFieldPointer:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'compaction-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testUpdatePointersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #updatePointers.
	illiAST := self generateIllicium: #updatePointers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'space management-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testUseSegmentForSavedFirstFieldsSpaceStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #useSegmentForSavedFirstFieldsSpace:.
	illiAST := self
		generateIllicium: #useSegmentForSavedFirstFieldsSpace:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'private-equaliy-test' }
MASpurPlanningCompactorTranslationTest >> testValidRelocationPlanInPassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validRelocationPlanInPass:.
	illiAST := self generateIllicium: #validRelocationPlanInPass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MASpurPlanningCompactorTranslationTest >> translator [
	^ MASpurPlanningCompactorRessource current translator
]
