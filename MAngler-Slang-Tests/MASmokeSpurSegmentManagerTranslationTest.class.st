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
	| illiAST illiString |
	illiAST := self
		generateIllicium: #computeTotalHeapSizeIncludingBridges.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpurSegmentManagerTranslationTest >> testFindEmptySegNearestInSizeToStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #findEmptySegNearestInSizeTo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurSegmentManagerTranslationTest >> testFirstSegmentBytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #firstSegmentBytes.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpurSegmentManagerTranslationTest >> testFirstSegmentSizeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #firstSegmentSize:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpurSegmentManagerTranslationTest >> testIndexOfSegmentStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #indexOfSegment:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'spur bootstrap' }
MASmokeSpurSegmentManagerTranslationTest >> testInitForBootstrapStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initForBootstrap.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpurSegmentManagerTranslationTest >> testInsertSegmentForStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #insertSegmentFor:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurSegmentManagerTranslationTest >> testLastBridgeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lastBridge.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurSegmentManagerTranslationTest >> testLastSegmentStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #lastSegment.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpurSegmentManagerTranslationTest >> testManagerStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #manager:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #pinning }
MASmokeSpurSegmentManagerTranslationTest >> testNotePinnedStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #notePinned:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #pinning }
MASmokeSpurSegmentManagerTranslationTest >> testPrepareForGlobalSweepStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #prepareForGlobalSweep.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #private }
MASmokeSpurSegmentManagerTranslationTest >> testReadHeapFromatdataBytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #readHeapFrom:at:dataBytes:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'growing/shrinking memory' }
MASmokeSpurSegmentManagerTranslationTest >> testRemoveSegmentStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #removeSegment:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #snapshot }
MASmokeSpurSegmentManagerTranslationTest >> testTotalBytesInNonEmptySegmentsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #totalBytesInNonEmptySegments.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurSegmentManagerTranslationTest >> testTotalOldSpaceCapacityStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #totalOldSpaceCapacity.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurSegmentManagerTranslationTest >> translator [
	^ MASpurSegmentManagerRessource current translator
]
