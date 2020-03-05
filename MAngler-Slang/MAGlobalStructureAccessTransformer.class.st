Class {
	#name : #MAGlobalStructureAccessTransformer,
	#superclass : #Object,
	#instVars : [
		'translator'
	],
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #accessing }
MAGlobalStructureAccessTransformer class >> translator: aTranslator [

	^ self new
		translator: aTranslator;
		yourself
]

{ #category : #transforming }
MAGlobalStructureAccessTransformer >> applyOnMethod: aRBMethodNode ofProgram: anANProgram [ 
	| typeProperty |
	"I don't like having to check if the property exists or not.
	Problem is that cCode:inSmalltalk: are not typed by slang, and therefore not by us either.
	We can either add an exception for inSmalltalk code, or do this which might hide another error till later. 
	Anyway... Quick fix..."
	typeProperty := FATypeAnnotator propertyName.
	
	aRBMethodNode nodesDo: [ :aNode |
		(aNode isVariable and: [ translator isGlobalInstanceVariable: aNode name ])
			ifTrue: [ | newNode |
				newNode := RBMessageNode 
					receiver: aNode copy
					selector: #GIV:
					arguments: { aNode copy }.
				newNode
					propertyAt: typeProperty
					put: (aNode propertyAt: typeProperty 
						ifPresent:[ :aType | aType ] 
						ifAbsent:[ nil ])
						"see method comment".
				aNode replaceWith: newNode ] ]
]

{ #category : #accessing }
MAGlobalStructureAccessTransformer >> translator [
	^ translator
]

{ #category : #accessing }
MAGlobalStructureAccessTransformer >> translator: anObject [
	translator := anObject
]
