Class {
	#name : #ASTCTemporaryNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCTemporaryNodeTranslator >> translateNode: aNode withMethodTranslator: aTranslator [
	^ aTranslator visitVariableNode: aNode
]
