Class {
	#name : #ASTCSuperNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCSuperNodeTranslator >> translateNode: aNode withMethodTranslator: aTranslator [
	self error: 'super is not supported'
]
