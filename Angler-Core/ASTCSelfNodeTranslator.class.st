Class {
	#name : #ASTCSelfNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-ast-nodes'
}

{ #category : #translate }
ASTCSelfNodeTranslator >> translateNode: aNode [ 
	^ aNode parent isReturn 
		ifTrue:[ nil ] " we just return; for now "
		ifFalse:[ ASTCEmptyStatement new ]
	
"	self error: 'self nodes should not be visited'"
]
