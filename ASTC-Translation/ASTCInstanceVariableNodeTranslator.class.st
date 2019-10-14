Class {
	#name : #ASTCInstanceVariableNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCInstanceVariableNodeTranslator >> translateNode: aNode [ 
	^ methodTranslator visitVariableNode: aNode
]
