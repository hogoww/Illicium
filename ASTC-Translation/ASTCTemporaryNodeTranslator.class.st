Class {
	#name : #ASTCTemporaryNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCTemporaryNodeTranslator >> translateNode: aNode withMainTranslator: aTranslator [
	^ aTranslator visitVariableNode: aNode
]
