Class {
	#name : #FANodeTranslatorTest,
	#superclass : #TestCase,
	#instVars : [
		'methodTranslator'
	],
	#category : #'Angler-Core-Tests'
}

{ #category : #'as yet unclassified' }
FANodeTranslatorTest >> addDeclarationProperty: aBooleanOrCollection to: aNode [ 
	aNode propertyAt: FAVariableDeclarationAnnotator property
		put: aBooleanOrCollection
]

{ #category : #'as yet unclassified' }
FANodeTranslatorTest >> addType: aClass to: aNode [ 
	aNode propertyAt: FATypeAnnotator property
		put: ( aClass asTypeReification -> 'Generated, no Phineas Type')
]

{ #category : #'as yet unclassified' }
FANodeTranslatorTest >> assertTypeOf: aNode is: aType [
	self assert: (aNode propertyAt: FATypeAnnotator property) key equals: aType asTypeReification
]

{ #category : #tests }
FANodeTranslatorTest >> setUp [
	"we only need a reference to the method translator"
	methodTranslator := FATranslator new classTranslator methodTranslator.
]
