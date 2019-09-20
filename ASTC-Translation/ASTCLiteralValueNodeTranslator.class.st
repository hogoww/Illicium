Class {
	#name : #ASTCLiteralValueNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCLiteralValueNodeTranslator >> translateNode: aLiteralNode withMethodTranslator: aTranslator [
	^ ASTCLiteral new
		value:
			((aTranslator getNodeTranslationType: aLiteralNode) new
				value: aLiteralNode value;
				yourself);
		yourself
]
