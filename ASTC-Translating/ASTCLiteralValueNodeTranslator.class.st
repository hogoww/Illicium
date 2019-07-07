Class {
	#name : #ASTCLiteralValueNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#instVars : [
		'translators'
	],
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCLiteralValueNodeTranslator >> translateNode: aLiteralNode withMainTranslator: aTranslator [
	^ ASTCLiteral new
		value:
			((aTranslator getNodeTranslationType: aLiteralNode) new
				value: aLiteralNode value;
				yourself);
		yourself
]
