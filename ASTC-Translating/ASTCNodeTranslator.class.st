Class {
	#name : #ASTCNodeTranslator,
	#superclass : #Object,
	#traits : 'ASTCFormatTrait',
	#classTraits : 'ASTCFormatTrait classTrait',
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCNodeTranslator >> translateNode: aNode withMainTranslator: aTranslator [
	self subclassResponsibility
]
