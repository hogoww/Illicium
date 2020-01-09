Class {
	#name : #ASTCReturnNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCReturnNodeTranslator >> translateNode: aReturnNode [
	| expression |
	expression := aReturnNode value isSelf 
		ifTrue:[ ASTCLiteral value: 1 ]
		ifFalse:[  (aReturnNode value acceptVisitor: methodTranslator) ].
	
	^ ASTCReturn new
		pharoNode: aReturnNode;
		expression: expression;
		yourself
]
