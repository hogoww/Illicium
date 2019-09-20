Class {
	#name : #ASTCThisContextNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCThisContextNodeTranslator >> translateNode: aNode withMethodTranslator: aTranslator [
	self error: 'thisContext is not supported yet.'
]
