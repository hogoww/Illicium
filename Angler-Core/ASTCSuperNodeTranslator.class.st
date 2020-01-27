Class {
	#name : #ASTCSuperNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-ast-nodes'
}

{ #category : #translate }
ASTCSuperNodeTranslator >> translateNode: aNode [
	self error: 'super is not supported'
]
