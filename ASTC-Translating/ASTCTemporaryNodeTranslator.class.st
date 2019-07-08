Class {
	#name : #ASTCTemporaryNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCTemporaryNodeTranslator >> translateNode: aNode withMainTranslator: aTranslator [
	^ aTranslator visitVariableNode: aNode
]
