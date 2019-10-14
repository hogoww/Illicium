Class {
	#name : #ASTCThisContextNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCThisContextNodeTranslator >> translateNode: aNode [
	self error: 'thisContext is not supported yet.'
]
