Class {
	#name : #ASTCTemporaryNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCTemporaryNodeTranslator >> translateNode: aNode [
	^ methodTranslator visitVariableNode: aNode
]
