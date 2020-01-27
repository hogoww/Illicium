Class {
	#name : #ASTCThisContextNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-ast-nodes'
}

{ #category : #translate }
ASTCThisContextNodeTranslator >> translateNode: aNode [
	self error: 'thisContext is not supported yet.'
]
