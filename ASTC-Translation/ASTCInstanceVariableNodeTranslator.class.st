Class {
	#name : #ASTCInstanceVariableNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCInstanceVariableNodeTranslator >> translateNode: aNode withMainTranslator: aTranslator [
	^ aTranslator visitVariableNode: aNode
]
