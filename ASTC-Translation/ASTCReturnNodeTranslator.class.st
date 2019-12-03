Class {
	#name : #ASTCReturnNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCReturnNodeTranslator >> translateNode: aReturnNode [
	^ ASTCReturn new
		pharoNode: aReturnNode;
		expression: (aReturnNode value acceptVisitor: methodTranslator);
		yourself
]
