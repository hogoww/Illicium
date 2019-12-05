Class {
	#name : #ASTCLiteralValueNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCLiteralValueNodeTranslator >> translateNode: aLiteralNode [
	^ ASTCLiteral new
		pharoNode: aLiteralNode;
		value:
			((methodTranslator getNodeTranslationType: aLiteralNode) createInstance
				value: aLiteralNode value;
				yourself);
		yourself
]
