Class {
	#name : #ASTCSuperNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCSuperNodeTranslator >> translateNode: aNode withMainTranslator: aTranslator [
	self error: 'super is not supported'
]
