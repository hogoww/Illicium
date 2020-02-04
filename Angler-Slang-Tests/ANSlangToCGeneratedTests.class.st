"
I am a copy of class ILSlangToCGeneratedTests. This comment is copied from there, and might not be entirely accurate

This class contains tests
"
Class {
	#name : #ANSlangToCGeneratedTests,
	#superclass : #TestCase,
	#instVars : [
		'translator',
		'testedClass'
	],
	#category : #'Angler-Slang-Tests'
}

{ #category : #'as yet unclassified' }
ANSlangToCGeneratedTests class >> ressource [
	^ { ANFullVMCCodeGeneratorRessource }
]

{ #category : #generating }
ANSlangToCGeneratedTests >> generateIllicium: aSelector [ 
	
	^ self translator translateMethod: aSelector fromClass: testedClass
]

{ #category : #generating }
ANSlangToCGeneratedTests >> prettyPrintIllicium: anAST [

	^ anAST definitions first prettyPrintUsing: self translator prettyPrinterClass new.
]

{ #category : #accessing }
ANSlangToCGeneratedTests >> testedClass [
	^ testedClass
]

{ #category : #accessing }
ANSlangToCGeneratedTests >> testedClass: aClass [
	testedClass := aClass
]

{ #category : #accessing }
ANSlangToCGeneratedTests >> translator [
	"Should be generated.
	Should return the reference of the ressource."
	^ self subclassResponsibility
]
