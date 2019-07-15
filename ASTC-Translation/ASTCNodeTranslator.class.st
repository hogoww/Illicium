Class {
	#name : #ASTCNodeTranslator,
	#superclass : #Object,
	#traits : 'ASTCFormatTrait',
	#classTraits : 'ASTCFormatTrait classTrait',
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCNodeTranslator >> translateNode: aNode withMainTranslator: aTranslator [
	self subclassResponsibility
]
