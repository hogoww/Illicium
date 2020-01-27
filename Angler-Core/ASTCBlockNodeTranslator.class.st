Class {
	#name : #ASTCBlockNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-ast-nodes'
}

{ #category : #translate }
ASTCBlockNodeTranslator >> translateNode: aBlockNode [
	^ (aBlockNode body acceptVisitor: methodTranslator)
		pharoNode: aBlockNode;
		comment: aBlockNode commentOrNil;
		yourself
]
