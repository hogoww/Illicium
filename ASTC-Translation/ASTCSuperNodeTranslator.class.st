Class {
	#name : #ASTCSuperNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCSuperNodeTranslator >> translateNode: aNode [
	self error: 'super is not supported'
]
