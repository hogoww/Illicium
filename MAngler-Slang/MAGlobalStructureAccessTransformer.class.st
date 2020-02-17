Class {
	#name : #MAGlobalStructureAccessTransformer,
	#superclass : #Object,
	#instVars : [
		'translator'
	],
	#category : #'MAngler-Slang-analysis'
}

{ #category : #accessing }
MAGlobalStructureAccessTransformer class >> translator: aTranslator [

	^ self new
		translator: aTranslator;
		yourself
]

{ #category : #transforming }
MAGlobalStructureAccessTransformer >> applyOnMethod: aRBMethodNode ofProgram: anANProgram [ 

	aRBMethodNode nodesDo: [ :each |
		(each isVariable and: [ translator isGlobalInstanceVariable: each name ])
			ifTrue: [ | newNode |
				newNode := RBMessageNode 
					receiver: each copy
					selector: #GIV:
					arguments: { each copy }.
				newNode
					propertyAt: #type
					put: (each propertyAt: #type).
				each replaceWith: newNode ] ]
]

{ #category : #accessing }
MAGlobalStructureAccessTransformer >> translator [
	^ translator
]

{ #category : #accessing }
MAGlobalStructureAccessTransformer >> translator: anObject [
	translator := anObject
]
