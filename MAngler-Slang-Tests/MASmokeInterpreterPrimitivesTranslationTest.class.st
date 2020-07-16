Class {
	#name : #MASmokeInterpreterPrimitivesTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-GeneratedTests'
}

{ #category : #running }
MASmokeInterpreterPrimitivesTranslationTest >> setUp [
	super setUp.
	testedClass := InterpreterPrimitives
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testAsUnsignedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #asUnsigned:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testFloatExponentBitsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #floatExponentBits.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testInitPrimCallStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #initPrimCall.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testIsDirectAlienStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isDirectAlien:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testIsFiniteStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isFinite:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testIsIndirectAlienStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isIndirectAlien:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testIsInstanceOfClassArrayStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isInstanceOfClassArray:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testIsInstanceOfClassBlockClosureStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isInstanceOfClassBlockClosure:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testIsInstanceOfClassByteStringStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isInstanceOfClassByteString:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testIsPointerAlienStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isPointerAlien:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testIsSignedIntegerinRangeForBitsStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #isSignedInteger:inRangeForBits:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testMaybeInlinePositiveBitValueOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #maybeInlinePositive32BitValueOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testNoInlineSignedBitValueGutsOfStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #noInlineSigned32BitValueGutsOf:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sound primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveConstantFillSpurStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveConstantFillSpur.
	self prettyPrintIllicium: illiAST
]

{ #category : #'sound primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveConstantFillVStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveConstantFillV3.
	self prettyPrintIllicium: illiAST
]

{ #category : #'I/O primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveForceTenureStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveForceTenure.
	self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveIsRootStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveIsRoot.
	self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveIsYoungStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveIsYoung.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveMarkHandlerMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveMarkHandlerMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'control primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveMarkUnwindMethodStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveMarkUnwindMethod.
	self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveRootTableAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveRootTableAt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveRootTableStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveRootTable.
	self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveSetGCBiasToGrowGCLimitStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSetGCBiasToGrowGCLimit.
	self prettyPrintIllicium: illiAST
]

{ #category : #'memory space primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveSetGCBiasToGrowStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSetGCBiasToGrow.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveSetIdentityHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSetIdentityHash.
	self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic float primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveSmallFloatHashStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSmallFloatHash.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveSpurIntegerAtPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSpurIntegerAtPut.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveSpurIntegerAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSpurIntegerAt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveSpurStringReplaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSpurStringReplace.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveStartVMProfilingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveStartVMProfiling.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveStopVMProfilingStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveStopVMProfiling.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveTestShortenIndexableSizeStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveTestShortenIndexableSize.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveVIntegerAtPutStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveV3IntegerAtPut.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveVIntegerAtStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveV3IntegerAt.
	self prettyPrintIllicium: illiAST
]

{ #category : #'process primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveVMProfileInfoIntoStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveVMProfileInfoInto.
	self prettyPrintIllicium: illiAST
]

{ #category : #'indexing primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testPrimitiveVStringReplaceStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveV3StringReplace.
	self prettyPrintIllicium: illiAST
]

{ #category : #'arithmetic integer primitives' }
MASmokeInterpreterPrimitivesTranslationTest >> testQuotientStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #quot:ient:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testSizeFieldOfAlienStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #sizeFieldOfAlien:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'primitive support' }
MASmokeInterpreterPrimitivesTranslationTest >> testSuccessfulStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #successful.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeInterpreterPrimitivesTranslationTest >> translator [
	^ MAInterpreterPrimitivesRessource current translator
]
