Class {
	#name : #ILSlangReturnNodeTranslator,
	#superclass : #ASTCReturnNodeTranslator,
	#category : #'Angler-Core-ast-nodes'
}

{ #category : #translate }
ILSlangReturnNodeTranslator >> translateNode: aReturnNode [
	| returnExpression |
	returnExpression := aReturnNode value isSelf 
		ifTrue: [ ASTCLiteral value: 0 ]
		ifFalse: [ aReturnNode value acceptVisitor: methodTranslator ].
	
	^ ASTCReturn new
		pharoNode: aReturnNode ;
		expression: returnExpression;
		yourself
]
