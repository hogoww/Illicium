Class {
	#name : #FALiteralValueNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FALiteralValueNodeTranslator >> createLiteralNodeWithValue: aValue fromOriginalNode: originalNode [
	^ ASTCLiteral new
		pharoNode: originalNode;
		value: aValue;
		yourself
]

{ #category : #translate }
FALiteralValueNodeTranslator >> translateNode: aLiteralNode [
	| res |
	res := self createLiteralNodeWithValue: aLiteralNode value fromOriginalNode: aLiteralNode.
	(aLiteralNode value isInteger and: [ aLiteralNode value < 0 ])
		ifTrue:[ res value: res value negated. "-3 becomes 3"
			^ res negated " add negationOperator "]."this allows to remove double negatives"
	^ res
]
