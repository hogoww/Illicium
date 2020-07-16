Class {
	#name : #MAStringCompSpurSegmentManagerTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-GeneratedTests'
}

{ #category : #running }
MAStringCompSpurSegmentManagerTranslationTest >> setUp [
	super setUp.
	testedClass := SpurSegmentManager
]

{ #category : #'growing/shrinking memory' }
MAStringCompSpurSegmentManagerTranslationTest >> testAddSegmentOfSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addSegmentOfSize:.
	illiAST := self generateIllicium: #addSegmentOfSize:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #snapshot }
MAStringCompSpurSegmentManagerTranslationTest >> testAdjustSegmentSwizzlesByStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #adjustSegmentSwizzlesBy:.
	illiAST := self generateIllicium: #adjustSegmentSwizzlesBy:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompSpurSegmentManagerTranslationTest >> testAllBridgesMarkedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allBridgesMarked.
	illiAST := self generateIllicium: #allBridgesMarked.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #private }
MAStringCompSpurSegmentManagerTranslationTest >> testAllocateOrExtendSegmentInfosStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allocateOrExtendSegmentInfos.
	illiAST := self generateIllicium: #allocateOrExtendSegmentInfos.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #bridges }
MAStringCompSpurSegmentManagerTranslationTest >> testBridgeAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #bridgeAt:.
	illiAST := self generateIllicium: #bridgeAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #bridges }
MAStringCompSpurSegmentManagerTranslationTest >> testBridgeForStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #bridgeFor:.
	illiAST := self generateIllicium: #bridgeFor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory' }
MAStringCompSpurSegmentManagerTranslationTest >> testBridgeFromtoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #bridgeFrom:to:.
	illiAST := self generateIllicium: #bridgeFrom:to:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompSpurSegmentManagerTranslationTest >> testCheckSegmentsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #checkSegments.
	illiAST := self generateIllicium: #checkSegments.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #snapshot }
MAStringCompSpurSegmentManagerTranslationTest >> testCollapseSegmentsPostSwizzleStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #collapseSegmentsPostSwizzle.
	illiAST := self generateIllicium: #collapseSegmentsPostSwizzle.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory' }
MAStringCompSpurSegmentManagerTranslationTest >> testFirstGapOfSizeAtLeastStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #firstGapOfSizeAtLeast:.
	illiAST := self generateIllicium: #firstGapOfSizeAtLeast:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory' }
MAStringCompSpurSegmentManagerTranslationTest >> testIsEmptySegmentStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isEmptySegment:.
	illiAST := self generateIllicium: #isEmptySegment:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #testing }
MAStringCompSpurSegmentManagerTranslationTest >> testIsInSegmentsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isInSegments:.
	illiAST := self generateIllicium: #isInSegments:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #testing }
MAStringCompSpurSegmentManagerTranslationTest >> testIsValidSegmentBridgeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isValidSegmentBridge:.
	illiAST := self generateIllicium: #isValidSegmentBridge:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #snapshot }
MAStringCompSpurSegmentManagerTranslationTest >> testNextNonEmptySegmentAfterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #nextNonEmptySegmentAfter:.
	illiAST := self generateIllicium: #nextNonEmptySegmentAfter:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurSegmentManagerTranslationTest >> testNumSegmentsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numSegments.
	illiAST := self generateIllicium: #numSegments.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #snapshot }
MAStringCompSpurSegmentManagerTranslationTest >> testPostSnapshotStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #postSnapshot.
	illiAST := self generateIllicium: #postSnapshot.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #snapshot }
MAStringCompSpurSegmentManagerTranslationTest >> testPrepareForSnapshotStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #prepareForSnapshot.
	illiAST := self generateIllicium: #prepareForSnapshot.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #snapshot }
MAStringCompSpurSegmentManagerTranslationTest >> testReadHeapFromImageFiledataBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #readHeapFromImageFile:dataBytes:.
	illiAST := self generateIllicium: #readHeapFromImageFile:dataBytes:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurSegmentManagerTranslationTest >> testSegmentContainingObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #segmentContainingObj:.
	illiAST := self generateIllicium: #segmentContainingObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory' }
MAStringCompSpurSegmentManagerTranslationTest >> testSegmentOverlapStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #segmentOverlap.
	illiAST := self generateIllicium: #segmentOverlap.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurSegmentManagerTranslationTest >> testSegmentsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #segments.
	illiAST := self generateIllicium: #segments.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'growing/shrinking memory' }
MAStringCompSpurSegmentManagerTranslationTest >> testShrinkObjectMemoryStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shrinkObjectMemory:.
	illiAST := self generateIllicium: #shrinkObjectMemory:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #pinning }
MAStringCompSpurSegmentManagerTranslationTest >> testSomeSegmentContainsPinnedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #someSegmentContainsPinned.
	illiAST := self generateIllicium: #someSegmentContainsPinned.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #snapshot }
MAStringCompSpurSegmentManagerTranslationTest >> testSwizzleObjStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #swizzleObj:.
	illiAST := self generateIllicium: #swizzleObj:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurSegmentManagerTranslationTest >> testTotalBytesInSegmentsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #totalBytesInSegments.
	illiAST := self generateIllicium: #totalBytesInSegments.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #snapshot }
MAStringCompSpurSegmentManagerTranslationTest >> testWriteImageSegmentsToFileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #writeImageSegmentsToFile:.
	illiAST := self generateIllicium: #writeImageSegmentsToFile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #snapshot }
MAStringCompSpurSegmentManagerTranslationTest >> testWriteSegmentnextSegmenttoFileStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #writeSegment:nextSegment:toFile:.
	illiAST := self generateIllicium: #writeSegment:nextSegment:toFile:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurSegmentManagerTranslationTest >> translator [
	^ MASpurSegmentManagerRessource current translator
]
