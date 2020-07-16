Class {
	#name : #MASmokeStackInterpreterPrimitivesTranslationTest,
	#superclass : #MAVMTranslationTests,
	#category : #'MAngler-Slang-Tests-GeneratedTests'
}

{ #category : #running }
MASmokeStackInterpreterPrimitivesTranslationTest >> setUp [
	super setUp.
	testedClass := StackInterpreterPrimitives
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFieldsInFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #fieldsInFrame:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testFrameIsMarkedStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #frameIsMarked:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testMarkFrameStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #markFrame:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'object access primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPathTousingfollowWeakStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #pathTo:using:followWeak:.
	self prettyPrintIllicium: illiAST
]

{ #category : #'system control primitives' }
MASmokeStackInterpreterPrimitivesTranslationTest >> testPrimitiveSetVMParameterargStringComparison [
	| illiAST |
	illiAST := self generateIllicium: #primitiveSetVMParameter:arg:.
	self prettyPrintIllicium: illiAST
]

{ #category : #accessing }
MASmokeStackInterpreterPrimitivesTranslationTest >> translator [
	^ MAStackInterpreterPrimitivesRessource current translator
]
