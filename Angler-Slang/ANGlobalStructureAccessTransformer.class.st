Class {
	#name : #ANGlobalStructureAccessTransformer,
	#superclass : #Object,
	#instVars : [
		'translator'
	],
	#category : #'Angler-Slang-analysis'
}

{ #category : #accessing }
ANGlobalStructureAccessTransformer class >> translator: aTranslator [

	^ self new
		translator: aTranslator;
		yourself
]

{ #category : #transforming }
ANGlobalStructureAccessTransformer >> applyOnMethod: aRBMethodNode ofProgram: anANProgram [ 

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
ANGlobalStructureAccessTransformer >> translator [
	^ translator
]

{ #category : #accessing }
ANGlobalStructureAccessTransformer >> translator: anObject [
	translator := anObject
]
