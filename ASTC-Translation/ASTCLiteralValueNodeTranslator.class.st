Class {
	#name : #ASTCLiteralValueNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCLiteralValueNodeTranslator >> translateNode: aLiteralNode [
	^ ASTCLiteral new
		value:
			((methodTranslator getNodeTranslationType: aLiteralNode) new
				value: aLiteralNode value;
				yourself);
		yourself
]
