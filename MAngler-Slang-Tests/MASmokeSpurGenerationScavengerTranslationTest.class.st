Class {
	#name : #MASmokeSpurGenerationScavengerTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MASmokeSpurGenerationScavengerTranslationTest >> setUp [
	super setUp.
	testedClass := SpurGenerationScavenger
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testAllFutureSpaceEntitiesDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #allFutureSpaceEntitiesDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testCoInterpreterStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #coInterpreter:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurGenerationScavengerTranslationTest >> testComputeTenuringThresholdStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #computeTenuringThreshold.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurGenerationScavengerTranslationTest >> testCopyToFutureSpacebytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #copyToFutureSpace:bytes:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testCorpseForCorpseOffsetStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #corpseForCorpseOffset:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testCorpseOffsetOfStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #corpseOffsetOf:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testEdenBytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #edenBytes.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurGenerationScavengerTranslationTest >> testExchangeSurvivorSpacesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #exchangeSurvivorSpaces.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testFireEphemeronsInRememberedSetStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #fireEphemeronsInRememberedSet.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testFireEphemeronsOnEphemeronListStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #fireEphemeronsOnEphemeronList.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurGenerationScavengerTranslationTest >> testFollowRememberedForwardersAndForgetFreeObjectsForPigCompactStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #followRememberedForwardersAndForgetFreeObjectsForPigCompact.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurGenerationScavengerTranslationTest >> testFollowRememberedForwardersAndForgetFreeObjectsStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #followRememberedForwardersAndForgetFreeObjects.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurGenerationScavengerTranslationTest >> testForgetObjectStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #forgetObject:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpurGenerationScavengerTranslationTest >> testForgetUnmarkedRememberedObjectsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #forgetUnmarkedRememberedObjects.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurGenerationScavengerTranslationTest >> testFutureSpaceObjectsDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #futureSpaceObjectsDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testGetRawTenuringThresholdStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #getRawTenuringThreshold.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpurGenerationScavengerTranslationTest >> testInitFutureSpaceStartStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initFutureSpaceStart.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpurGenerationScavengerTranslationTest >> testInitializeRememberedSetStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #initializeRememberedSet.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #logging }
MASmokeSpurGenerationScavengerTranslationTest >> testLogEndScavengeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #logEndScavenge.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #logging }
MASmokeSpurGenerationScavengerTranslationTest >> testLogScavengeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #logScavenge.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #logging }
MASmokeSpurGenerationScavengerTranslationTest >> testLogStartScavengeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #logStartScavenge.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #logging }
MASmokeSpurGenerationScavengerTranslationTest >> testLogStreamStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #logStream.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #logging }
MASmokeSpurGenerationScavengerTranslationTest >> testLogTenuringPolicyStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #logTenuringPolicy.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #initialization }
MASmokeSpurGenerationScavengerTranslationTest >> testNewSpaceStartnewSpaceBytessurvivorBytesStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #newSpaceStart:newSpaceBytes:survivorBytes:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testNextCorpseOffsetStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nextCorpseOffset:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testNextCorpseOrNilStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #nextCorpseOrNil:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testPastSpaceBytesStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #pastSpaceBytes.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurGenerationScavengerTranslationTest >> testPrintWeaklingListStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #printWeaklingList:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'remembered set' }
MASmokeSpurGenerationScavengerTranslationTest >> testReferenceCountRememberedReferentsStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #referenceCountRememberedReferents:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'remembered set' }
MASmokeSpurGenerationScavengerTranslationTest >> testRelocateRememberedSetStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #relocateRememberedSet.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'debug support' }
MASmokeSpurGenerationScavengerTranslationTest >> testRememberedSetWithIndexDoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #rememberedSetWithIndexDo:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurGenerationScavengerTranslationTest >> testScavengeStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #scavenge:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testScavengeUnfiredEphemeronsInRememberedSetStringComparison [
	| illiAST illiString |
	illiAST := self
		generateIllicium: #scavengeUnfiredEphemeronsInRememberedSet.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testScavengerTenuringThresholdStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #scavengerTenuringThreshold:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'weakness and ephemerality' }
MASmokeSpurGenerationScavengerTranslationTest >> testSetCorpseOffsetOftoStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setCorpseOffsetOf:to:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testSetRawTenuringThresholdStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setRawTenuringThreshold:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'remembered set' }
MASmokeSpurGenerationScavengerTranslationTest >> testSetRefCountToShrinkRTStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setRefCountToShrinkRT:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'remembered set' }
MASmokeSpurGenerationScavengerTranslationTest >> testSetRememberedSetRedZoneStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #setRememberedSetRedZone.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurGenerationScavengerTranslationTest >> testShouldBeTenuredStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #shouldBeTenured:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #scavenger }
MASmokeSpurGenerationScavengerTranslationTest >> testShouldMournerBeTenuredStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #shouldMournerBeTenured:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testStatSurvivorCountStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statSurvivorCount.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testStatTenuresStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #statTenures:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #'remembered set' }
MASmokeSpurGenerationScavengerTranslationTest >> testStrategizeToLimitRememberedTableStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #strategizeToLimitRememberedTable.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> testTenuringClassIndexStringComparison [
	| illiAST illiString |
	illiAST := self generateIllicium: #tenuringClassIndex:.
	illiString := self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpurGenerationScavengerTranslationTest >> translator [
	^ MASpurGenerationScavengerRessource current translator
]
