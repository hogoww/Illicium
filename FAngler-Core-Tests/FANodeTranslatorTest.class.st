Class {
	#name : #FANodeTranslatorTest,
	#superclass : #TestCase,
	#instVars : [
		'methodTranslator'
	],
	#category : #'FAngler-Core-Tests'
}

{ #category : #'as yet unclassified' }
FANodeTranslatorTest >> addDeclarationProperty: aBooleanOrCollection to: aNode [ 
	aNode propertyAt: FAVariableDeclarationAnnotator propertyName
		put: aBooleanOrCollection
]

{ #category : #'as yet unclassified' }
FANodeTranslatorTest >> addType: aClass to: aNode [ 
	aNode propertyAt: FATypeAnnotator propertyName
		put: aClass asTypeReification 
]

{ #category : #'as yet unclassified' }
FANodeTranslatorTest >> assertTypeOf: aNode is: aType [
	self assert: (aNode propertyAt: FATypeAnnotator propertyName) equals: aType asTypeReification
]

{ #category : #tests }
FANodeTranslatorTest >> setUp [
	"we only need a reference to the method translator"
	methodTranslator := MAIlliciumTranslator new classTranslator methodTranslator.
]
