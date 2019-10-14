Class {
	#name : #ASTCVariableNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCVariableNodeTranslator >> translateNode: aVariableNode [
	^ ASTCIdentifier new
		id: aVariableNode name;
		yourself
]
