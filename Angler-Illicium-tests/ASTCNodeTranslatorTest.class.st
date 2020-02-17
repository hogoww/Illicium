Class {
	#name : #ASTCNodeTranslatorTest,
	#superclass : #TestCase,
	#instVars : [
		'methodTranslator'
	],
	#category : #'Angler-Illicium-tests'
}

{ #category : #'as yet unclassified' }
ASTCNodeTranslatorTest >> addDeclarationProperty: aBooleanOrCollection to: aNode [ 
	aNode propertyAt: FAVariableDeclarationAnnotator property
		put: aBooleanOrCollection
]

{ #category : #'as yet unclassified' }
ASTCNodeTranslatorTest >> addType: aClass to: aNode [ 
	aNode propertyAt: FATypeAnnotator property
		put: ( aClass asTypeReification -> 'Generated, no Phineas Type')
]

{ #category : #'as yet unclassified' }
ASTCNodeTranslatorTest >> assertTypeOf: aNode is: aType [
	self assert: (aNode propertyAt: FATypeAnnotator property) key equals: aType asTypeReification
]

{ #category : #tests }
ASTCNodeTranslatorTest >> setUp [
	"we only need a reference to the method translator"
	methodTranslator := ASTCTranslator new classTranslator methodTranslator.
]
