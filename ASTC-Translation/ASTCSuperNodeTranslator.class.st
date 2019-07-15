Class {
	#name : #ASTCSuperNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCSuperNodeTranslator >> translateNode: aNode withMainTranslator: aTranslator [
	self error: 'super is not supported'
]
