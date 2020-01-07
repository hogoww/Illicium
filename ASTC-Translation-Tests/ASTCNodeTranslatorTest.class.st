Class {
	#name : #ASTCNodeTranslatorTest,
	#superclass : #TestCase,
	#instVars : [
		'methodTranslator'
	],
	#category : #'ASTC-Translation-Tests-Translators'
}

{ #category : #'as yet unclassified' }
ASTCNodeTranslatorTest >> addType: aClass to: aNode [ 
	aNode propertyAt: ASTCTypeAnnotator property
		put: ( aClass asTypeReification -> 'Generated, no Phineas Type')
]

{ #category : #'as yet unclassified' }
ASTCNodeTranslatorTest >> assertTypeOf: aNode is: aType [
	self assert: (aNode propertyAt: ASTCTypeAnnotator property) key equals: aType asTypeReification
]

{ #category : #tests }
ASTCNodeTranslatorTest >> setUp [
	"we only need a reference to the method translator"
	methodTranslator := ASTCTranslator new classTranslator methodTranslator.
]
