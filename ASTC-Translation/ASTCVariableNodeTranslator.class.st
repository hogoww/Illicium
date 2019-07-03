Class {
	#name : #ASTCVariableNodeTranslator,
	#superclass : #Object,
	#category : #'ASTC-Translation'
}

{ #category : #'as yet unclassified' }
ASTCVariableNodeTranslator >> translateNode: aVariableNode withMainTranslator: aTranslator [
	^ASTCIdentifier new
			id: aVariableNode name;
			yourself.
]
