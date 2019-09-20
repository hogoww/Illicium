Class {
	#name : #ASTCInstanceVariableNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCInstanceVariableNodeTranslator >> translateNode: aNode withMethodTranslator: aTranslator [
	^ aTranslator visitVariableNode: aNode
]
