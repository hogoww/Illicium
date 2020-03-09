Class {
	#name : #MASpurSegmentManagerTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MASpurSegmentManagerTranslationTest >> setUp [
	super setUp.
	testedClass := SpurSegmentManager
]

{ #category : #'growing/shrinking memory-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testAddSegmentOfSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addSegmentOfSize:.
	illiAST := self generateIllicium: #addSegmentOfSize:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testAdjustSegmentSwizzlesByStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #adjustSegmentSwizzlesBy:.
	illiAST := self generateIllicium: #adjustSegmentSwizzlesBy:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testAllBridgesMarkedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allBridgesMarked.
	illiAST := self generateIllicium: #allBridgesMarked.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'private-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testAllocateOrExtendSegmentInfosStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allocateOrExtendSegmentInfos.
	illiAST := self generateIllicium: #allocateOrExtendSegmentInfos.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'bridges-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testBridgeAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #bridgeAt:.
	illiAST := self generateIllicium: #bridgeAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'bridges-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testBridgeForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #bridgeFor:.
	illiAST := self generateIllicium: #bridgeFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testBridgeFromtoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #bridgeFrom:to:.
	illiAST := self generateIllicium: #bridgeFrom:to:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testCheckSegmentsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkSegments.
	illiAST := self generateIllicium: #checkSegments.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testCollapseSegmentsPostSwizzleStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #collapseSegmentsPostSwizzle.
	illiAST := self generateIllicium: #collapseSegmentsPostSwizzle.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testFirstGapOfSizeAtLeastStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #firstGapOfSizeAtLeast:.
	illiAST := self generateIllicium: #firstGapOfSizeAtLeast:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testIsEmptySegmentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isEmptySegment:.
	illiAST := self generateIllicium: #isEmptySegment:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'testing-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testIsInSegmentsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isInSegments:.
	illiAST := self generateIllicium: #isInSegments:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'testing-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testIsValidSegmentBridgeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isValidSegmentBridge:.
	illiAST := self generateIllicium: #isValidSegmentBridge:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testNextNonEmptySegmentAfterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #nextNonEmptySegmentAfter:.
	illiAST := self generateIllicium: #nextNonEmptySegmentAfter:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testPostSnapshotStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #postSnapshot.
	illiAST := self generateIllicium: #postSnapshot.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testPrepareForSnapshotStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #prepareForSnapshot.
	illiAST := self generateIllicium: #prepareForSnapshot.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testReadHeapFromImageFiledataBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #readHeapFromImageFile:dataBytes:.
	illiAST := self generateIllicium: #readHeapFromImageFile:dataBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testSegmentContainingObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #segmentContainingObj:.
	illiAST := self generateIllicium: #segmentContainingObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testSegmentOverlapStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #segmentOverlap.
	illiAST := self generateIllicium: #segmentOverlap.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testShrinkObjectMemoryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shrinkObjectMemory:.
	illiAST := self generateIllicium: #shrinkObjectMemory:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'pinning-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testSomeSegmentContainsPinnedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #someSegmentContainsPinned.
	illiAST := self generateIllicium: #someSegmentContainsPinned.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testSwizzleObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #swizzleObj:.
	illiAST := self generateIllicium: #swizzleObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testTotalBytesInSegmentsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #totalBytesInSegments.
	illiAST := self generateIllicium: #totalBytesInSegments.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testWriteImageSegmentsToFileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #writeImageSegmentsToFile:.
	illiAST := self generateIllicium: #writeImageSegmentsToFile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'snapshot-equaliy-test' }
MASpurSegmentManagerTranslationTest >> testWriteSegmentnextSegmenttoFileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #writeSegment:nextSegment:toFile:.
	illiAST := self generateIllicium: #writeSegment:nextSegment:toFile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MASpurSegmentManagerTranslationTest >> translator [
	^ MASpurSegmentManagerRessource current translator
]
