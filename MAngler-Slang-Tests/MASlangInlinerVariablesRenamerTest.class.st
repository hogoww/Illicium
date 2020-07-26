Class {
	#name : #MASlangInlinerVariablesRenamerTest,
	#superclass : #TestCase,
	#instVars : [
		'methodWithPouet',
		'methodWithTruc',
		'methodWithPouet2',
		'methodWithBlockTempPouet',
		'methodWithBlockTempTruc',
		'renamer'
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
MASlangInlinerVariablesRenamerTest >> aMethodWithBlockTempPouet [
	[ | pouet  |]
]

{ #category : #basic }
MASlangInlinerVariablesRenamerTest >> aMethodWithBlockTempTruc [
	[ | truc  |]
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
	super setUp. 
	
	methodWithPouet := (self class >> #aMethodWithTempPouet) ast copy.
	methodWithPouet2 := (self class >> #aMethodWithTempPouet2) ast copy.
	methodWithTruc := (self class >> #aMethodWithTempTruc) ast copy.
	methodWithBlockTempPouet := (self class >> #aMethodWithBlockTempPouet) ast copy.
	methodWithBlockTempTruc := (self class >> #aMethodWithBlockTempTruc) ast copy.
	
	methodWithPouet acceptVisitor: MASlangDeclarationAnnotator new.
	methodWithPouet2 acceptVisitor: MASlangDeclarationAnnotator new.
	methodWithTruc acceptVisitor: MASlangDeclarationAnnotator new.
	methodWithBlockTempPouet acceptVisitor: MASlangDeclarationAnnotator new.
	methodWithBlockTempTruc acceptVisitor: MASlangDeclarationAnnotator new.
	
	renamer := MASlangVariableRenamer new
]

{ #category : #tests }
MASlangInlinerVariablesRenamerTest >> testMergeConflictingTempWithBlockTemp [
	renamer handleTemporariesFrom: methodWithPouet in: methodWithBlockTempPouet.

	self assertMethod: methodWithBlockTempPouet hasDeclarationNames: #( #pouet #pouet1 )
]

{ #category : #tests }
MASlangInlinerVariablesRenamerTest >> testMergeNonConflictingTempWithBlockTemp [
	renamer handleTemporariesFrom: methodWithPouet in: methodWithBlockTempTruc.

	self assertMethod: methodWithBlockTempTruc hasDeclarationNames: #( #pouet #truc )
]

{ #category : #tests }
MASlangInlinerVariablesRenamerTest >> testMergeTwoConflictingTemps [
	renamer handleTemporariesFrom: methodWithPouet2 in: methodWithPouet.

	self assertMethod: methodWithPouet hasDeclarationNames: #( #pouet #pouet1 )
]

{ #category : #tests }
MASlangInlinerVariablesRenamerTest >> testMergeTwoNonConflictingTemps [
	renamer handleTemporariesFrom: methodWithPouet in: methodWithTruc.

	self assertMethod: methodWithTruc hasDeclarationNames: #( #pouet #truc )
]
