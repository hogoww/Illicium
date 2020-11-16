Class {
	#name : #FAInstanceVariableNodeTranslator,
	#superclass : #FAAbstractNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FAInstanceVariableNodeTranslator >> translateNode: aNode [ 
	| expression |
	expression := methodTranslator visitVariableNode: aNode.
	methodTranslator isStatefulCode ifTrue:[
		expression := (ASTCIdentifier id: #self) -> expression ].
	^ expression
]
