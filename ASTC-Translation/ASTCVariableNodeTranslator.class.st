Class {
	#name : #ASTCVariableNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCVariableNodeTranslator >> translateNode: aVariableNode withMethodTranslator: aTranslator [
	^ ASTCIdentifier new
		id: aVariableNode name;
		yourself
]
