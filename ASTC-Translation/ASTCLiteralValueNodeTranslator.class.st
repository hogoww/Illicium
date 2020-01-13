Class {
	#name : #ASTCLiteralValueNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCLiteralValueNodeTranslator >> createLiteralNodeWithValue: aValue fromOriginalNode: originalNode [
	^ ASTCLiteral new
		pharoNode: originalNode;
		value:
			((methodTranslator getNodeTranslationType: originalNode) createInstance
				value: aValue;
				yourself);
		yourself
]

{ #category : #translate }
ASTCLiteralValueNodeTranslator >> translateNode: aLiteralNode [
	^ self createLiteralNodeWithValue: aLiteralNode value fromOriginalNode: aLiteralNode
]
