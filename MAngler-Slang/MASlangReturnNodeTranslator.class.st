Class {
	#name : #MASlangReturnNodeTranslator,
	#superclass : #FAReturnNodeTranslator,
	#category : #'MAngler-Slang-Nodes-translators'
}

{ #category : #translate }
MASlangReturnNodeTranslator >> translateNode: aReturnNode [
	| returnExpression |
	returnExpression := aReturnNode value isSelf
		ifTrue: [ ^ ASTCEmptyStatement new ]
		ifFalse: [ aReturnNode value acceptVisitor: methodTranslator ].
	
	^ ASTCReturn new
		pharoNode: aReturnNode ;
		expression: returnExpression;
		yourself
]
