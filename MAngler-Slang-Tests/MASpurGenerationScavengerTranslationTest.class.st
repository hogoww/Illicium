Class {
	#name : #MASpurGenerationScavengerTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MASpurGenerationScavengerTranslationTest >> setUp [
	super setUp.
	testedClass := SpurGenerationScavenger
]

{ #category : #'weakness and ephemerality-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testAddToEphemeronListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addToEphemeronList:.
	illiAST := self generateIllicium: #addToEphemeronList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testAddToWeakListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addToWeakList:.
	illiAST := self generateIllicium: #addToWeakList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'remembered set-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testAllNewSpaceObjectsHaveZeroRTRefCountStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #allNewSpaceObjectsHaveZeroRTRefCount.
	illiAST := self
		generateIllicium: #allNewSpaceObjectsHaveZeroRTRefCount.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testAllWeakSurvivorsOnWeakListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #allWeakSurvivorsOnWeakList.
	illiAST := self generateIllicium: #allWeakSurvivorsOnWeakList.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'remembered set-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testComputeRefCountToShrinkRTStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #computeRefCountToShrinkRT.
	illiAST := self generateIllicium: #computeRefCountToShrinkRT.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'scavenger-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testCopyAndForwardMournerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyAndForwardMourner:.
	illiAST := self generateIllicium: #copyAndForwardMourner:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'scavenger-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testCopyAndForwardStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyAndForward:.
	illiAST := self generateIllicium: #copyAndForward:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'scavenger-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testCopyToOldSpacebytesformatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #copyToOldSpace:bytes:format:.
	illiAST := self generateIllicium: #copyToOldSpace:bytes:format:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testFirstCorpseStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #firstCorpse:.
	illiAST := self generateIllicium: #firstCorpse:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'remembered set-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testGrowRememberedSetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #growRememberedSet.
	illiAST := self generateIllicium: #growRememberedSet.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'store check-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testIsInRememberedSetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isInRememberedSet:.
	illiAST := self generateIllicium: #isInRememberedSet:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testIsMaybeOldScavengeSurvivorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isMaybeOldScavengeSurvivor:.
	illiAST := self generateIllicium: #isMaybeOldScavengeSurvivor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testIsScavengeSurvivorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isScavengeSurvivor:.
	illiAST := self generateIllicium: #isScavengeSurvivor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testIsonWeaklingListStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #is:onWeaklingList:.
	illiAST := self generateIllicium: #is:onWeaklingList:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testNewSpaceCapacityStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #newSpaceCapacity.
	illiAST := self generateIllicium: #newSpaceCapacity.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testNoUnfiredEphemeronsAtEndOfRememberedSetStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #noUnfiredEphemeronsAtEndOfRememberedSet.
	illiAST := self
		generateIllicium: #noUnfiredEphemeronsAtEndOfRememberedSet.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'logging-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testOpenScavengeLogStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #openScavengeLog.
	illiAST := self generateIllicium: #openScavengeLog.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'debug support-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testPrintRememberedSetStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #printRememberedSet.
	illiAST := self generateIllicium: #printRememberedSet.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testProcessEphemeronsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #processEphemerons.
	illiAST := self generateIllicium: #processEphemerons.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testProcessWeakSurvivorStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #processWeakSurvivor:.
	illiAST := self generateIllicium: #processWeakSurvivor:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testProcessWeaklingsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #processWeaklings.
	illiAST := self generateIllicium: #processWeaklings.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'store check-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testRememberStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #remember:.
	illiAST := self generateIllicium: #remember:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'scavenger-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testScavengeFutureSurvivorSpaceStartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #scavengeFutureSurvivorSpaceStartingAt:.
	illiAST := self
		generateIllicium: #scavengeFutureSurvivorSpaceStartingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'scavenger-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testScavengeLoopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #scavengeLoop.
	illiAST := self generateIllicium: #scavengeLoop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'scavenger-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testScavengeReferentsOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #scavengeReferentsOf:.
	illiAST := self generateIllicium: #scavengeReferentsOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'scavenger-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testScavengeRememberedSetStartingAtStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #scavengeRememberedSetStartingAt:.
	illiAST := self generateIllicium: #scavengeRememberedSetStartingAt:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'weakness and ephemerality-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testScavengeUnfiredEphemeronsOnEphemeronListStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #scavengeUnfiredEphemeronsOnEphemeronList.
	illiAST := self
		generateIllicium: #scavengeUnfiredEphemeronsOnEphemeronList.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'accessing-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testScavengerTenuringThresholdStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #scavengerTenuringThreshold.
	illiAST := self generateIllicium: #scavengerTenuringThreshold.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'logging-equaliy-test' }
MASpurGenerationScavengerTranslationTest >> testWriteScavengeLogStringComparison [
	| illiAST slangString illiString |
	<skip>
	self skip. "A super specific case of arraynode, no thanks."
	slangString := self generateSlang: #writeScavengeLog.
	illiAST := self generateIllicium: #writeScavengeLog.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MASpurGenerationScavengerTranslationTest >> translator [
	^ MASpurGenerationScavengerRessource current translator
]
