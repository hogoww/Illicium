Class {
	#name : #MASmokeSpurSegmentManagerTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MASmokeSpurSegmentManagerTranslationTest >> setUp [
	super setUp.
	testedClass := SpurSegmentManager
]

{ #category : #'simulation only' }
MASmokeSpurSegmentManagerTranslationTest >> testComputeTotalHeapSizeIncludingBridgesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #computeTotalHeapSizeIncludingBridges.
	self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpurSegmentManagerTranslationTest >> testFindEmptySegNearestInSizeToStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #findEmptySegNearestInSizeTo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurSegmentManagerTranslationTest >> testFirstSegmentBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #firstSegmentBytes.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpurSegmentManagerTranslationTest >> testFirstSegmentSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #firstSegmentSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpurSegmentManagerTranslationTest >> testIndexOfSegmentStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #indexOfSegment:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpurSegmentManagerTranslationTest >> testInitForBootstrapStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initForBootstrap.
	self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpurSegmentManagerTranslationTest >> testInsertSegmentForStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #insertSegmentFor:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurSegmentManagerTranslationTest >> testLastBridgeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lastBridge.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurSegmentManagerTranslationTest >> testLastSegmentStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #lastSegment.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpurSegmentManagerTranslationTest >> testManagerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #manager:.
	self prettyPrintIllicium: illiAST
]

{ #category : #pinning }
MASmokeSpurSegmentManagerTranslationTest >> testNotePinnedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #notePinned:.
	self prettyPrintIllicium: illiAST
]

{ #category : #pinning }
MASmokeSpurSegmentManagerTranslationTest >> testPrepareForGlobalSweepStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #prepareForGlobalSweep.
	self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurSegmentManagerTranslationTest >> testReadHeapFromatdataBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #readHeapFrom:at:dataBytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpurSegmentManagerTranslationTest >> testRemoveSegmentStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #removeSegment:.
	self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurSegmentManagerTranslationTest >> testTotalBytesInNonEmptySegmentsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #totalBytesInNonEmptySegments.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurSegmentManagerTranslationTest >> testTotalOldSpaceCapacityStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #totalOldSpaceCapacity.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurSegmentManagerTranslationTest >> translator [
	^ MASpurSegmentManagerRessource current translator
]
