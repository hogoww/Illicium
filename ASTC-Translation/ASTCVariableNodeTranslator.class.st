Class {
	#name : #ASTCVariableNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCVariableNodeTranslator >> translateNode: aVariableNode [
	^ ASTCIdentifier new
		pharoNode: aVariableNode;
		id: aVariableNode name;
		yourself
]
