Class {
	#name : #ASTCBlockNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCBlockNodeTranslator >> translateNode: aBlockNode [
	^ (aBlockNode body acceptVisitor: methodTranslator)
		pharoNode: aBlockNode;
		comment: aBlockNode commentOrNil;
		yourself
]
