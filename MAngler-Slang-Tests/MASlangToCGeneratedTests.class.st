"
I am a copy of class ILSlangToCGeneratedTests. This comment is copied from there, and might not be entirely accurate

This class contains tests
"
Class {
	#name : #MASlangToCGeneratedTests,
	#superclass : #TestCase,
	#instVars : [
		'translator',
		'testedClass'
	],
	#category : #'MAngler-Slang-Tests-GeneratedTestsBase'
}

{ #category : #'as yet unclassified' }
MASlangToCGeneratedTests class >> ressource [
	^ { MAFullVMCCodeGeneratorRessource }
]

{ #category : #generating }
MASlangToCGeneratedTests >> assert: actual equals: expected [
	actual = expected
		ifFalse: [ 
			MAStringAreDifferent new
				actual: actual;
				expected: expected;
				signal ]
]

{ #category : #generating }
MASlangToCGeneratedTests >> generateIllicium: aSelector [ 
	
	^ self translator translateMethod: aSelector fromClass: testedClass
]

{ #category : #generating }
MASlangToCGeneratedTests >> newPrettyPrinter [

	^ self translator prettyPrinterClass new
]

{ #category : #generating }
MASlangToCGeneratedTests >> prettyPrintIllicium: anAST [
	"If it's a macro, it's translated in a define
	otherwise, it's a function call."

	^(anAST defines 
		ifEmpty: [ anAST definitions ]
		ifNotEmpty: [ anAST defines ]) 
			anyOne prettyPrintUsing: self newPrettyPrinter.

]

{ #category : #accessing }
MASlangToCGeneratedTests >> testedClass [
	^ testedClass
]

{ #category : #accessing }
MASlangToCGeneratedTests >> testedClass: aClass [
	testedClass := aClass
]

{ #category : #accessing }
MASlangToCGeneratedTests >> timeLimit: aDuration [
	^ Duration seconds: 5
]

{ #category : #accessing }
MASlangToCGeneratedTests >> translator [
	"Should be generated.
	Should return the reference of the ressource."
	^ self subclassResponsibility
]
