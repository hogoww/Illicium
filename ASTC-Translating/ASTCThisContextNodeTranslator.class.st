Class {
	#name : #ASTCThisContextNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCThisContextNodeTranslator >> translateNode: aNode withMainTranslator: aTranslator [
	self error: 'thisContext is not supported yet.'
]
