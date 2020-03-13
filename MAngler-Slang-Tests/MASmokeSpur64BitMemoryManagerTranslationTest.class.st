Class {
	#name : #MASmokeSpur64BitMemoryManagerTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-generatedTests'
}

{ #category : #running }
MASmokeSpur64BitMemoryManagerTranslationTest >> setUp [
	super setUp.
	testedClass := Spur64BitMemoryManager
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testAllocateSlotsformatclassIndexStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #allocateSlots:format:classIndex:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testBytesInObjectgivenStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #bytesInObject:given:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'gc - global' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testCoalesceandStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #coalesce:and:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testExponentOfSmallFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #exponentOfSmallFloat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testFillObjnumSlotswithStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fillObj:numSlots:with:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testHasSixtyFourBitImmediatesStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #hasSixtyFourBitImmediates.
	self prettyPrintIllicium: illiAST
]

{ #category : #immediates }
MASmokeSpur64BitMemoryManagerTranslationTest >> testImageFormatVersionStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #imageFormatVersion.
	self prettyPrintIllicium: illiAST
]

{ #category : #instantiation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testInstantiateCompiledMethodClassindexableSizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #instantiateCompiledMethodClass:indexableSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #immediates }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIntegerObjectOfCharacterObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #integerObjectOfCharacterObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsFloatInstanceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isFloatInstance:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsFloatOrIntStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isFloatOrInt:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsImmediateCharacterStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isImmediateCharacter:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsNegativeSmallFloatStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isNegativeSmallFloat:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsNonIntegerObjectStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isNonIntegerObject:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsSmallFloatZeroStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isSmallFloatZero:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object testing' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testIsWordsNonImmStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isWordsNonImm:.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLargeObjectBytesForSlotsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #largeObjectBytesForSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLoadFloatOrIntFromStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #loadFloatOrIntFrom:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> testLogBytesPerOopStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #logBytesPerOop.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMapSignedSmallFloatToSignedSmallFloatZeroStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #mapSignedSmallFloatToSignedSmallFloatZero:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMaxCIntegerStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maxCInteger.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testMethodDictionaryHashmaskStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #methodDictionaryHash:mask:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNegativeSmallFloatZeroStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #negativeSmallFloatZero.
	self prettyPrintIllicium: illiAST
]

{ #category : #allocation }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumSlotsForShorteningtoIndexableSizeStringComparison [
	| illiAST |
	illiAST := self
		generateIllicium: #numSlotsForShortening:toIndexableSize:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumSmallIntegerBitsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #numSmallIntegerBits.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testNumSmallIntegerTagBitsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #numSmallIntegerTagBits.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testObjectAfterlimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #objectAfter:limit:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object enumeration' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testObjectBytesForSlotsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #objectBytesForSlots:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testOldRawNumSlotsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #oldRawNumSlotsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'cog jit support' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testOldSmallFloatTagStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #oldSmallFloatTag.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testPositiveSmallFloatZeroStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #positiveSmallFloatZero.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRawOverflowSlotsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rawOverflowSlotsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRawOverflowSlotsOfputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rawOverflowSlotsOf:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRotateLeftStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rotateLeft:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRotateRightStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rotateRight:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRotatedFloatBitsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rotatedFloatBitsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testRtRefCountOfputStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #rtRefCountOf:put:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'image segment in/out' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSavedOutHashFillValueStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #savedOutHashFillValue.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetClassIndexOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setClassIndexOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetFormatOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setFormatOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsGreyOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setIsGreyOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsImmutableOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setIsImmutableOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsMarkedOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setIsMarkedOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsPinnedOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setIsPinnedOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetIsRememberedOftoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #setIsRememberedOf:to:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'header access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSetclassIndexToformatToStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #set:classIndexTo:formatTo:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSmallFloatBitsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #smallFloatBitsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSmallFloatObjectOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #smallFloatObjectOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'interpreter access' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testSmallFloatSignBitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #smallFloatSignBit.
	self prettyPrintIllicium: illiAST
]

{ #category : #'class table' }
MASmokeSpur64BitMemoryManagerTranslationTest >> testWordSizeClassIndexPunStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #wordSizeClassIndexPun.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeSpur64BitMemoryManagerTranslationTest >> translator [
	^ MASpur64BitMemoryManagerRessource current translator
]
