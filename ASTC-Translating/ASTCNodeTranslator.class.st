Class {
	#name : #ASTCNodeTranslator,
	#superclass : #Object,
	#category : #'ASTC-Translating-Methods'
}

{ #category : #'as yet unclassified' }
ASTCNodeTranslator >> translateNode: aGlobalNode withMainTranslator: aTranslator [
	self subclassResponsibility
]
