Class {
	#name : #FAInstanceVariableNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'Angler-Core-nodes-translators'
}

{ #category : #translate }
FAInstanceVariableNodeTranslator >> translateNode: aNode [ 
	| expression |
	expression := methodTranslator visitVariableNode: aNode.
	methodTranslator isStatefulCode ifTrue:[
		expression := (ASTCIdentifier new id: self stateName ; yourself) structStaticAccess: expression ].
	^ expression
]
