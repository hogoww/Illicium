Class {
	#name : #ASTCInstanceVariableNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-ast-nodes'
}

{ #category : #translate }
ASTCInstanceVariableNodeTranslator >> translateNode: aNode [ 
	| expression |
	expression := methodTranslator visitVariableNode: aNode.
	methodTranslator isStatefulCode ifTrue:[
		expression := (ASTCIdentifier new id: self stateName ; yourself) structStaticAccess: expression ].
	^ expression
]
