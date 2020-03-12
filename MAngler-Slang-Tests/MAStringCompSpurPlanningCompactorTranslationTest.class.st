Class {
	#name : #MAStringCompSpurPlanningCompactorTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MAStringCompSpurPlanningCompactorTranslationTest >> setUp [
	super setUp.
	testedClass := SpurPlanningCompactor
]

{ #category : #'compaction - api' }
MAStringCompSpurPlanningCompactorTranslationTest >> testCompactStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #compact.
	illiAST := self generateIllicium: #compact.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #compaction }
MAStringCompSpurPlanningCompactorTranslationTest >> testCopyAndUnmarkMobileObjectsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyAndUnmarkMobileObjects.
	illiAST := self generateIllicium: #copyAndUnmarkMobileObjects.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #compaction }
MAStringCompSpurPlanningCompactorTranslationTest >> testCopyAndUnmarkStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyAndUnmark:.
	illiAST := self generateIllicium: #copyAndUnmark:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #private }
MAStringCompSpurPlanningCompactorTranslationTest >> testFreeFromupTonextObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #freeFrom:upTo:nextObject:.
	illiAST := self generateIllicium: #freeFrom:upTo:nextObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #compaction }
MAStringCompSpurPlanningCompactorTranslationTest >> testInitializeScanCheckingForFullyCompactedHeapStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #initializeScanCheckingForFullyCompactedHeap.
	illiAST := self
		generateIllicium: #initializeScanCheckingForFullyCompactedHeap.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #private }
MAStringCompSpurPlanningCompactorTranslationTest >> testIsMobileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isMobile:.
	illiAST := self generateIllicium: #isMobile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #private }
MAStringCompSpurPlanningCompactorTranslationTest >> testIsPostMobileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isPostMobile:.
	illiAST := self generateIllicium: #isPostMobile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #compaction }
MAStringCompSpurPlanningCompactorTranslationTest >> testPlanCompactSavingForwardersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #planCompactSavingForwarders.
	illiAST := self generateIllicium: #planCompactSavingForwarders.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #compaction }
MAStringCompSpurPlanningCompactorTranslationTest >> testReinitializeScanFromStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #reinitializeScanFrom:.
	illiAST := self generateIllicium: #reinitializeScanFrom:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact' }
MAStringCompSpurPlanningCompactorTranslationTest >> testRemapObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #remapObj:.
	illiAST := self generateIllicium: #remapObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'space management' }
MAStringCompSpurPlanningCompactorTranslationTest >> testSavedFirstFieldsSpaceWasAllocatedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #savedFirstFieldsSpaceWasAllocated.
	illiAST := self generateIllicium: #savedFirstFieldsSpaceWasAllocated.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #compaction }
MAStringCompSpurPlanningCompactorTranslationTest >> testScanForFirstFreeAndFirstMobileObjectFromStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #scanForFirstFreeAndFirstMobileObjectFrom:.
	illiAST := self
		generateIllicium: #scanForFirstFreeAndFirstMobileObjectFrom:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'gc - scavenge/compact' }
MAStringCompSpurPlanningCompactorTranslationTest >> testShouldRemapObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shouldRemapObj:.
	illiAST := self generateIllicium: #shouldRemapObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #compaction }
MAStringCompSpurPlanningCompactorTranslationTest >> testUnmarkObjectsFromFirstFreeObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #unmarkObjectsFromFirstFreeObject.
	illiAST := self generateIllicium: #unmarkObjectsFromFirstFreeObject.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #compaction }
MAStringCompSpurPlanningCompactorTranslationTest >> testUpdatePointersInsavedFirstFieldPointerStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #updatePointersIn:savedFirstFieldPointer:.
	illiAST := self
		generateIllicium: #updatePointersIn:savedFirstFieldPointer:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #compaction }
MAStringCompSpurPlanningCompactorTranslationTest >> testUpdatePointersStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #updatePointers.
	illiAST := self generateIllicium: #updatePointers.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'space management' }
MAStringCompSpurPlanningCompactorTranslationTest >> testUseSegmentForSavedFirstFieldsSpaceStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #useSegmentForSavedFirstFieldsSpace:.
	illiAST := self
		generateIllicium: #useSegmentForSavedFirstFieldsSpace:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #private }
MAStringCompSpurPlanningCompactorTranslationTest >> testValidRelocationPlanInPassStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #validRelocationPlanInPass:.
	illiAST := self generateIllicium: #validRelocationPlanInPass:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurPlanningCompactorTranslationTest >> translator [
	^ MASpurPlanningCompactorRessource current translator
]
