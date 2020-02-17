Class {
	#name : #ASTCSuperNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-nodes-translators'
}

{ #category : #translate }
ASTCSuperNodeTranslator >> translateNode: aNode [
	self error: 'super is not supported'
]
