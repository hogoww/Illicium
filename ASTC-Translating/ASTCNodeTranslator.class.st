Class {
	#name : #ASTCNodeTranslator,
	#superclass : #Object,
	#category : #'ASTC-Translating-Methods'
}

{ #category : #'as yet unclassified' }
ASTCNodeTranslator >> translateNode: aNode withMainTranslator: aTranslator [
	self subclassResponsibility
]
