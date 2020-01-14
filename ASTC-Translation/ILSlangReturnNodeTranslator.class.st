Class {
	#name : #ILSlangReturnNodeTranslator,
	#superclass : #ASTCReturnNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ILSlangReturnNodeTranslator >> translateNode: aReturnNode [
	| returnExpression |
	returnExpression := aReturnNode value isSelf 
		ifTrue: [ ASTCLiteral value: (ASTCSlangReceiver value: 0)]
		ifFalse: [ aReturnNode value acceptVisitor: methodTranslator ].
	
	^ ASTCReturn new
		pharoNode: aReturnNode ;
		expression: returnExpression;
		yourself
]
