Class {
	#name : #ASTCLiteralValueNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-ast-nodes'
}

{ #category : #translate }
ASTCLiteralValueNodeTranslator >> createLiteralNodeWithValue: aValue fromOriginalNode: originalNode [
	^ ASTCLiteral new
		pharoNode: originalNode;
		value: aValue;
		yourself
]

{ #category : #translate }
ASTCLiteralValueNodeTranslator >> translateNode: aLiteralNode [
	| res |
	res := self createLiteralNodeWithValue: aLiteralNode value fromOriginalNode: aLiteralNode.
	(aLiteralNode value isInteger and: [ aLiteralNode value < 0 ])
		ifTrue:[ res value: res value negated. "-3 becomes 3"
			^ res negated " add negationOperator "]."this allows to remove double negatives"
	^ res
]
