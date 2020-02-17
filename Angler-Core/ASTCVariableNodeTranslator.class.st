Class {
	#name : #ASTCVariableNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-nodes-translators'
}

{ #category : #translate }
ASTCVariableNodeTranslator >> translateNode: aVariableNode [
	^ ASTCIdentifier new
		pharoNode: aVariableNode;
		id: aVariableNode name;
		yourself
]
