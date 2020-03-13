Class {
	#name : #MAStringCompSpur64BitMemoryManagerTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MAStringCompSpur64BitMemoryManagerTranslationTest >> setUp [
	super setUp.
	testedClass := Spur64BitMemoryManager
]

{ #category : #'object enumeration' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testAddressAfterStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #addressAfter:.
	illiAST := self generateIllicium: #addressAfter:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #allocation }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testAllocateSlotsForPinningInOldSpacebytesformatclassIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #allocateSlotsForPinningInOldSpace:bytes:format:classIndex:.
	illiAST := self
		generateIllicium: #allocateSlotsForPinningInOldSpace:bytes:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #allocation }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testAllocateSlotsInOldSpacebytesformatclassIndexStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #allocateSlotsInOldSpace:bytes:format:classIndex:.
	illiAST := self
		generateIllicium: #allocateSlotsInOldSpace:bytes:format:classIndex:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #snapshot }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testByteSwappedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #byteSwapped:.
	illiAST := self generateIllicium: #byteSwapped:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object enumeration' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testBytesInObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #bytesInObject:.
	illiAST := self generateIllicium: #bytesInObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testBytesPerOopStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #bytesPerOop.
	illiAST := self generateIllicium: #bytesPerOop.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testChangeClassOftoStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #changeClassOf:to:.
	illiAST := self generateIllicium: #changeClassOf:to:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testDbgFloatValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #dbgFloatValueOf:.
	illiAST := self generateIllicium: #dbgFloatValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #snapshot }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testDefaultEdenBytesStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #defaultEdenBytes.
	illiAST := self generateIllicium: #defaultEdenBytes.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testFetchClassTagOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchClassTagOf:.
	illiAST := self generateIllicium: #fetchClassTagOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testFetchLongofFloatObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #fetchLong32:ofFloatObject:.
	illiAST := self generateIllicium: #fetchLong32:ofFloatObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testFloatObjectOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #floatObjectOf:.
	illiAST := self generateIllicium: #floatObjectOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testFloatValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #floatValueOf:.
	illiAST := self generateIllicium: #floatValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'method access' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testHeaderIndicatesAlternateBytecodeSetStringComparison [
	| illiAST slangString illiString |
	slangString := self
		generateSlang: #headerIndicatesAlternateBytecodeSet:.
	illiAST := self
		generateIllicium: #headerIndicatesAlternateBytecodeSet:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testInitFreeChunkWithBytesatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #initFreeChunkWithBytes:at:.
	illiAST := self generateIllicium: #initFreeChunkWithBytes:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #segments }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testInitSegmentBridgeWithBytesatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #initSegmentBridgeWithBytes:at:.
	illiAST := self generateIllicium: #initSegmentBridgeWithBytes:at:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #instantiation }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testInstantiateClassindexableSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #instantiateClass:indexableSize:.
	illiAST := self generateIllicium: #instantiateClass:indexableSize:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #immediates }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testIntegerObjectOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #integerObjectOf:.
	illiAST := self generateIllicium: #integerObjectOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #immediates }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testIntegerValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #integerValueOf:.
	illiAST := self generateIllicium: #integerValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testIsImmediateFloatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isImmediateFloat:.
	illiAST := self generateIllicium: #isImmediateFloat:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object testing' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testIsIntegerObjectStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isIntegerObject:.
	illiAST := self generateIllicium: #isIntegerObject:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testIsIntegerValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isIntegerValue:.
	illiAST := self generateIllicium: #isIntegerValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testIsLilliputianSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isLilliputianSize:.
	illiAST := self generateIllicium: #isLilliputianSize:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header access' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testIsMarkedStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isMarked:.
	illiAST := self generateIllicium: #isMarked:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testIsSmallFloatValueStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #isSmallFloatValue:.
	illiAST := self generateIllicium: #isSmallFloatValue:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'object access' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testLengthOfformatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #lengthOf:format:.
	illiAST := self generateIllicium: #lengthOf:format:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #instantiation }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testMaxSlotsForAllocStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #maxSlotsForAlloc.
	illiAST := self generateIllicium: #maxSlotsForAlloc.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testMaxSmallIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #maxSmallInteger.
	illiAST := self generateIllicium: #maxSmallInteger.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testMinSmallIntegerStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #minSmallInteger.
	illiAST := self generateIllicium: #minSmallInteger.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'free space' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testNumFreeListsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #numFreeLists.
	illiAST := self generateIllicium: #numFreeLists.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #allocation }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testShortentoIndexableSizeStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #shorten:toIndexableSize:.
	illiAST := self generateIllicium: #shorten:toIndexableSize:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'interpreter access' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testSmallFloatValueOfStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #smallFloatValueOf:.
	illiAST := self generateIllicium: #smallFloatValueOf:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #allocation }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testSmallObjectBytesForSlotsStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #smallObjectBytesForSlots:.
	illiAST := self generateIllicium: #smallObjectBytesForSlots:.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #'header formats' }
MAStringCompSpur64BitMemoryManagerTranslationTest >> testWordIndexableFormatStringComparison [
	| illiAST slangString illiString |
	slangString := self generateSlang: #wordIndexableFormat.
	illiAST := self generateIllicium: #wordIndexableFormat.
	illiString := self prettyPrintIllicium: illiAST.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
MAStringCompSpur64BitMemoryManagerTranslationTest >> translator [
	^ MASpur64BitMemoryManagerRessource current translator
]
