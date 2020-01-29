Class {
	#name : #ASTCSelfNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-ast-nodes'
}

{ #category : #translate }
ASTCSelfNodeTranslator >> translateNode: aNode [ 
	self error: 'self nodes should not be visited'
]
