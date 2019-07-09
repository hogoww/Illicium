Class {
	#name : #ASTCInstanceVariableNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCInstanceVariableNodeTranslator >> translateNode: aNode withMainTranslator: aTranslator [
	^ aTranslator visitVariableNode: aNode
]
