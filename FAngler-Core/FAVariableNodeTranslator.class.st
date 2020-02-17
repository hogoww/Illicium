Class {
	#name : #FAVariableNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'FAngler-Core-nodes-translators'
}

{ #category : #translate }
FAVariableNodeTranslator >> translateNode: aVariableNode [
	^ ASTCIdentifier new
		pharoNode: aVariableNode;
		id: aVariableNode name;
		yourself
]
