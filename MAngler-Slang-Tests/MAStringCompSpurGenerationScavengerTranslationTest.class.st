Class {
	#name : #MAStringCompSpurGenerationScavengerTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-GeneratedTests'
}

{ #category : #running }
MAStringCompSpurGenerationScavengerTranslationTest >> setUp [
	super setUp.
	testedClass := SpurGenerationScavenger
]

{ #category : #'weakness and ephemerality' }
MAStringCompSpurGenerationScavengerTranslationTest >> testAddToEphemeronListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addToEphemeronList:.
	illiAST := self generateIllicium: #addToEphemeronList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality' }
MAStringCompSpurGenerationScavengerTranslationTest >> testAddToWeakListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addToWeakList:.
	illiAST := self generateIllicium: #addToWeakList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'remembered set' }
MAStringCompSpurGenerationScavengerTranslationTest >> testAllNewSpaceObjectsHaveZeroRTRefCountStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #allNewSpaceObjectsHaveZeroRTRefCount.
	illiAST := self
		generateIllicium: #allNewSpaceObjectsHaveZeroRTRefCount.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality' }
MAStringCompSpurGenerationScavengerTranslationTest >> testAllWeakSurvivorsOnWeakListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allWeakSurvivorsOnWeakList.
	illiAST := self generateIllicium: #allWeakSurvivorsOnWeakList.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'remembered set' }
MAStringCompSpurGenerationScavengerTranslationTest >> testComputeRefCountToShrinkRTStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #computeRefCountToShrinkRT.
	illiAST := self generateIllicium: #computeRefCountToShrinkRT.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #scavenger }
MAStringCompSpurGenerationScavengerTranslationTest >> testCopyAndForwardMournerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyAndForwardMourner:.
	illiAST := self generateIllicium: #copyAndForwardMourner:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #scavenger }
MAStringCompSpurGenerationScavengerTranslationTest >> testCopyAndForwardStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyAndForward:.
	illiAST := self generateIllicium: #copyAndForward:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #scavenger }
MAStringCompSpurGenerationScavengerTranslationTest >> testCopyToOldSpacebytesformatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyToOldSpace:bytes:format:.
	illiAST := self generateIllicium: #copyToOldSpace:bytes:format:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurGenerationScavengerTranslationTest >> testEdenStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #eden.
	illiAST := self generateIllicium: #eden.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality' }
MAStringCompSpurGenerationScavengerTranslationTest >> testFirstCorpseStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #firstCorpse:.
	illiAST := self generateIllicium: #firstCorpse:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurGenerationScavengerTranslationTest >> testFutureSpaceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #futureSpace.
	illiAST := self generateIllicium: #futureSpace.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurGenerationScavengerTranslationTest >> testFutureSurvivorStartStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #futureSurvivorStart.
	illiAST := self generateIllicium: #futureSurvivorStart.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'remembered set' }
MAStringCompSpurGenerationScavengerTranslationTest >> testGrowRememberedSetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #growRememberedSet.
	illiAST := self generateIllicium: #growRememberedSet.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'store check' }
MAStringCompSpurGenerationScavengerTranslationTest >> testIsInRememberedSetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isInRememberedSet:.
	illiAST := self generateIllicium: #isInRememberedSet:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality' }
MAStringCompSpurGenerationScavengerTranslationTest >> testIsMaybeOldScavengeSurvivorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isMaybeOldScavengeSurvivor:.
	illiAST := self generateIllicium: #isMaybeOldScavengeSurvivor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality' }
MAStringCompSpurGenerationScavengerTranslationTest >> testIsScavengeSurvivorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isScavengeSurvivor:.
	illiAST := self generateIllicium: #isScavengeSurvivor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality' }
MAStringCompSpurGenerationScavengerTranslationTest >> testIsonWeaklingListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #is:onWeaklingList:.
	illiAST := self generateIllicium: #is:onWeaklingList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurGenerationScavengerTranslationTest >> testNewSpaceCapacityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #newSpaceCapacity.
	illiAST := self generateIllicium: #newSpaceCapacity.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality' }
MAStringCompSpurGenerationScavengerTranslationTest >> testNoUnfiredEphemeronsAtEndOfRememberedSetStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #noUnfiredEphemeronsAtEndOfRememberedSet.
	illiAST := self
		generateIllicium: #noUnfiredEphemeronsAtEndOfRememberedSet.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #logging }
MAStringCompSpurGenerationScavengerTranslationTest >> testOpenScavengeLogStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #openScavengeLog.
	illiAST := self generateIllicium: #openScavengeLog.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurGenerationScavengerTranslationTest >> testPastSpaceStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #pastSpace.
	illiAST := self generateIllicium: #pastSpace.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support' }
MAStringCompSpurGenerationScavengerTranslationTest >> testPrintRememberedSetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printRememberedSet.
	illiAST := self generateIllicium: #printRememberedSet.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality' }
MAStringCompSpurGenerationScavengerTranslationTest >> testProcessEphemeronsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #processEphemerons.
	illiAST := self generateIllicium: #processEphemerons.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality' }
MAStringCompSpurGenerationScavengerTranslationTest >> testProcessWeakSurvivorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #processWeakSurvivor:.
	illiAST := self generateIllicium: #processWeakSurvivor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality' }
MAStringCompSpurGenerationScavengerTranslationTest >> testProcessWeaklingsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #processWeaklings.
	illiAST := self generateIllicium: #processWeaklings.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'store check' }
MAStringCompSpurGenerationScavengerTranslationTest >> testRememberStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #remember:.
	illiAST := self generateIllicium: #remember:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurGenerationScavengerTranslationTest >> testRememberedSetLimitStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #rememberedSetLimit.
	illiAST := self generateIllicium: #rememberedSetLimit.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurGenerationScavengerTranslationTest >> testRememberedSetSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #rememberedSetSize.
	illiAST := self generateIllicium: #rememberedSetSize.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #scavenger }
MAStringCompSpurGenerationScavengerTranslationTest >> testScavengeFutureSurvivorSpaceStartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #scavengeFutureSurvivorSpaceStartingAt:.
	illiAST := self
		generateIllicium: #scavengeFutureSurvivorSpaceStartingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #scavenger }
MAStringCompSpurGenerationScavengerTranslationTest >> testScavengeLoopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #scavengeLoop.
	illiAST := self generateIllicium: #scavengeLoop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #scavenger }
MAStringCompSpurGenerationScavengerTranslationTest >> testScavengeReferentsOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #scavengeReferentsOf:.
	illiAST := self generateIllicium: #scavengeReferentsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #scavenger }
MAStringCompSpurGenerationScavengerTranslationTest >> testScavengeRememberedSetStartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #scavengeRememberedSetStartingAt:.
	illiAST := self generateIllicium: #scavengeRememberedSetStartingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality' }
MAStringCompSpurGenerationScavengerTranslationTest >> testScavengeUnfiredEphemeronsOnEphemeronListStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #scavengeUnfiredEphemeronsOnEphemeronList.
	illiAST := self
		generateIllicium: #scavengeUnfiredEphemeronsOnEphemeronList.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurGenerationScavengerTranslationTest >> testScavengerTenuringThresholdStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #scavengerTenuringThreshold.
	illiAST := self generateIllicium: #scavengerTenuringThreshold.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #logging }
MAStringCompSpurGenerationScavengerTranslationTest >> testWriteScavengeLogStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #writeScavengeLog.
	illiAST := self generateIllicium: #writeScavengeLog.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpurGenerationScavengerTranslationTest >> translator [
	^ MASpurGenerationScavengerRessource current translator
]
