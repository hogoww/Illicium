Class {
	#name : #MASlangInlinerVariablesRenamerTest,
	#superclass : #TestCase,
	#instVars : [
		'program',
		'inliner',
		'methodWithPouet',
		'methodWithTruc',
		'methodWithPouet2'
	],
	#classVars : [
		'Property'
	],
	#category : #'MAngler-Slang-Tests-AnalysisTests'
}

{ #category : #'initialize - event' }
MASlangInlinerVariablesRenamerTest class >> initialize [
	Property := FAVariableDeclarationAnnotator propertyName.
]

{ #category : #basic }
MASlangInlinerVariablesRenamerTest >> aMethodWithTempPouet [
	| pouet  |
]

{ #category : #basic }
MASlangInlinerVariablesRenamerTest >> aMethodWithTempPouet2 [
	| pouet |
]

{ #category : #basic }
MASlangInlinerVariablesRenamerTest >> aMethodWithTempTruc [
	| truc |
]

{ #category : #tests }
MASlangInlinerVariablesRenamerTest >> assertMethod: aMethod hasDeclarationNames: declarationNames [
	self assert: ((aMethod body propertyAt: Property) collect:[ :aNode | aNode name ]) asSet equals: declarationNames asSet
]

{ #category : #running }
MASlangInlinerVariablesRenamerTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	| declarationVisitor |
	super setUp.
	
	methodWithPouet := (self class >> #aMethodWithTempPouet) ast copy.
	methodWithPouet2 := (self class >> #aMethodWithTempPouet2) ast copy.
	methodWithTruc := (self class >> #aMethodWithTempTruc) ast copy.

	methodWithPouet acceptVisitor: MASlangDeclarationAnnotator new.
	methodWithPouet2 acceptVisitor: MASlangDeclarationAnnotator new.
	methodWithTruc acceptVisitor: MASlangDeclarationAnnotator new.
	
	inliner := MASlangAbstractInliner new
		translator: MASlangClassTranslator new;
		yourself.
]

{ #category : #tests }
MASlangInlinerVariablesRenamerTest >> testMergeTwoConflictingTemps [
	inliner handleTemporariesFrom: methodWithPouet2 in: methodWithPouet.

	self assertMethod: methodWithPouet hasDeclarationNames: #( #pouet #pouet1 )
]

{ #category : #tests }
MASlangInlinerVariablesRenamerTest >> testMergeTwoNonConflictingTemps [
	inliner handleTemporariesFrom: methodWithPouet in: methodWithTruc.

	self assertMethod: methodWithTruc hasDeclarationNames: #( #pouet #truc )
]
