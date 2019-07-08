Class {
	#name : #ASTCVariableNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCVariableNodeTranslator >> translateNode: aVariableNode withMainTranslator: aTranslator [
	^ ASTCIdentifier new
		id: aVariableNode name;
		yourself
]
