Class {
	#name : #FAVariableNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'Angler-Core-nodes-translators'
}

{ #category : #translate }
FAVariableNodeTranslator >> translateNode: aVariableNode [
	^ ASTCIdentifier new
		pharoNode: aVariableNode;
		id: aVariableNode name;
		yourself
]
