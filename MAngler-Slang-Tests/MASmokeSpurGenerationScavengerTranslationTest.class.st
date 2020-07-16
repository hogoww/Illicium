Class {
	#name : #MASmokeSpurGenerationScavengerTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-GeneratedTests'
}

{ #category : #running }
MASmokeSpurGenerationScavengerTranslationTest >> setUp [
	super setUp.
	testedClass := SpurGenerationScavenger
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testCoInterpreterStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #coInterpreter:.
	self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurGenerationScavengerTranslationTest >> testComputeTenuringThresholdStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #computeTenuringThreshold.
	self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurGenerationScavengerTranslationTest >> testCopyToFutureSpacebytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #copyToFutureSpace:bytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testCorpseForCorpseOffsetStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #corpseForCorpseOffset:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testCorpseOffsetOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #corpseOffsetOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testEdenBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #edenBytes.
	self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurGenerationScavengerTranslationTest >> testExchangeSurvivorSpacesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #exchangeSurvivorSpaces.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testFireEphemeronsInRememberedSetStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fireEphemeronsInRememberedSet.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testFireEphemeronsOnEphemeronListStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fireEphemeronsOnEphemeronList.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurGenerationScavengerTranslationTest >> testFollowRememberedForwardersAndForgetFreeObjectsForPigCompactStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #followRememberedForwardersAndForgetFreeObjectsForPigCompact.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurGenerationScavengerTranslationTest >> testFollowRememberedForwardersAndForgetFreeObjectsStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #followRememberedForwardersAndForgetFreeObjects.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurGenerationScavengerTranslationTest >> testForgetObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #forgetObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurGenerationScavengerTranslationTest >> testForgetUnmarkedRememberedObjectsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #forgetUnmarkedRememberedObjects.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testGetRawTenuringThresholdStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #getRawTenuringThreshold.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpurGenerationScavengerTranslationTest >> testInitFutureSpaceStartStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initFutureSpaceStart.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpurGenerationScavengerTranslationTest >> testInitializeRememberedSetStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initializeRememberedSet.
	self prettyPrintIllicium: illiAST
]

{ #category : #logging }
MASmokeSpurGenerationScavengerTranslationTest >> testLogEndScavengeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #logEndScavenge.
	self prettyPrintIllicium: illiAST
]

{ #category : #logging }
MASmokeSpurGenerationScavengerTranslationTest >> testLogScavengeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #logScavenge.
	self prettyPrintIllicium: illiAST
]

{ #category : #logging }
MASmokeSpurGenerationScavengerTranslationTest >> testLogStartScavengeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #logStartScavenge.
	self prettyPrintIllicium: illiAST
]

{ #category : #logging }
MASmokeSpurGenerationScavengerTranslationTest >> testLogStreamStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #logStream.
	self prettyPrintIllicium: illiAST
]

{ #category : #logging }
MASmokeSpurGenerationScavengerTranslationTest >> testLogTenuringPolicyStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #logTenuringPolicy.
	self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpurGenerationScavengerTranslationTest >> testNewSpaceStartnewSpaceBytessurvivorBytesStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #newSpaceStart:newSpaceBytes:survivorBytes:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testNextCorpseOffsetStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nextCorpseOffset:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testNextCorpseOrNilStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #nextCorpseOrNil:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testPastSpaceBytesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pastSpaceBytes.
	self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurGenerationScavengerTranslationTest >> testPrintWeaklingListStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #printWeaklingList:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'remembered set' }
MASmokeSpurGenerationScavengerTranslationTest >> testReferenceCountRememberedReferentsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #referenceCountRememberedReferents:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'remembered set' }
MASmokeSpurGenerationScavengerTranslationTest >> testRelocateRememberedSetStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #relocateRememberedSet.
	self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurGenerationScavengerTranslationTest >> testScavengeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #scavenge:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testScavengeUnfiredEphemeronsInRememberedSetStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #scavengeUnfiredEphemeronsInRememberedSet.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testScavengerTenuringThresholdStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #scavengerTenuringThreshold:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testSetCorpseOffsetOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setCorpseOffsetOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testSetRawTenuringThresholdStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setRawTenuringThreshold:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'remembered set' }
MASmokeSpurGenerationScavengerTranslationTest >> testSetRefCountToShrinkRTStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setRefCountToShrinkRT:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'remembered set' }
MASmokeSpurGenerationScavengerTranslationTest >> testSetRememberedSetRedZoneStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setRememberedSetRedZone.
	self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurGenerationScavengerTranslationTest >> testShouldBeTenuredStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shouldBeTenured:.
	self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurGenerationScavengerTranslationTest >> testShouldMournerBeTenuredStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #shouldMournerBeTenured:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testStatSurvivorCountStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statSurvivorCount.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testStatTenuresStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #statTenures:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'remembered set' }
MASmokeSpurGenerationScavengerTranslationTest >> testStrategizeToLimitRememberedTableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #strategizeToLimitRememberedTable.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testTenuringClassIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #tenuringClassIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> translator [
	^ MASpurGenerationScavengerRessource current translator
]
