Class {
	#name : #ASTCThisContextNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-nodes-translators'
}

{ #category : #translate }
ASTCThisContextNodeTranslator >> translateNode: aNode [
	self error: 'thisContext is not supported yet.'
]
